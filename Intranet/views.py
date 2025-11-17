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

    # --- Construcción de categorías niveladas ---
    categorias = list(categoria_factor.objects.all())

    categorias_por_padre = {}
    for cat in categorias:
        key = cat.padre_id 
        categorias_por_padre.setdefault(key, []).append(cat)

    def aplanar(cat, lvl=0):
        salida = [{
            "categoria": cat,
            "nivel": lvl,
            "factores": list(cat.factor_calificacion_set.all())
        }]
        for sub in categorias_por_padre.get(cat.id, []):
            salida.extend(aplanar(sub, lvl + 1))
        return salida

    categorias_niveladas = []
    for raiz in categorias_por_padre.get(None, []):
        categorias_niveladas.extend(aplanar(raiz))

    # Factores sin categoría
    factores_sueltos = factor_calificacion.objects.filter(categoria__isnull=True)

    if request.method == 'POST':
        form = CalificacionTributariaForm(request.POST)
        if form.is_valid():
            calificacion = form.save(commit=False)
            calificacion.rol = "Corredor"
            calificacion.estado = "Pendiente"

            # Guardar
            if "ingresar" in request.POST:
                calificacion.save()
                for f in factor_calificacion.objects.all():
                    valor = form.cleaned_data.get(f"factor" + str(f.factor_id))
                    if valor not in [None, ""]:
                        califica.objects.create(
                            calificacion=calificacion,
                            factor=f,
                            valor=valor
                        )
                return redirect('view_cal')

            # Calcular
            total = sum([
                form.cleaned_data.get(f"factor{n}") or 0
                for n in range(8, 20)
            ])

            updated = form.data.copy()

            for n in range(8, 39):
                valor = form.cleaned_data.get(f"factor{n}")
                updated[f"factor{n}"] = round((valor or 0) / total, 6) if total else 0

            updated["ingresoMontos"] = False

            form = CalificacionTributariaForm(updated)

            return render(request, 'Creates/calificaciones.html', {
                "form_calificacion": form,
                "alert": "Factores calculados correctamente.",
                "categorias_niveladas": categorias_niveladas,
                "factores_sueltos": factores_sueltos,
            })

    # GET normal
    return render(request, 'Creates/calificaciones.html', {
        "form_calificacion": CalificacionTributariaForm(),
        "categorias_niveladas": categorias_niveladas,
        "factores_sueltos": factores_sueltos,
    })


def view_cal(request):
  return render(request, "Readers/calificaciones.html")

def instrumentosFinancierosView(request):
    if request.method == 'POST':
        form = formInstrumentoFinanciero(request.POST)
        if form.is_valid():
            form.save() # Cambiar a ModelForm si se quiere hacer uso de la funcion ".save()"
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
            estado = request.POST.get('estado','')

            instrumentos = instrumento_financiero.objects.all()
            if codigo:
                instrumentos = instrumentos.filter(codigo__icontains=codigo)
            if categoria:
                instrumentos = instrumentos.filter(categoria=categoria)
            if bolsa:
                instrumentos = instrumentos.filter(bolsa=bolsa)
            if mercado:
                instrumentos = instrumentos.filter(mercado=mercado)
            if estado:
                instrumentos = instrumentos.filter(estado=estado)
    else:
      form = formInstrumentoFinanciero()

    return render(request, 'Readers/instrumentos.html', {'form': form,'instrumentos':instrumentos})