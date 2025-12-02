"""
URL configuration for nuam project.

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/5.2/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import path
from Intranet import views as intr

urlpatterns = [
    path('admin/', admin.site.urls),
    path('', intr.index),
    path('login/', intr.VW_login, name='login'),
    path('logout/', intr.VW_logout, name="logout"),
    path('intranet/', intr.VW_intranet, name="intranet"),
    path('intranet/admin', intr.admin, name="admin"),
    path('intranet/corredor', intr.corredor, name="corredor"),
    path('intranet/auditor', intr.auditor, name="auditor"),
    path('solicitudes/', intr.gestion_solicitudes, name='gestion_solicitudes'),
    path('solicitudes/crear', intr.agregar_solicitud, name='crear_solicitud'),
    path('gestores/calificaciones/', intr.ver_calificaciones, name="ver_calificaciones"),
    path('gestores/calificaciones/nueva', intr.crear_calificacion, name="crear_calificacion"),
    path('gestores/calificaciones/editar/<int:cal_id>', intr.editar_calificacion, name="editar_calificacion"),
    path('gestores/calificaciones/eliminar/<int:cal_id>', intr.eliminar_calificacion, name="eliminar_calificacion"),
    path('gestores/calificaciones/validar/<int:cal_id>', intr.eliminar_calificacion, name="eliminar_calificacion"),
    path('gestores/calificaciones/carga/monto/', intr.carga_por_monto, name='carga_monto'),
    path('gestores/calificaciones/carga/factor/', intr.carga_por_factor, name='carga_factor'),
    path('gestores/instrumentos/', intr.ver_instrumentos, name='ver_instrumentos'),
    path('gestores/instrumentos/nueva', intr.agregar_instrumento, name='agregar_instrumento'),
    path('gestores/instrumentos/actualizar/<int:instrumento_id>', intr.editar_instrumento, name='actualizar_instrumento'),
    path('gestores/instrumentos/eliminar/<int:instrumento_id>', intr.eliminar_instrumento, name='eliminar_instrumento' ),
    path("gestores/auditoria", intr.historial_auditoria, name="auditoria"),
    path('usuarios/ver', intr.ver_usuarios, name='administracion_usuarios'),
    path('usuarios/crear/', intr.crear_usuario, name='crear_usuario'),
    path('usuarios/actualizar/<int:user_id>', intr.modificar_usuario, name='modificar_usuario'),
    path('usuarios/eliminar/<int:user_id>', intr.eliminar_usuario, name='eliminar_usuario'),
    path("validacion/calificaciones/", intr.validacion_calificaciones, name="validacion_calificaciones")
]

