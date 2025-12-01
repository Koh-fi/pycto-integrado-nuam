from django.shortcuts import render, redirect
from .models import *
from .forms import *
from hashlib import sha512
from django.contrib.auth.models import Group, Permission
from django.contrib.auth.decorators import login_required, permission_required
from django.contrib.auth import authenticate, login, logout
from .decorators import role_required, with_contactos
from csv import DictReader as csvr
from io import StringIO as stringify
from django.db.models import Q

# Create your views here.

def index(request):
  return render(request, "Intranets/index.html")

def VW_login(request):
  motivo_qs = request.GET.get("required")
    
  if motivo_qs == "forbidden":
      motivo = "Para acceder a esta página debe iniciar sesión."
  elif motivo_qs == "no_permission":
      motivo = "No tiene permisos suficientes para acceder a esta sección."
  else:
      motivo = None

  if request.user.is_authenticated and not motivo:
    if request.user.groups.filter(name="Administrador").exists() or request.user.is_superuser:
      return redirect("admin")
    elif request.user.groups.filter(name="Auditor").exists():
      return redirect("auditor")
    elif request.user.groups.filter(name="Corredor").exists():
      return redirect("corredor")
    else:
      # Usuario logueado pero sin rol válido
      # Podrías redirigir a una página neutral o mostrar error
      return render(request, "Intranets/login.html", {
        "form": LoginForm(),
        "motivo": "Su usuario no tiene un rol válido asociado."
      })

  error = None
  if request.method == "POST":
    form = LoginForm(request.POST)
    if form.is_valid():
      email = form.cleaned_data["email"]
      password = form.cleaned_data["password"]
      
      user = authenticate(request, email = email, password = password)

      if user is None:
        error = "Correo o Contraseña Incorrectos"
        return render(request, "Intranets/login.html", {"form": form, "error": error})

      login(request, user)
      if user.groups.filter(name="Administrador").exists() or user.is_superuser:
        return redirect("admin")
      elif user.groups.filter(name="Auditor").exists():
        return redirect("auditor")
      elif user.groups.filter(name="Corredor").exists():
        return redirect("corredor")
      else:
        error = "Rol Corrupto o No Válido"
  else:
    form = LoginForm()

  return render(request, "Intranets/login.html", {"form": form, "error": error, "motivo": motivo})

@login_required()
@with_contactos
def VW_intranet(request):
    redirecciones = {
        "Auditor": "auditor",
        "Corredor": "corredor",
        "Administrador": "admin",
        "Bolsa": "bolsa"
    }

    grupo = request.user.groups.first()
    return redirect(redirecciones.get(grupo.name, "login"))

@login_required()
@with_contactos
def VW_logout(request):
  logout(request)
  return redirect('login')

#def VW_login(request): # OG Function
#  error = None
#  if request.method == "POST":
#    form = LoginForm(request.POST)
#    if form.is_valid():
#      email = form.cleaned_data["email"]
#      password = form.cleaned_data["password"]
#      hashed_password = sha512(password.encode()).hexdigest()
#
#      try:
#        user = usuario.objects.get(email= email, password = hashed_password)
#
#        rol = user.rol.nombre_rol.lower()
#
#        if rol == "administrador":
#          return redirect("admin")
#        elif rol == "auditor":
#          return redirect("auditor")
#        elif rol == "corredor":
#          return redirect("corredor")
#        else:
#          raise ValueError()
#      except usuario.DoesNotExist:
#        error = "Correo o Contraseña Incorrectos"
#      except ValueError:
#        error = "Rol Corrupto o No Válido"
#      except Exception as e:
#        error = e
#  else:
#    form = LoginForm()
#
#  return render(request, "Intranets/login.html", {"form": form, "error": error})

@login_required()
@with_contactos
@role_required(["Administrador"])
def admin(request):
  return render(request, "Intranets/admin.html")

