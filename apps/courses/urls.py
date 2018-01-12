# encoding: utf-8
__author__ = 'mtianyan'
__date__ = '2018/1/13 0013 01:57'

# encoding: utf-8
from courses.views import CourseListView, CourseDetailView, CourseInfoView
from django.urls import path, re_path

app_name = "courses"
urlpatterns = [
    # 课程列表url
    path('list/', CourseListView.as_view(), name="list"),
    # 课程详情页
    re_path('detail/(?P<course_id>\d+)/', CourseDetailView.as_view(), name="course_detail"),
    # 课程章节信息页
    re_path('info/(?P<course_id>\d+)/', CourseInfoView.as_view(), name="course_info"),
]
