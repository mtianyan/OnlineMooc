from users import views
from django.urls import re_path, include, path
from rest_framework.routers import DefaultRouter

router = DefaultRouter(trailing_slash=False)

router.register('email_verify_record/?', views.EmailVerifyRecordViewSet)

router.register('banner/?', views.BannerViewSet)

urlpatterns = [
    re_path('^', include(router.urls)),
]
