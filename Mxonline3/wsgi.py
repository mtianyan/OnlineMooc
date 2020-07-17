"""
WSGI config for Mxonline3 project.

It exposes the WSGI callable as a module-level variable named ``application``.

For more information on this file, see
https://docs.djangoproject.com/en/2.0/howto/deployment/wsgi/
"""

import os
import sys
from django.core.wsgi import get_wsgi_application
from django.core.wsgi import get_wsgi_application
BASE_DIR = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
print(BASE_DIR)
sys.path.insert(0, BASE_DIR)

os.environ.setdefault("DJANGO_SETTINGS_MODULE", "Mxonline3.settings")

application = get_wsgi_application()