@login_required()
@with_contactos
@role_required(["Auditor"])
def auditor(request):
  return render(request, "Intranets/auditor.html")

@login_required()
@with_contactos
@role_required(["Corredor"])
def corredor(request):
  return render(request, "Intranets/corredor.html")

def build_categorias_niveladas(valores=None):
    categorias = list(categoria_factor.objects.all())
    categorias_por_padre = {}
    for cat in categorias:
        categorias_por_padre.setdefault(cat.padre_id, []).append(cat)

    def aplanar(cat, lvl=0):
        salida = [{
            "categoria": cat,
            "nivel": lvl,
            "factores": [
                {"obj": f, "valor": valores.get(f.factor_id, 0) if valores else 0}
                for f in cat.factor_calificacion_set.all().order_by("factor_id")
            ]
        }]
        for sub in categorias_por_padre.get(cat.id, []):
            salida.extend(aplanar(sub, lvl + 1))
        return salida

    niveles = []
    for raiz in categorias_por_padre.get(None, []):
        niveles.extend(aplanar(raiz))
    return niveles

def build_factores_sueltos(valores=None):
    sueltos = factor_calificacion.objects.filter(categoria__isnull=True)
    return [
        {"obj": f, "valor": valores.get(f.factor_id, 0) if valores else 0}
        for f in sueltos
    ]

def calcular_factores(factores, factores_total):
  total = sum(factores.get(fid, 0) for fid in factores_total)

  result = {}

  for factor in factor_calificacion.objects.all():
    fid = factor.factor_id
    valor = factores.get(fid, 0)

    if total > 0:
      valor_calc = round(valor / total, 6)

      if fid in factores_total:
        valor_calc = min(1, valor_calc)
    
    result[fid] = valor_calc
  return result

