from django.contrib.auth.decorators import login_required
from django.shortcuts import render, redirect
from functools import wraps
from urllib.parse import urlencode

def role_required(roles):
    def decorator(view_func):
        @wraps(view_func)
        def wrapper(request, *args, **kwargs):

            if not request.user.is_authenticated:
                q = urlencode({"required": "forbidden"})
                return redirect(f"/login/?{q}")

            user_roles = request.user.groups.values_list("name", flat=True)

            if not any(r in user_roles for r in roles):
                q = urlencode({"required": "no_permission"})
                return redirect(f"/login/?{q}")

            return view_func(request, *args, **kwargs)

        return wrapper
    return decorator

def with_contactos(view_func):
    @wraps(view_func)
    def wrapper(request, *args, **kwargs):
        response = view_func(request, *args, **kwargs)

        if hasattr(response, "context_data"):

            from django.contrib.auth.models import User

            try:
                user_actual = User.objects.get(email=request.user.email)
                rol_actual = user_actual.groups.first()
                contactos = User.objects.filter(groups=rol_actual).exclude(id=user_actual.id)
            except:
                contactos = []

            response.context_data["contactos"] = contactos

        return response
    return wrapper