from django import forms
from myapp.models import Empleados
class EmpleadosForms(forms.ModelForm):
    class Meta:
        model = Empleados
        fields = ['nombres','cc','fecha_nacimiento','email','telefono']
        widgets = {
         'nombres': forms.TextInput(attrs={'class': 'form-control'}),
        'cc': forms.TextInput(attrs={'class': 'form-control'}),
        'fecha_nacimiento': forms.DateInput(attrs={'class': 'form-control'}),
        'email': forms.EmailInput(attrs={'class': 'form-control'}),
        'telefono': forms.TextInput(attrs={'class': 'form-control'}),
        
        }