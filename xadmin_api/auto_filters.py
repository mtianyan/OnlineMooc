from django_filters import rest_framework as filters
from xadmin_api.custom import DateFromToRangeFilter
from users.models import UserProfile, EmailVerifyRecord, Banner
from courses.models import Course, Lesson, Video, CourseResource
from operation.models import UserAsk, CourseComments, UserFavorite, UserMessage, UserCourse
from organization.models import CityDict, CourseOrg, Teacher


class UserProfileFilter(filters.FilterSet):
    last_login = DateFromToRangeFilter(field_name="last_login")
    date_joined = DateFromToRangeFilter(field_name="date_joined")

    class Meta:
        model = UserProfile
        exclude = ["image", "image"]


class EmailVerifyRecordFilter(filters.FilterSet):
    send_time = DateFromToRangeFilter(field_name="send_time")

    class Meta:
        model = EmailVerifyRecord
        exclude = []


class BannerFilter(filters.FilterSet):
    add_time = DateFromToRangeFilter(field_name="add_time")

    class Meta:
        model = Banner
        exclude = ["image", "image"]


class CourseFilter(filters.FilterSet):
    course_org_text = filters.CharFilter(field_name="course_org")
    teacher_text = filters.CharFilter(field_name="teacher")
    add_time = DateFromToRangeFilter(field_name="add_time")

    class Meta:
        model = Course
        exclude = ["image", "image"]


class LessonFilter(filters.FilterSet):
    course_text = filters.CharFilter(field_name="course")
    add_time = DateFromToRangeFilter(field_name="add_time")

    class Meta:
        model = Lesson
        exclude = []


class VideoFilter(filters.FilterSet):
    lesson_text = filters.CharFilter(field_name="lesson")
    add_time = DateFromToRangeFilter(field_name="add_time")

    class Meta:
        model = Video
        exclude = []


class CourseResourceFilter(filters.FilterSet):
    course_text = filters.CharFilter(field_name="course")
    add_time = DateFromToRangeFilter(field_name="add_time")

    class Meta:
        model = CourseResource
        exclude = ["download"]


class UserAskFilter(filters.FilterSet):
    add_time = DateFromToRangeFilter(field_name="add_time")

    class Meta:
        model = UserAsk
        exclude = []


class CourseCommentsFilter(filters.FilterSet):
    course_text = filters.CharFilter(field_name="course")
    user_text = filters.CharFilter(field_name="user")
    add_time = DateFromToRangeFilter(field_name="add_time")

    class Meta:
        model = CourseComments
        exclude = []


class UserFavoriteFilter(filters.FilterSet):
    user_text = filters.CharFilter(field_name="user")
    add_time = DateFromToRangeFilter(field_name="add_time")

    class Meta:
        model = UserFavorite
        exclude = []


class UserMessageFilter(filters.FilterSet):
    add_time = DateFromToRangeFilter(field_name="add_time")

    class Meta:
        model = UserMessage
        exclude = []


class UserCourseFilter(filters.FilterSet):
    course_text = filters.CharFilter(field_name="course")
    user_text = filters.CharFilter(field_name="user")
    add_time = DateFromToRangeFilter(field_name="add_time")

    class Meta:
        model = UserCourse
        exclude = []


class CityDictFilter(filters.FilterSet):
    add_time = DateFromToRangeFilter(field_name="add_time")

    class Meta:
        model = CityDict
        exclude = []


class CourseOrgFilter(filters.FilterSet):
    city_text = filters.CharFilter(field_name="city")
    add_time = DateFromToRangeFilter(field_name="add_time")

    class Meta:
        model = CourseOrg
        exclude = ["image", "image"]


class TeacherFilter(filters.FilterSet):
    org_text = filters.CharFilter(field_name="org")
    add_time = DateFromToRangeFilter(field_name="add_time")

    class Meta:
        model = Teacher
        exclude = ["image", "image"]
