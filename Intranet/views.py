from django.shortcuts import render, redirect
from .models import *
from .forms import *
from hashlib import sha512

# Create your views here.

def index(request):
  return render(request, "Intranets/index.html")

def login(request):
  error = None
  if request.method == "POST":
    form = LoginForm(request.POST)
    if form.is_valid():
      email = form.cleaned_data["email"]
      password = form.cleaned_data["password"]
      hashed_password = sha512(password.encode()).hexdigest()

      try:
        user = usuario.objects.get(email= email, password = hashed_password)

        rol = user.rol.nombre_rol.lower()

        if rol == "administrador":
          return redirect("admin")
        elif rol == "auditor":
          return redirect("auditor")
        elif rol == "corredor":
          return redirect("corredor")
        else:
          raise ValueError()
      except usuario.DoesNotExist:
        error = "Correo o Contraseña Incorrectos"
      except ValueError:
        error = "Rol Corrupto o No Válido"
      except Exception as e:
        error = e
  else:
    form = LoginForm()

  return render(request, "Intranets/login.html", {"form": form, "error": error})

def admin(request):
  return render(request, "Intranets/admin.html")

def auditor(request):
  return render(request, "Intranets/auditor.html")

def corredor(request):
  return render(request, "Intranets/corredor.html")

def create_cal(request):
  factores = [8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38]
  if request.method == 'POST':
    form = CalificacionTributariaForm(request.POST)
    if form.is_valid():
      calificacion = form.save(commit=False)
      calificacion.rol = "Corredor"
      calificacion.estado = "Pendiente"

      factores = factor.objects.all()

      if 'ingresar' in request.POST:
        calificacion.save()
        for f in factores:
          valor = form.cleaned_data.get(f"factor{f.factor_id}")
          if valor not in [None, ""]:
            califica.objects.create(
              calificacion=calificacion,
              factor=f,
              valor=valor
            )
        return redirect('view_cal')
      
      total = sum([form.cleaned_data.get(f"factor{n}") or 0 for n in range(8, 19)])
  
      updated_data = form.data.copy()

      for n in range(8, 39):
        valor = form.cleaned_data.get(f"factor{n}")
        if valor == 0:
          calculo = 0
        else:
          calculo = valor / total
        
        updated_data[f"factor{n}"] = round(calculo, 6)

      updated_data["ingresoMontos"] = False

      form = CalificacionTributariaForm(updated_data)
      return render(request, 'Creates/calificaciones.html', {'form_calificacion': form, 
      'alert':'Factores calculados correctamente. Revisa los valores antes de guardar.',
      'factores': factores})
  form = CalificacionTributariaForm()

  return render(request, 'Creates/calificaciones.html', {'form_calificacion': form, 'factores': factores})


def view_cal(request):
  return render(request, "Readers/calificaciones.html")

def instrumentosFinancierosView(request):
    if request.method == 'POST':
        form = formInstrumentoFinanciero(request.POST)
        if form.is_valid():
            form.save()
            return redirect('instrumentosFinancieros')
    else:
        form = formInstrumentoFinanciero()

    return render(request, 'Creates/instrumentos.html', {'form': form})
  
  
def gestionInstrumentos(request):
    instrumentos = instrumento_financiero.objects.all()

    if request.method == "POST":
        if 'buscar' in request.POST:
            codigo = request.POST.get('codigo', '')
            categoria = request.POST.get('categoria', '')
            bolsa = request.POST.get('bolsa', '')
            mercado = request.POST.get('mercado', '')

            instrumentos = instrumento_financiero.objects.all()
            if codigo:
                instrumentos = instrumentos.filter(codigo__icontains=codigo)
            if categoria:
                instrumentos = instrumentos.filter(categoria=categoria)
            if bolsa:
                instrumentos = instrumentos.filter(bolsa=bolsa)
            if mercado:
                instrumentos = instrumentos.filter(mercado=mercado)

        elif 'ingresar' in request.POST:
            form = formInstrumentoFinanciero(request.POST)
            if form.is_valid():
                nuevo = instrumento_financiero(
                    codigo=form.cleaned_data['codigo'],
                    descripcion=form.cleaned_data['descripcion'],
                    categoria=form.cleaned_data['categoria'],
                    bolsa=form.cleaned_data['bolsa'],
                    mercado=form.cleaned_data['mercado']
                )
                nuevo.save()
                return redirect('instrumentosFinancieros')

        elif 'eliminar' in request.POST:
            ids = request.POST.getlist('seleccionados')
            instrumento_financiero.objects.filter(id__in=ids).delete()
            return redirect('instrumentosFinancieros')

        elif 'limpiar' in request.POST:
            return redirect('instrumentosFinancieros')

    else:
        form = formInstrumentoFinanciero()

    return render(request, 'Creates/instrumentos/gestion.html', {'form': form, 'instrumentos': instrumentos,})