from django.db import models

# Create your models here.

##### rol #####

class rol(models.Model):
    rol_id = models.IntegerField(primary_key=True)
    nombre_rol = models.CharField(max_length=20)

    def __str__(self):
        return self.nombre_rol
    
##### usuario #####

class usuario(models.Model):
    usuario_id = models.IntegerField(primary_key=True)
    nombre = models.CharField(max_length=50)
    email = models.CharField(max_length=150)
    password = models.CharField(max_length=512)
    rol = models.ForeignKey(rol, on_delete=models.CASCADE)

    def __str__(self):
        return f"{self.nombre} | {self.email} | {self.rol}"