@login_required()
@with_contactos
@role_required(["Administrador", "Corredor"])
def crear_calificacion(request):

    categorias_niveladas = build_categorias_niveladas()

    # Factores sin categoría
    factores_sueltos = factor_calificacion.objects.filter(categoria__isnull=True)

    if request.method == 'POST':
      form = CalificacionTributariaForm(request.POST)
      if form.is_valid():
        calificacion = form.save(commit=False)

        if request.user.groups.filter(name="Corredor").exists():
            calificacion.origen_calificacion = "CORREDOR"
        elif request.user.groups.filter(name="Bolsa").exists():
          calificacion.origen_calificacion = "BOLSA"
        else: 
          calificacion.origen_calificacion = "SISTEMA"
        
        calificacion.estado = "PENDIENTE"
        
        # Guardar
        if "ingresar" in request.POST:
          calificacion.isfut = form.cleaned_data["isfut"]
          calificacion.factor_actualizacion = 0
          calificacion.dividendo = form.cleaned_data["dividendo"]
          calificacion.save()
          for f in factor_calificacion.objects.all():
            valor = form.cleaned_data.get(f"factor" + str(f.factor_id))
            if valor not in [None, ""]:
              califica.objects.create(
                calificacion=calificacion,
                factor=f,
                valor=valor
              )
          return redirect('ver_calificaciones')
        # Calcular
        elif "calcular" in request.POST:

          valores_dict = {}
          for f in factor_calificacion.objects.all():
              raw = form.cleaned_data.get(f"factor" + str(f.factor_id), 0)
              try:
                  valores_dict[f.factor_id] = float(raw)
              except:
                  valores_dict[f.factor_id] = 0

          total_ids = list(range(8, 20))

          valores_calculados = calcular_factores(valores_dict, total_ids)

          updated = form.data.copy()

          for fid, valor in valores_calculados.items():
              updated.setlist(f"factor{fid}", [str(valor)])

          updated.setlist("ingreso_montos", ["False"])

          factores_sueltos_data = [
              {"obj": factor, "valor": valores_calculados[factor.factor_id]}
              for factor in factores_sueltos
          ]

          categorias_niveladas = build_categorias_niveladas(valores_calculados)

          form = CalificacionTributariaForm(updated)

          return render(request, "Creates/calificaciones.html", {
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

@login_required()
@with_contactos
@role_required(["Administrador", "Corredor"])
def ver_calificaciones(request):
    calificaciones = calificacion_tributaria.objects.prefetch_related('califica_set__factor')
    factores = factor_calificacion.objects.all().order_by("factor_id")
    id_factores = [factor.factor_id for factor in factores]
    datos = []
    for cal in calificaciones:
        valores = [c.valor for c in cal.califica_set.all().order_by("factor__factor_id")]
        datos.append({
            "obj": cal,      
            "valores": valores 
        })

    return render(request, "Readers/calificaciones.html", {
        "calificaciones": datos,
        "factores": factores,
        "factores_id": id_factores
    })

@login_required()
@with_contactos
@role_required(["Administrador", "Corredor", "Bolsa"])
def carga_por_monto(request):
    factores = factor_calificacion.objects.all().order_by("factor_id")

    # GET → mostrar tabla con datos de sesión (si existen)
    if request.method == "GET":
        datos = request.session.get("carga_monto", None)
        return render(request, "Creates/Carga/por_monto.html", {
            "factores": factores,
            "datos": datos
        })

    # POST → SUBIR ARCHIVO
    print("POST keys:", list(request.POST.keys()), f'{"calcular" in request.POST = }', f'{"grabar" in request.POST = }', sep="\n")
    if "archivo" in request.FILES:
        archivo = request.FILES["archivo"]
        contenido = archivo.read().decode("utf-8")
        lector = csvr(contenido.splitlines())

        filas = []
        for row in lector:
            # convertir factores automáticamente según la BD
            factores_row = []
            for f in factores:
                val = row.get(f"F{f.factor_id}", "0")
                try:
                    factores_row.append(float(val))
                except:
                    factores_row.append(0.0)

            filas.append({
                "anio": row.get("Ejercicio", ""),
                "mercado": row.get("Mercado", ""),
                "instrumento": row.get("Instrumento", ""),
                "fecha_pago": row.get("Fecha_Pago", ""),
                "descripcion": row.get("Descripcion", ""),
                "secuencia_evento": row.get("Secuencia_Evento", ""),
                "dividendo": row.get("Dividendo", ""),
                "valor_historico": row.get("Valor_Historico", ""),
                "factores": factores_row
            })

        # guardar en sesión
        request.session["carga_monto"] = filas
        request.session.modified = True

    # POST → CALCULAR
    if "calcular" in request.POST:
        filas = request.session.get("carga_monto", [])
        factores_total = list(range(8, 20))

        for fila in filas:
            valores_dict = {
                factores[i].factor_id: fila["factores"][i]
                for i in range(len(factores))
            }

            resultado = calcular_factores(valores_dict, factores_total)

            fila["factores"] = [
                resultado[f.factor_id] for f in factores
            ]
        request.session["carga_monto"] = filas
        
        return render(request, "Creates/Carga/por_monto.html", {
          "factores": factores,
          "datos": filas,
        })


    # POST → GRABAR
    if "grabar" in request.POST:
      filas = request.session.get("carga_monto", [])
      
      user_group = None
      if request.user.groups.exists():
          user_group = request.user.groups.first().name.upper()
      
      origen = "SISTEMA"
      if user_group == "CORREDOR":
          origen = "CORREDOR"
      elif user_group == "BOLSA":
          origen = "BOLSA"
      
      for fila in filas:
          inst = instrumento_financiero.objects.filter(
              codigo__iexact=fila["instrumento"]
          ).first()
          if not inst:
              continue
                
          # 1) Buscar existente por secuencia
          cal = calificacion_tributaria.objects.filter(
              secuencia_evento=fila["secuencia_evento"]
          ).first()
      
          if cal:
              # UPDATE
              cal.anio = fila["anio"]
              cal.mercado = fila["mercado"]
              cal.instrumento = inst
              cal.fecha_pago = fila["fecha_pago"]
              cal.descripcion = fila["descripcion"]
              cal.dividendo = fila["dividendo"]
              cal.valor_historico = fila["valor_historico"]
              cal.origen_calificacion = origen
              cal.save()
          else:
              # CREATE
              cal = calificacion_tributaria.objects.create(
                  anio=fila["anio"],
                  mercado=fila["mercado"],
                  instrumento=inst,
                  fecha_pago=fila["fecha_pago"],
                  descripcion=fila["descripcion"],
                  secuencia_evento=fila["secuencia_evento"],
                  dividendo=fila["dividendo"],
                  valor_historico=fila["valor_historico"],
                  estado="PENDIENTE",
                  origen_calificacion=origen,
                  isfut=False
              )
      
          # FACTORES
          for i, f in enumerate(factores):
              califica.objects.update_or_create(
                  calificacion=cal,
                  factor=f,
                  defaults={"valor": fila["factores"][i]}
              )

    if "carga_monto" in request.session:
        del request.session["carga_monto"]

    return redirect("ver_calificaciones")


@login_required()
@with_contactos
@role_required(["Administrador", "Corredor", "Bolsa"])
def carga_por_factor(request):
    factores = factor_calificacion.objects.all().order_by("factor_id")

    # GET → muestra datos si quedaron guardados en sesión
    if request.method == "GET":
        datos = request.session.get("carga_factor", None)
        return render(request, "Creates/Carga/por_factor.html", {
            "factores": factores,
            "datos": datos,
        })

    # POST → subir archivo
    if "archivo" in request.FILES:
        archivo = request.FILES["archivo"]
        contenido = archivo.read().decode("utf-8")
        lector = csvr(contenido.splitlines())

        filas = []
        for row in lector:
            factores_row = []
            for f in factores:
                val = row.get(f"F{f.factor_id}", "0")
                try:
                    factores_row.append(float(val))
                except:
                    factores_row.append(0.0)

            filas.append({
                "anio": row.get("Ejercicio", ""),
                "mercado": row.get("Mercado", ""),
                "instrumento": row.get("Instrumento", ""),
                "fecha_pago": row.get("Fecha_Pago", ""),
                "descripcion": row.get("Descripcion", ""),
                "secuencia_evento": row.get("Secuencia_Evento", ""),
                "dividendo": row.get("Dividendo", ""),
                "valor_historico": row.get("Valor_Historico", ""),
                "factores": factores_row,
            })

        request.session["carga_factor"] = filas
        request.session.modified = True

        return render(request, "Creates/Carga/por_factor.html", {
            "factores": factores,
            "datos": filas,
        })

    # POST → grabar directo en BD
    if "grabar" in request.POST:
        filas = request.session.get("carga_factor", [])

        for fila in filas:
            inst = instrumento_financiero.objects.filter(
                codigo__iexact=fila["instrumento"]
            ).first()
            if not inst:
                print("Instrumento inexistente:", fila["instrumento"])
                continue

            cal, created = calificacion_tributaria.objects.update_or_create(
                secuencia_evento=fila["secuencia_evento"],
                defaults=dict(
                    anio=fila["anio"],
                    mercado=fila["mercado"],
                    instrumento=inst,
                    fecha_pago=fila["fecha_pago"],
                    descripcion=fila["descripcion"],
                    dividendo=fila["dividendo"],
                    valor_historico=fila["valor_historico"],
                    estado="PENDIENTE",
                    origen_calificacion="ARCHIVO",
                    isfut=False
                )
            )

            # actualizar factores
            for i, f in enumerate(factores):
                califica.objects.update_or_create(
                    calificacion=cal,
                    factor=f,
                    defaults={"valor": fila["factores"][i]}
                )

        # limpiar sesión
        request.session.pop("carga_factor", None)

        return redirect("ver_calificaciones")

@login_required()
@with_contactos
@role_required(["Administrador", "Corredor"])
def editar_calificacion(request, cal_id):
    calificacion = calificacion_tributaria.objects.get(pk=cal_id)

    # Valores existentes en factor_calificación
    valores_existentes = {
        c.factor.factor_id: c.valor
        for c in calificacion.califica_set.all()
    }

    if request.method == "POST":
        form = CalificacionTributariaForm(request.POST, instance=calificacion)
        if form.is_valid():
            calificacion = form.save()
            for f in factor_calificacion.objects.all():
                valor = form.cleaned_data.get(f"factor" + str(f.factor_id)) or 0
                califica.objects.update_or_create(
                    calificacion=calificacion,
                    factor=f,
                    defaults={"valor": valor},
                )
            return redirect("ver_calificaciones")
    else:
        # Inicializamos valores en el form
        inicial = {
            f"factor{fid}": valor
            for fid, valor in valores_existentes.items()
        }
        form = CalificacionTributariaForm(instance=calificacion, initial=inicial)

    return render(request, "Creates/calificaciones.html", {
        "form_calificacion": form,
        "categorias_niveladas": build_categorias_niveladas(valores_existentes),
        "factores_sueltos": build_factores_sueltos(valores_existentes),
    })

@login_required()
@with_contactos
@role_required(["Administrador", "Corredor"])
def eliminar_calificacion(request, cal_id):
  calificacion = calificacion_tributaria.objects.get(pk = cal_id)
  calificacion.delete()
  return redirect('ver_calificaciones')

@login_required()
@with_contactos
@role_required(["Administrador", "Auditor"])
def validar_calificacion(request):
    if request.method == 'GET':
        return render(request, 'Validators/calificaciones.html')

    else:
        calificacion_id = request.POST.get('seleccion')
        nuevo_estado = request.POST['accion']

        if calificacion_id is None:
            return render(request, 'Validators/calificaciones.html', {
                'msg': 'Debe seleccionar una calificación antes de validar o rechazar.'
            })

        try:
            calificacion = calificacion_tributaria.objects.get(pk=calificacion_id)
        except calificacion_tributaria.DoesNotExist:
            return render(request, 'validador.html', {
                'msg': 'La calificación seleccionada no existe.'
            })

        calificacion.estado = nuevo_estado
        calificacion.save()

        return render(request, 'Validators/calificaciones.html', {'msg': f'Calificación actualizada correctamente a: {nuevo_estado}.'})

@login_required()
@with_contactos
@role_required(["Administrador", "Corredor"])
def cargar_archivo(request):
    return render(request, 'Readers/calificaciones.html')

@login_required()
@with_contactos
@role_required(["Administrador", "Auditor"])
def ver_instrumentos(request):
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

@login_required()
@with_contactos
@role_required(["Administrador", "Auditor"])
def eliminar_instrumento(request, instrumento_id):
    instrumento = instrumento_financiero.objects.get(instrumento_id = instrumento_id)
    instrumento.delete()
    return redirect('ver_instrumentos')

@login_required()
@with_contactos
@role_required(["Administrador", "Auditor", "Corredor"])
def agregar_instrumento(request):
  #form = formInstrumentoFinanciero()
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
      #inst.save()
      return redirect('ver_instrumentos')
  else:
    form = formInstrumentoFinanciero()
  data = {'form' : form}
  return render(request, 'Creates/instrumentos.html', data)
  
@login_required()
@with_contactos
@role_required(["Administrador", "Auditor"])
def editar_instrumento(request, instrumento_id):
    instrumento = instrumento_financiero.objects.get(instrumento_id = instrumento_id)
    #form = formInstrumentoFinanciero(request.POST)
    if request.method == 'POST':
        form = formInstrumentoFinanciero(request.POST)
        if form.is_valid():
        # modelsform tiene variables distintas, instance no pescaria, ya que estamos usando el form
          instrumento.codigo      = form.cleaned_data['codigo']
          instrumento.descripcion = form.cleaned_data['descripcion']
          instrumento.categoria   = form.cleaned_data['categoria']
          instrumento.bolsa       = form.cleaned_data['bolsa']
          instrumento.mercado     = form.cleaned_data['mercado']
          instrumento.estado      = 'Ingresado'
          instrumento.save()
          return redirect('ver_instrumentos')
    else:
      #form = formInstrumentoFinanciero()
      form = formInstrumentoFinanciero(initial={ # initial muestra los valores que ya estan establecidos, sino estuviera los campos se verian vacios reemplaza al instance, la accion es manual no automatica como instance
            "codigo": instrumento.codigo,
            "descripcion": instrumento.descripcion,
            "categoria": instrumento.categoria,
            "bolsa": instrumento.bolsa,
            "mercado": instrumento.mercado
        })

    return render(request, 'Creates/instrumentos.html', {'form': form,'instrumento':instrumento})

@login_required()
@with_contactos
@role_required(["Administrador"])
def ver_usuarios(request):
  usuarios = User.objects.exclude(is_superuser=True)

  nombre = request.GET.get('nombre')
  apellido = request.GET.get('apellido')
  correo = request.GET.get('correo')
  rol = request.GET.get('rol')

  if nombre:
      usuarios = usuarios.filter(first_name__icontains=nombre)
  if apellido:
      usuarios = usuarios.filter(last_name__icontains=apellido)
  if correo:
      usuarios = usuarios.filter(email__icontains=correo)
  if rol:
      usuarios = usuarios.filter(groups__name__icontains=rol)
  return render(request, 'Readers/usuarios.html', {'usuarios': usuarios})

@login_required()
@with_contactos
@role_required(["Administrador"])
def crear_usuario(request):
  alert = ''
  if request.method == 'POST':
    nombre = request.POST.get('nombre')
    apellido = request.POST.get('apellido')
    correo = request.POST.get('correo')
    rol = request.POST.get('rol')
    password1 = request.POST.get('password1')
    password2 = request.POST.get('password2')
    if User.objects.filter(email=correo).exists():
      alert = "El correo ya está registrado."
      return render(request, 'Creates/usuarios.html', {'alert': alert})
    if password1 != password2:
      return render(request, 'Creates/usuarios.html', {'alert': 'Las contraseñas no coinciden'})
        
    usuario = User.objects.create_user(email=correo, password=password1, first_name=nombre, last_name=apellido)
    grupo = Group.objects.get(name=rol.capitalize())
    usuario.groups.add(grupo)
    alert = f'Usuario creado correctamente.'
  return render(request, 'Creates/usuarios.html', {'alert': alert})
  
@login_required()
@with_contactos
@role_required(["Administrador"])
def modificar_usuario(request, user_id):
  alert = ''
  usuario = User.objects.filter(id=user_id).first()
  
  
  if usuario is None:
    return redirect('administracion_usuarios')
  
  initial_data = {
    "nombre": usuario.first_name,
    "apellido": usuario.last_name,
    "correo": usuario.email,
    "rol": usuario.groups.first().name if usuario.groups.exists() else '',
  }

  if request.method == 'POST':
    nombre = request.POST.get('nombre')
    apellido = request.POST.get('apellido')
    correo = request.POST.get('correo')
    rol = request.POST.get('rol')
    contraseña = request.POST.get('password')
    
    if User.objects.filter(email=correo).exclude(id=user_id).exists():
      alert = "El correo ya está en uso."
      return render(request, 'Creates/usuarios.html', {'usuario': usuario, 'alert': alert})
    
    usuario.first_name = nombre
    usuario.last_name = apellido
    usuario.email = correo
    
    if contraseña:
      usuario.set_password(contraseña)
    usuario.groups.clear()
    grupo = Group.objects.get(name=rol.capitalize())
    usuario.groups.add(grupo)
    usuario.save()
    alert = f"Usuario {usuario.first_name} {usuario.last_name} modificado correctamente."
    
    initial_data = {
      'nombre': usuario.first_name,
      'apellido': usuario.last_name,
      'correo': usuario.email,
      'rol': usuario.groups.all()[0].name 
      if usuario.groups.exists() 
      else ''
    }
  return render(request, 'Creates/usuarios.html', {'usuario': usuario, 'initial': initial_data, 'alert': alert})

@login_required()
@with_contactos
@role_required(["Administrador"])
def eliminar_usuario(request, user_id):
  usuario = User.objects.filter(id=user_id).first()
  if not usuario:
    return render(request, 'Creates/usuarios.html', {'msg': "Usuario no encontrado"})
  correo = usuario.email
  usuario.delete()
  msg = f"Usuario {correo} eliminado correctamente."
  return redirect('administracion_usuarios')

@login_required()
@with_contactos
@role_required(["Administrador", "Auditor"])
def gestion_solicitudes(request):
    contactos = lista_contactos(request)

    solicitud_id = request.GET.get('solicitud_id')
    usuario = request.GET.get('usuario')
    rol = request.GET.get('rol')
    motivo = request.GET.get('motivo')
    fecha = request.GET.get('fecha')

    solicitudes = solicitud.objects.all()

    if solicitud_id:
        solicitudes = solicitudes.filter(solicitud_id__icontains=solicitud_id)

    if usuario:
        solicitudes = solicitudes.filter(
            Q(usuario__first_name__icontains=usuario) |
            Q(usuario__last_name__icontains=usuario) |
            Q(usuario__email__icontains=usuario)
        )

    if rol:
        solicitudes = solicitudes.filter(group__name__icontains=rol)

    if motivo:
        solicitudes = solicitudes.filter(motivo__icontains=motivo)

    if fecha:
        solicitudes = solicitudes.filter(fecha__icontains=fecha)

    return render(request, 'Readers/solicitudes.html', {
        'solicitudes': solicitudes,
        'contactos': contactos
    })

@login_required()
@with_contactos
@role_required(["Corredor", "Auditor", "Administrador"])
def agregar_solicitud(request):
  if request.method == "POST":
    form = formSolicitud(request.POST)

    if form.is_valid():
      form.save()
      return redirect("gestion_solicitudes")

    return render(request, "Creates/solicitudes.html", {"form": form})


  form = formSolicitud()
  return render(request, "Creates/solicitudes.html", {"form": form})


@login_required()
@with_contactos
@role_required(["Administrador", "Auditor", "Corredor"])
def editar_solicitud(request, solicitud_id):
  try:
    solic = solicitud.objects.get(solicitud_id=solicitud_id)
  except:
    return redirect("gestion_solicitudes")

  if request.method == "POST":
    form = formSolicitud(request.POST, instance=solic)
    if form.is_valid():
      form.save()
      return redirect("gestion_solicitudes")
  else:
    form = formSolicitud(instance=solic)

  return render(request, "Creates/solicitudes.html", {"form": form, "solicitud": solic})

@login_required()
@with_contactos
@role_required(["Administrador", "Auditor", "Corredor"])
def eliminar_solicitud(request, solicitud_id):
  try:
    solic = solicitud.objects.get(solicitud_id=solicitud_id)
    solic.delete()
  except:
    pass

  return redirect("gestion_solicitudes")

def lista_contactos(request):
    try:
        user_actual = User.objects.get(email=request.user.email)
        print(user_actual)
    except User.DoesNotExist:
        return []

    rol_actual = user_actual.groups.first()  # o user_actual.rol según lo que tengas implementado
    contactos = User.objects.filter(groups=rol_actual).exclude(id=user_actual.id)

    return contactos