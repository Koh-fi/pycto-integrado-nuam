from django.shortcuts import render

# Create your views here.

def mngr_view(request):
  return render(request, "MNG_Calificaciones/index.html")

def new_view(request):
  return render(request, "MNG_Calificaciones/ingresar.html")