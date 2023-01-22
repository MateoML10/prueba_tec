"""
ASGI config for prueba_tec project.

It exposes the ASGI callable as a module-level variable named ``application``.

For more information on this file, see
https://docs.djangoproject.com/en/4.1/howto/deployment/asgi/
"""
from pathlib import Path
import os

from django.core.asgi import get_asgi_application

os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'prueba_tec.settings')

application = get_asgi_application()

BASE_DIR=Path(__file__).resolve().parent.parent
print(BASE_DIR)

STATIC_DIR= os.path.join(BASE_DIR,"static")

STATIC_URL='/static/'
STATICFILES_DIRS=[STATIC_DIR,]
