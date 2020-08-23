from rest_framework import viewsets
from xadmin_api.custom import XadminViewSet
from users.models import UserProfile, EmailVerifyRecord, Banner
from courses.models import Course, Lesson, Video, CourseResource
from operation.models import UserAsk, CourseComments, UserFavorite, UserMessage, UserCourse
from organization.models import CityDict, CourseOrg, Teacher

from xadmin_api.auto_serializers import UserProfileSerializer, EmailVerifyRecordSerializer, BannerSerializer, CourseSerializer, LessonSerializer, \
    VideoSerializer, CourseResourceSerializer, UserAskSerializer, CourseCommentsSerializer, UserFavoriteSerializer, UserMessageSerializer, \
    UserCourseSerializer, CityDictSerializer, CourseOrgSerializer, TeacherSerializer
from xadmin_api.auto_filters import UserProfileFilter, EmailVerifyRecordFilter, BannerFilter, CourseFilter, LessonFilter, VideoFilter, \
    CourseResourceFilter, UserAskFilter, CourseCommentsFilter, UserFavoriteFilter, UserMessageFilter, UserCourseFilter, CityDictFilter, \
    CourseOrgFilter, TeacherFilter


class UserProfileViewSet(XadminViewSet):
    serializer_class = UserProfileSerializer
    queryset = UserProfile.objects.all()
    filter_class = UserProfileFilter
    search_fields = ["password", "username", "first_name", "last_name", "email", "nick_name", "gender", "address", "mobile"]


class EmailVerifyRecordViewSet(XadminViewSet):
    serializer_class = EmailVerifyRecordSerializer
    queryset = EmailVerifyRecord.objects.all()
    filter_class = EmailVerifyRecordFilter
    search_fields = ["code", "email", "send_type"]


class BannerViewSet(XadminViewSet):
    serializer_class = BannerSerializer
    queryset = Banner.objects.all()
    filter_class = BannerFilter
    search_fields = ["title", "url"]


class CourseViewSet(XadminViewSet):
    serializer_class = CourseSerializer
    queryset = Course.objects.all()
    filter_class = CourseFilter
    search_fields = ["name", "degree", "you_need_know", "teacher_tell", "category", "tag"]


class LessonViewSet(XadminViewSet):
    serializer_class = LessonSerializer
    queryset = Lesson.objects.all()
    filter_class = LessonFilter
    search_fields = ["name"]


class VideoViewSet(XadminViewSet):
    serializer_class = VideoSerializer
    queryset = Video.objects.all()
    filter_class = VideoFilter
    search_fields = ["url", "name"]


class CourseResourceViewSet(XadminViewSet):
    serializer_class = CourseResourceSerializer
    queryset = CourseResource.objects.all()
    filter_class = CourseResourceFilter
    search_fields = ["name"]


class UserAskViewSet(XadminViewSet):
    serializer_class = UserAskSerializer
    queryset = UserAsk.objects.all()
    filter_class = UserAskFilter
    search_fields = ["name", "mobile", "course_name"]


class CourseCommentsViewSet(XadminViewSet):
    serializer_class = CourseCommentsSerializer
    queryset = CourseComments.objects.all()
    filter_class = CourseCommentsFilter
    search_fields = ["comments"]


class UserFavoriteViewSet(XadminViewSet):
    serializer_class = UserFavoriteSerializer
    queryset = UserFavorite.objects.all()
    filter_class = UserFavoriteFilter
    search_fields = []


class UserMessageViewSet(XadminViewSet):
    serializer_class = UserMessageSerializer
    queryset = UserMessage.objects.all()
    filter_class = UserMessageFilter
    search_fields = ["message"]


class UserCourseViewSet(XadminViewSet):
    serializer_class = UserCourseSerializer
    queryset = UserCourse.objects.all()
    filter_class = UserCourseFilter
    search_fields = []


class CityDictViewSet(XadminViewSet):
    serializer_class = CityDictSerializer
    queryset = CityDict.objects.all()
    filter_class = CityDictFilter
    search_fields = ["name", "desc"]


class CourseOrgViewSet(XadminViewSet):
    serializer_class = CourseOrgSerializer
    queryset = CourseOrg.objects.all()
    filter_class = CourseOrgFilter
    search_fields = ["name", "category", "tag", "address"]


class TeacherViewSet(XadminViewSet):
    serializer_class = TeacherSerializer
    queryset = Teacher.objects.all()
    filter_class = TeacherFilter
    search_fields = ["name", "work_company", "work_position", "points"]
