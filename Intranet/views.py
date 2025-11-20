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

    def aplanar(cat, lvl=0, valores=None):
        salida = [{
            "categoria": cat,
            "nivel": lvl,
            "factores": [{
              "obj": factor,
              "valor": (valores.get(factor.factor_id) if valores else 0)
            }
            for factor in cat.factor_calificacion_set.all().order_by("factor_id")]
        }]
        for sub in categorias_por_padre.get(cat.id, []):
            salida.extend(aplanar(sub, lvl + 1, valores))
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

            valores = {n: updated[f"factor{n}"] for n in range(8,39)}
            for f in factores_sueltos:
              valores[f.factor_id] = updated.get(f"factor{f.factor_id}", 0)

            factores_sueltos_data = [{
              "obj": factor,
              "valor": valores.get(factor.factor_id, 0)
            } for factor in factores_sueltos]

            categorias_niveladas = []
            for raiz in categorias_por_padre.get(None, []):
              categorias_niveladas.extend(aplanar(raiz, valores=valores))

            form = CalificacionTributariaForm(updated)

            return render(request, 'Creates/calificaciones.html', {
                "form_calificacion": form,
                "alert": "Factores calculados correctamente.",
                "categorias_niveladas": categorias_niveladas,
                "factores_sueltos": factores_sueltos_data,
            })

    # GET normal
    return render(request, 'Creates/calificaciones.html', {
        "form_calificacion": CalificacionTributariaForm(),
        "categorias_niveladas": categorias_niveladas,
        "factores_sueltos": [
        {"obj": f, "valor": 0} for f in factores_sueltos
    ],
    })


def view_cal(request):
  return render(request, "Readers/calificaciones.html")

def cargar_archivo(request):
    return render(request, 'Readers/calificaciones.html')

def administracion_usuarios(request):
    usuario_id = request.GET.get('usuario_id')
    nombre = request.GET.get('nombre')
    correo = request.GET.get('correo')
    rol = request.GET.get('rol')

    usuarios = usuario.objects.all()

    if usuario_id:
        usuarios = usuarios.filter(codigoicontains=usuario_id)
    if nombre:
        usuarios = usuarios.filter(nombreicontains=nombre)
    if correo:
        usuarios = usuarios.filter(correoicontains=correo)
    if rol:
        usuarios = usuarios.filter(rolnombreicontains=rol)

    return render(request, 'Readers/usuarios.html', {'usuarios': usuarios})

def gestion_solicitudes(request):
    solicitud_id = request.GET.get('solicitud_id')
    usuario = request.GET.get('usuario')
    rol = request.GET.get('rol')
    motivo = request.GET.get('motivo')
    fecha = request.GET.get('fecha')

    solicitudes = solicitud.objects.all()

    if solicitud_id:
        solicitudes = solicitudes.filter(solicitud_idicontains=solicitud_id)
    if usuario:
        solicitudes = solicitudes.filter(usuarioicontains=usuario)
    if rol:
        solicitudes = solicitudes.filter(rolicontains=rol)
    if motivo:
        solicitudes = solicitudes.filter(motivoicontains=motivo)
    if fecha:
        solicitudes = solicitudes.filter(fechaicontains=fecha)

    return render(request, 'Readers/solicitudes.html', {'solicitudes': solicitudes})

def gestionInstrumentos(request):
    instrumentos = instrumento_financiero.objects.all()


    if request.method == "POST":
        form = formInstrumentoFinanciero(request.POST)
        if 'buscar' in request.POST:
            instrumento_id = request.POST.get('instrumento_id', '')
            codigo = request.POST.get('codigo', '')
            descripcion = request.POST.get('descripcion','')
            categoria = request.POST.get('categoria', '')
            bolsa = request.POST.get('bolsa', '')
            mercado = request.POST.get('mercado', '')
            estado = request.POST.get('estado','')


            instrumentos = instrumento_financiero.objects.all()
            if instrumento_id:
                instrumentos = instrumentos.filter(instrumento_id = instrumento_id)
            if codigo:
                instrumentos = instrumentos.filter(codigo__icontains=codigo)
            if descripcion:
                instrumentos = instrumentos.filter(descripcion=descripcion)
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


def eliminarInstrumento(request, instrumento_id):
    instrumento = instrumento_financiero.objects.get(instrumento_id = instrumento_id)
    instrumento.delete()
    return redirect('instrumentosFinancieros')


def agregarInstrumento(request):
  form = formInstrumentoFinanciero()
  if request.method == 'POST':
    form = formInstrumentoFinanciero(request.POST)  # toma los datos rellenados correctamente
    if form.is_valid():   # valida los datos limpios
      #form.save()
      inst = instrumento_financiero.objects.create(
        codigo=form.cleaned_data['codigo'],
        descripcion=form.cleaned_data['descripcion'],
        categoria=form.cleaned_data['categoria'],
        bolsa=form.cleaned_data['bolsa'],
        mercado=form.cleaned_data['mercado'],
        estado='Ingresado'
      )
      inst.save()
      return redirect('instrumentosFinancieros')
  data = {'form' : form}
  return render(request, 'Creates/instrumentos.html', data)

# dudas con el save
def actualizarInstrumento(request, instrumento_id):
    instrumento = instrumento_financiero.objects.get(instrumento_id = instrumento_id)
    form = formInstrumentoFinanciero(request.POST)
    if request.method == 'POST':
        # modelsform tiene variables distintas, instance no pescaria, ya que estamos usando el form
        instrumento.codigo      = form.cleaned_data['codigo'],
        instrumento.descripcion = form.cleaned_data['descripcion'],
        instrumento.categoria   = form.cleaned_data['categoria'],
        instrumento.bolsa       = form.cleaned_data['bolsa'],
        instrumento.mercado     = form.cleaned_data['mercado'],
        instrumento.estado      = 'Ingresado'
        instrumento.save()
        return redirect('instrumentosFinancieros')
    else:
      form = formInstrumentoFinanciero()


    return render(request, 'Updaters/instrumentos.html', {'form': form,'instrumento':instrumento})

