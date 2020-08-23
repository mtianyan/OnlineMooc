from xadmin_api import auto_views
from django.urls import re_path, include, path
from rest_framework.routers import DefaultRouter

router = DefaultRouter(trailing_slash=False)

router.register('user_profile/?', auto_views.UserProfileViewSet)

router.register('email_verify_record/?', auto_views.EmailVerifyRecordViewSet)

router.register('banner/?', auto_views.BannerViewSet)

router.register('course/?', auto_views.CourseViewSet)

router.register('lesson/?', auto_views.LessonViewSet)

router.register('video/?', auto_views.VideoViewSet)

router.register('course_resource/?', auto_views.CourseResourceViewSet)

router.register('user_ask/?', auto_views.UserAskViewSet)

router.register('course_comments/?', auto_views.CourseCommentsViewSet)

router.register('user_favorite/?', auto_views.UserFavoriteViewSet)

router.register('user_message/?', auto_views.UserMessageViewSet)

router.register('user_course/?', auto_views.UserCourseViewSet)

router.register('city_dict/?', auto_views.CityDictViewSet)

router.register('course_org/?', auto_views.CourseOrgViewSet)

router.register('teacher/?', auto_views.TeacherViewSet)

urlpatterns = [
    re_path('^', include(router.urls)),
]
