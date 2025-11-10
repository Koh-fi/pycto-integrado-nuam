from django.db import models

# Create your models here.

##### instrumento financiero #####

class instrumento_financiero(models.Model):
    instrumento_id = models.AutoField(primary_key=True)
    codigo = models.CharField(max_length=6)
    descripcion = models.CharField(max_length=150)
    categoria = models.CharField(max_length=30)
    bolsa = models.CharField(max_length=30)
    mercado = models.CharField(max_length=30)
    estado = models.CharField(max_length=9) # Auto-Field - Ingresado | Validado | Rechazado

    def __str__(self):
        return f"{self.codigo}{self.categoria}"

##### rol #####

class rol(models.Model):
    rol_id = models.AutoField(primary_key=True)
    nombre_rol = models.CharField(max_length=20)

    def __str__(self):
        return self.nombre_rol


##### factor #####

class factor(models.Model):
    factor_id = models.AutoField(primary_key=True)
    nombre_factor = models.CharField(max_length=120)

    def __str__(self):
        return self.nombre_factor

##### calificacion tributaria #####

class calificacion_tributaria(models.Model):
    calificacion_id = models.AutoField(primary_key=True)
    mercado = models.CharField(max_length=30)
    instrumento = models.ForeignKey(instrumento_financiero, on_delete=models.CASCADE)
    descripcion = models.CharField(max_length=150)
    fecha_pago = models.DateField()
    secuencia_evento = models.BigIntegerField()
    dividendo = models.IntegerField(null=True, blank=True)
    valor_historico = models.BigIntegerField(null=True, blank=True)
    anio = models.IntegerField()
    estado = models.CharField(max_length=30)
    rol = models.ForeignKey(rol, on_delete=models.CASCADE)

    factores = models.ManyToManyField(factor,through='califica')

    def __str__(self):
        return f"calificación {self.calificacion_id}{self.descripcion}"


##### califica #####

class califica(models.Model):
    factor = models.ForeignKey(factor, on_delete=models.CASCADE)
    calificacion = models.ForeignKey(calificacion_tributaria, on_delete=models.CASCADE)
    valor = models.IntegerField()

    def __str__(self):
        return f"{self.factor}{self.calificacion} ({self.valor})"


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
    rol = models.ForeignKey(rol, on_delete=models.CASCADE)
    motivo = models.CharField(max_length=130)
    fecha = models.DateField()

    def __str__(self):
        return f"solicitud {self.solicitud_id}{self.motivo}"