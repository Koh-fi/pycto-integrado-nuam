from django.shortcuts import render

# Create your views here.

def index(request):
  return render(request, "Intranets/index.html")

def login(request):
  return render(request, "Intranets/login.html")

def admin(request):
  return render(request, "Intranets/admin.html")

def auditor(request):
  return render(request, "Intranets/auditor.html")

def corredor(request):
  return render(request, "Intranets/corredor.html")