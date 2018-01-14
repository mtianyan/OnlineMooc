# encoding: utf-8
import django

from users.views import UserInfoView, UploadImageView, SendEmailCodeView, UpdateEmailView, UpdatePwdView, MyCourseView, \
    MyFavOrgView, MyFavTeacherView, MyFavCourseView, MyMessageView

__author__ = 'mtianyan'
__date__ = '2018/1/14 0014 06:52'

from django.urls import path
app_name = "users"
urlpatterns = [
    # 用户信息
    path('info/', UserInfoView.as_view(), name="user_info"),
    # 用户头像上传
    path('image/upload/', UploadImageView.as_view(), name="image_upload"),
    # 用户个人中心修改密码
    path('update/pwd/', UpdatePwdView.as_view(), name="update_pwd"),
    # 专用于发送验证码的
    path(
        'sendemail_code/',
        SendEmailCodeView.as_view(),
        name="sendemail_code"),
    path('update_email/', UpdateEmailView.as_view(), name="update_email"),
    # 用户中心我的课程
    path('mycourse/', MyCourseView.as_view(), name="mycourse"),

    # 我收藏的课程机构
    path('myfav/org/', MyFavOrgView.as_view(), name="myfav_org"),

    # 我收藏的授课讲师
    path('myfav/teacher/', MyFavTeacherView.as_view(), name="myfav_teacher"),

    # 我收藏的课程
    path('myfav/course/', MyFavCourseView.as_view(), name="myfav_course"),

    # 我收藏的课程
    path('my_message/', MyMessageView.as_view(), name="my_message"),

]
