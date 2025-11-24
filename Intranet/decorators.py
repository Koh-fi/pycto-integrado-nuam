from django.contrib.auth.decorators import login_required
from django.shortcuts import redirect
from functools import wraps

def role_required(roles):
    def decorator(view_func):
        @wraps(view_func)
        @login_required(login_url="login")
        def _wrapped_view(request, *args, **kwargs):
            if not request.user.groups.filter(name__in=roles).exists():
                # Si no pertenece a los roles permitidos, lo mandamos al login
                return redirect("login")
            return view_func(request, *args, **kwargs)
        return _wrapped_view
    return decorator
