from django.shortcuts import render, redirect
from .models import usuario
from .forms import LoginForm
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