
from rest_framework import serializers

from operation.models import UserAsk, CourseComments, UserFavorite, UserMessage, UserCourse


class UserAskSerializer(serializers.ModelSerializer):
    class Meta:
        model = UserAsk
        fields = "__all__"
    

class CourseCommentsSerializer(serializers.ModelSerializer):
    class Meta:
        model = CourseComments
        fields = "__all__"
    

class UserFavoriteSerializer(serializers.ModelSerializer):
    class Meta:
        model = UserFavorite
        fields = "__all__"
    

class UserMessageSerializer(serializers.ModelSerializer):
    class Meta:
        model = UserMessage
        fields = "__all__"
    

class UserCourseSerializer(serializers.ModelSerializer):
    class Meta:
        model = UserCourse
        fields = "__all__"
    