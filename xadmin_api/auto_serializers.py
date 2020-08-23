from rest_framework import serializers
from users.models import UserProfile, EmailVerifyRecord, Banner
from courses.models import Course, Lesson, Video, CourseResource
from operation.models import UserAsk, CourseComments, UserFavorite, UserMessage, UserCourse
from organization.models import CityDict, CourseOrg, Teacher
from xadmin_api.models import TyAdminSysLog, TyAdminEmailVerifyRecord


class UserProfileSerializer(serializers.ModelSerializer):
    class Meta:
        model = UserProfile
        fields = "__all__"


class EmailVerifyRecordSerializer(serializers.ModelSerializer):
    class Meta:
        model = EmailVerifyRecord
        fields = "__all__"


class BannerSerializer(serializers.ModelSerializer):
    class Meta:
        model = Banner
        fields = "__all__"


class CourseSerializer(serializers.ModelSerializer):
    course_org_text = serializers.CharField(source="course_org.name", read_only=True)
    teacher_text = serializers.CharField(source="teacher.name", read_only=True)

    class Meta:
        model = Course
        fields = "__all__"


class LessonSerializer(serializers.ModelSerializer):
    course_text = serializers.CharField(source="course.name", read_only=True)

    class Meta:
        model = Lesson
        fields = "__all__"


class VideoSerializer(serializers.ModelSerializer):
    lesson_text = serializers.CharField(source="lesson.name", read_only=True)

    class Meta:
        model = Video
        fields = "__all__"


class CourseResourceSerializer(serializers.ModelSerializer):
    course_text = serializers.CharField(source="course.name", read_only=True)

    class Meta:
        model = CourseResource
        fields = "__all__"


class UserAskSerializer(serializers.ModelSerializer):
    class Meta:
        model = UserAsk
        fields = "__all__"


class CourseCommentsSerializer(serializers.ModelSerializer):
    course_text = serializers.CharField(source="course.name", read_only=True)
    user_text = serializers.CharField(source="user.name", read_only=True)

    class Meta:
        model = CourseComments
        fields = "__all__"


class UserFavoriteSerializer(serializers.ModelSerializer):
    user_text = serializers.CharField(source="user.username", read_only=True)

    class Meta:
        model = UserFavorite
        fields = "__all__"


class UserMessageSerializer(serializers.ModelSerializer):
    class Meta:
        model = UserMessage
        fields = "__all__"


class UserCourseSerializer(serializers.ModelSerializer):
    course_text = serializers.CharField(source="course.name", read_only=True)
    user_text = serializers.CharField(source="user.username", read_only=True)

    class Meta:
        model = UserCourse
        fields = "__all__"


class CityDictSerializer(serializers.ModelSerializer):
    class Meta:
        model = CityDict
        fields = "__all__"


class CourseOrgSerializer(serializers.ModelSerializer):
    city_text = serializers.CharField(source="city.name", read_only=True)

    class Meta:
        model = CourseOrg
        fields = "__all__"


class TeacherSerializer(serializers.ModelSerializer):
    org_text = serializers.CharField(source="org.name", read_only=True)

    class Meta:
        model = Teacher
        fields = "__all__"
