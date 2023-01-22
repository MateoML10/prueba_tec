from django.db import models

# Create your models here.
class Empleados (models.Model):
    nombres = models.CharField(max_length=30)
    cc = models.CharField(max_length=30)
    fecha_nacimiento = models.DateField(null=False, max_length=50)
    email = models.EmailField(max_length=60)
    telefono = models.CharField(max_length=60)
    def __str__(self):
        return self.nombres
        
    

