from django.db import models
from django.contrib.auth.models import AbstractUser, BaseUserManager

## Create your models here.

class UserManager(BaseUserManager):
    use_in_migrations = True

    def _create_user(self, email, password, **extra_fields):
        if not email:
            raise ValueError("El usuario debe tener un correo electrónico")
        email = self.normalize_email(email)
        user = self.model(email=email, **extra_fields)
        user.set_password(password)
        user.save(using=self._db)
        return user

    def create_user(self, email, password=None, **extra_fields):
        extra_fields.setdefault("is_staff", False)
        extra_fields.setdefault("is_superuser", False)
        return self._create_user(email, password, **extra_fields)

    def create_superuser(self, email, password=None, **extra_fields):
        extra_fields.setdefault("is_staff", True)
        extra_fields.setdefault("is_superuser", True)

        if extra_fields.get("is_staff") is not True:
            raise ValueError("Superuser debe tener is_staff=True.")
        if extra_fields.get("is_superuser") is not True:
            raise ValueError("Superuser debe tener is_superuser=True.")

        return self._create_user(email, password, **extra_fields)

class User(AbstractUser):
    username = None
    email = models.EmailField(unique=True)

    USERNAME_FIELD = "email"
    REQUIRED_FIELDS = []

    objects = UserManager()


##### rol #####

class rol(models.Model):
    rol_id = models.AutoField(primary_key=True)
    nombre_rol = models.CharField(max_length=20)

    def __str__(self):
        return self.nombre_rol

##### usuario #####

class usuario(models.Model):
    usuario_id = models.AutoField(primary_key=True)
    nombre = models.CharField(max_length=50)
    email = models.CharField(max_length=150)
    password = models.CharField(max_length=256)
    rol = models.ForeignKey(rol, on_delete=models.CASCADE)

    def __str__(self):
        return self.nombre



##### solicitud #####

class solicitud(models.Model):
    solicitud_id = models.AutoField(primary_key=True)
    usuario = models.ForeignKey(usuario, on_delete=models.CASCADE)
    group = models.ForeignKey(rol, on_delete=models.CASCADE)
    motivo = models.CharField(max_length=130)
    fecha = models.DateField()

    def __str__(self):
        return f"solicitud {self.solicitud_id}{self.motivo}"

##### instrumento financiero #####

class instrumento_financiero(models.Model):
    instrumento_id = models.AutoField(primary_key=True)
    codigo = models.CharField(max_length=6, unique=True)
    descripcion = models.CharField(max_length=150)
    categoria = models.CharField(max_length=50)
    bolsa = models.CharField(max_length=30)
    mercado = models.CharField(max_length=50)
    estado = models.CharField(max_length=9) # Auto-Field - Ingresado | Validado | Rechazado

    def __str__(self):
        return f"{self.codigo}{self.categoria}"

##### factor_calificacion #####

class categoria_factor(models.Model):
    nombre = models.CharField(max_length=200)
    padre = models.ForeignKey(
        'self',
        null=True,
        blank=True,
        on_delete=models.CASCADE
    )

class factor_calificacion(models.Model):
    factor_id = models.AutoField(primary_key=True, default=8)
    nombre_factor = models.CharField(max_length=120)
    categoria = models.ForeignKey(categoria_factor, null=True, on_delete=models.CASCADE)
    def __str__(self):
        return self.nombre_factor

##### calificacion tributaria #####

class calificacion_tributaria(models.Model):
    MERCADOS = [
        ("ACCIONES", "Acciones"),
        ("RENTA FIJA", "Renta Fija"),
        ("DERIVADOS FINANCIEROS", "Derivados Financieros"),
        ("FONDOS DE INVERSIÓN-MUTUOS", "Fondos de Inversión-Mutuos"),
        ("INSTRUMENTOS DEL BANCO CENTRAL", "Instrumentos del Banco Central"),
        ("INSTRUMENTOS DEL ESTADO-TESORERÍA", "Instrumentos del Estado-Tesorería"),
        ("MERCADO MONETARIO", "Mercado Monetario"),
        ("MERCADO INTERNACIONAL", "Mercado Internacional"),
        ("MERCADO BANCARIO-CRÉDITOS", "Mercado Bancario-Créditos"),
    ]  
    
    calificacion_id = models.AutoField(primary_key=True)
    mercado = models.CharField(max_length=50, choices=MERCADOS)
    instrumento = models.ForeignKey(instrumento_financiero, on_delete=models.CASCADE)
    descripcion = models.CharField(max_length=150)
    fecha_pago = models.DateField()
    secuencia_evento = models.BigIntegerField()
    dividendo = models.IntegerField(null=True, blank=True)
    valor_historico = models.BigIntegerField(null=True, blank=True)
    anio = models.IntegerField()
    estado = models.CharField(max_length=30)
    rol = models.ForeignKey(rol, on_delete=models.CASCADE)

    factores = models.ManyToManyField(factor_calificacion,through='califica')

    def __str__(self):
        return f"calificación {self.calificacion_id}{self.descripcion}"


##### califica #####

class califica(models.Model):
    factor = models.ForeignKey(factor_calificacion, on_delete=models.CASCADE)
    calificacion = models.ForeignKey(calificacion_tributaria, on_delete=models.CASCADE)
    valor = models.FloatField(default=0.0)

    def __str__(self):
        return f"{self.factor}{self.calificacion} ({self.valor})"