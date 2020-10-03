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
Including another URL
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.conf import settings
from django.urls import path, include, re_path
# 导入x admin，替换admin
from django.views.static import serve
import xadmin
# from users.views import user_login
from users.views import LoginView, RegisterView, ActiveUserView, ForgetPwdView, ResetView, ModifyPwdView, LogoutView, \
    IndexView, CaptchaView, AdminIndexView
from rest_framework.routers import DefaultRouter

router = DefaultRouter(trailing_slash=False)
urlpatterns = [
    # path('admin/', admin.site.urls),
    # path('admin/', xadmin.site.urls),
    # TemplateView.as_view会将template转换为view
    # path('', TemplateView.as_view(template_name= "index.html"), name=  "index"),
    path('', IndexView.as_view(), name="index"),
    # 基于类方法实现登录,这里是调用它的方法
    path('login/', LoginView.as_view(), name="login"),
    # 退出功能url
    path('logout/', LogoutView.as_view(), name="logout"),

    # 注册url
    path("register/", RegisterView.as_view(), name="register"),

    # 验证码url
    path("captcha/", include('captcha.urls')),

    # 激活用户url
    re_path('active/(?P<active_code>.*)/', ActiveUserView.as_view(), name="user_active"),

    # 忘记密码
    path('forget/', ForgetPwdView.as_view(), name="forget_pwd"),

    # 重置密码：用来接收来自邮箱的重置链接
    re_path('reset/(?P<active_code>.*)/', ResetView.as_view(), name="reset_pwd"),

    # 修改密码url
    path('modify_pwd/', ModifyPwdView.as_view(), name="modify_pwd"),

    # 课程机构app的url配置，讲师的也在里面
    path("org/", include('organization.urls', namespace='org')),
    # 处理图片显示的url,使用Django自带serve,传入参数告诉它去哪个路径找，我们有配置好的路径MEDIAROOT
    re_path('media/(?P<path>.*)', serve, {"document_root": settings.MEDIA_ROOT}),
    # 处理图片显示的url,使用Django自带serve,传入参数告诉它去哪个路径找，我们有配置好的路径MEDIAROOT
    # re_path('static/(?P<path>.*)', serve, {"document_root": STATIC_ROOT}),
    # 课程app的url配置
    path("course/", include('courses.urls')),
    # user app的url配置
    path("users/", include('users.urls', namespace="users")),

    path('api/v1/', include(router.urls)),
    path('api/xadmin/v1/', include('xadmin_api.urls')),

    path('api/v1/captcha-generate/', CaptchaView.as_view(), name='captcha'),
    re_path('^xadmin/.*', AdminIndexView.as_view(), name="admin_index"),
]
