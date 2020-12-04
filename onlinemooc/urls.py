"""drf_mmall URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/2.2/topics/http/urls/
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
from django.views.static import serve
from django.urls import path, include, re_path
from rest_framework.documentation import include_docs_urls
from django.conf import settings
from tyadmin_api.views import AdminIndexView

urlpatterns = [
    path('api/xadmin/v1/', include('tyadmin_api.urls')),
    path('api/v1/', include('app_api.urls')),
    re_path('media/(?P<path>.*)', serve, {"document_root": settings.MEDIA_ROOT}),
    re_path('^xadmin/.*', AdminIndexView.as_view(), name="admin_index"),
]
