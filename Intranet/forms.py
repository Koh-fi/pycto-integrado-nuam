from django import forms
from .models import *

class LoginForm(forms.Form):
    email = forms.EmailField(widget=forms.EmailInput(attrs={
        'class': 'form-control',
        'placeholder': 'Correo Electrónico'
    }))
    password = forms.CharField(widget=forms.PasswordInput(attrs={
        'class': 'form-control',
        'placeholder': 'Contraseña'
    }))

from django import forms
from .models import calificacion_tributaria, califica, factor

class CalificacionTributariaForm(forms.ModelForm):
    class Meta:
        model = calificacion_tributaria
        fields = [
            'mercado', 'instrumento', 'descripcion', 'fecha_pago',
            'secuencia_evento', 'dividendo', 'valor_historico',
            'anio', 'rol'
        ]
        widgets = {
            'mercado': forms.TextInput(attrs={
                'class': 'form-control',
                'id': 'mercado',
                'name': 'mercado',
                'placeholder': 'AC',
            }),
            'instrumento': forms.Select(attrs={
                'class': 'form-control',
                'id': 'instrumento',
                'name': 'instrumento',
            }),
            'descripcion': forms.TextInput(attrs={
                'class': 'form-control',
                'id': 'descripcionf',
                'name': 'descripcionf',
                'placeholder': '',
            }),
            'fecha_pago': forms.DateInput(attrs={
                'class': 'form-control',
                'id': 'fechaPago',
                'name': 'fechaPago',
                'placeholder': '2025-01-02',
                'type': 'date',
            }),
            'secuencia_evento': forms.TextInput(attrs={
                'class': 'form-control',
                'id': 'secuenciaEvento',
                'name': 'secuenciaEvento',
                'placeholder': '100000809',
            }),
            'dividendo': forms.NumberInput(attrs={
                'class': 'form-control',
                'id': 'dividendo',
                'name': 'dividendo',
                'placeholder': 'Ingrese dividendo',
            }),
            'valor_historico': forms.NumberInput(attrs={
                'class': 'form-control',
                'id': 'valorHistorico',
                'name': 'valorHistorico',
                'placeholder': 'JEEP ACC 1X1',
            }),
            'anio': forms.NumberInput(attrs={
                'class': 'form-control',
                'id': 'anio',
                'name': 'anio',
                'placeholder': '2025',
            }),
            'rol': forms.Select(attrs={
                'class': 'form-control',
                'id': 'rol',
                'name': 'rol',
            }),
        }

    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)

        # Agregar campos dinámicos para los factores desde la BD
        for f in factor.objects.all():
            self.fields[f"factor_{f.factor_id}"] = forms.DecimalField(
                required=False,
                label=f.nombre_factor,
                widget=forms.NumberInput(attrs={
                    'class': 'form-control text-end',
                    'step': '0.0001',
                    'placeholder': '0.0000',
                    'id': f'factor_{f.factor_id}',
                    'name': f'factor_{f.factor_id}',
                })
            )


categorias_instrumentos = [("Renta Fija","Renta Fija"), ("Renta Variable","Renta Variable"), ("Derivados","Derivados"), ("Divisas","Divisas"), ("Estructurados","Estructurados")]

bolsas_instrumentos = [("BCS", "Bolsa de Comercio de Santiago (Chile)"),("BVC","Bolsa de Valores de Colombia"), ('BVL',"Bolsa de Valores de Lima (Perú)")]

mercados_instrumentos = [("Renta Fija", "Mercado de Renta Fija"),("Renta Variable","Mercado de Renta Variable"), ('Derivados',"Mercado de Derivados Financieros")]

class formInstrumentoFinanciero(forms.Form):
    codigo = forms.CharField(max_length=6, widget=forms.TextInput(attrs={'class':'form-control', 
    'placeholder': '### ###'}))
    descripcion = forms.CharField(max_length=6, widget=forms.Textarea(attrs={'class':'form-control', 
    'placeholder': 'Descripción...'}))
    categoria = forms.ChoiceField(widget=forms.Select(choices=categorias_instrumentos))
    bolsa = forms.ChoiceField(widget=forms.Select(choices=bolsas_instrumentos))
    mercado = forms.ChoiceField(widget=forms.Select(choices=mercados_instrumentos))