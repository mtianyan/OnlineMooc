
from rest_framework import viewsets

from operation.models import UserAsk, CourseComments, UserFavorite, UserMessage, UserCourse
from operation.serializers import UserAskSerializer, CourseCommentsSerializer, UserFavoriteSerializer, UserMessageSerializer, UserCourseSerializer


class UserAskViewSet(viewsets.ModelViewSet):
        serializer_class = UserAskSerializer
        queryset = UserAsk.objects.all()
    

class CourseCommentsViewSet(viewsets.ModelViewSet):
        serializer_class = CourseCommentsSerializer
        queryset = CourseComments.objects.all()
    

class UserFavoriteViewSet(viewsets.ModelViewSet):
        serializer_class = UserFavoriteSerializer
        queryset = UserFavorite.objects.all()
    

class UserMessageViewSet(viewsets.ModelViewSet):
        serializer_class = UserMessageSerializer
        queryset = UserMessage.objects.all()
    

class UserCourseViewSet(viewsets.ModelViewSet):
        serializer_class = UserCourseSerializer
        queryset = UserCourse.objects.all()
    