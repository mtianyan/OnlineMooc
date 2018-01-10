"""Mxonline3 URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/2.0/topics/http/urls/
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
from django.urls import path, include, re_path
# 导入x admin，替换admin
import xadmin
from django.views.generic import TemplateView
# from users.views import user_login
from users.views import LoginView, RegisterView, ActiveUserView

urlpatterns = [
    path('xadmin/', xadmin.site.urls),
    # TemplateView.as_view会将template转换为view
    path('', TemplateView.as_view(template_name= "index.html"), name=  "index"),
    # 基于类方法实现登录,这里是调用它的方法
    path('login/', LoginView.as_view(), name="login"),

    # 注册url
    path("register/", RegisterView.as_view(), name = "register" ),

    # 验证码url
    path("captcha/", include('captcha.urls')),

    # 激活用户url
    re_path('active/(?P<active_code>.*)/', ActiveUserView.as_view(), name= "user_active")
]
