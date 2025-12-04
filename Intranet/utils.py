from .models import Auditoria
from django.forms.models import model_to_dict

from datetime import date, datetime
from decimal import Decimal
from uuid import UUID
from django.db.models import Model

def make_json_serializable(value):
    # Diccionarios
    if isinstance(value, dict):
        return {k: make_json_serializable(v) for k, v in value.items()}

    # Listas
    if isinstance(value, list):
        return [make_json_serializable(v) for v in value]

    # Tuplas
    if isinstance(value, tuple):
        return tuple(make_json_serializable(v) for v in value)

    # Fechas
    if isinstance(value, (date, datetime)):
        return value.isoformat()

    # Decimales
    if isinstance(value, Decimal):
        return str(value)

    # UUID
    if isinstance(value, UUID):
        return str(value)

    # Instancia de modelo Django (FK, OneToOne, ManyToOne)
    if isinstance(value, Model):
        return value.pk

    return value

def registrar_auditoria(usuario, accion, descripcion="", instancia_antes= None, instancia_despues = None, ):
    antes = model_to_dict(instancia_antes) if instancia_antes else None
    despues = model_to_dict(instancia_despues) if instancia_despues else None

    if instancia_antes:
      
      tabla = instancia_antes.__class__.__name__
      registro_id = instancia_antes.pk
    elif instancia_despues:
      
      tabla = instancia_despues.__class__.__name__
      registro_id = instancia_despues.pk

    # Hacemos Serializable:
    antes = make_json_serializable(antes) if antes is not None else None
    despues = make_json_serializable(despues) if despues is not None else None

    Auditoria.objects.create(
        usuario=usuario,
        tabla=tabla,
        registro_id=str(registro_id),
        accion=accion,
        descripcion=descripcion,
        valores_antes=antes,
        valores_despues=despues
    )
    
def update_or_create_with_auditoria(
    usuario,
    model_class,
    lookup: dict,
    defaults: dict,
    descripcion_crear="Creación de registro",
    descripcion_editar="Edición de registro",
):
    try:
        existente = model_class.objects.get(**lookup)
        antes = existente
        creado = False
    except model_class.DoesNotExist:
        existente = None
        antes = None
        creado = True

    obj, created_flag = model_class.objects.update_or_create(
        **lookup, defaults=defaults
    )

    if creado or created_flag:
        registrar_auditoria(
            usuario=usuario,
            accion="CREAR",
            descripcion=descripcion_crear,
            instancia_antes=None,
            instancia_despues=obj,
        )
    else:
        despues = obj
        registrar_auditoria(
            usuario=usuario,
            accion="EDITAR",
            descripcion=descripcion_editar,
            instancia_antes=antes,
            instancia_despues=obj,
        )

    return obj
