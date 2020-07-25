from rest_framework import viewsets

from courses.models import Course, Lesson, Video, CourseResource
from courses.serializers import CourseSerializer, LessonSerializer, VideoSerializer, CourseResourceSerializer


class CourseViewSet(viewsets.ModelViewSet):
    serializer_class = CourseSerializer
    queryset = Course.objects.all()


class LessonViewSet(viewsets.ModelViewSet):
    serializer_class = LessonSerializer
    queryset = Lesson.objects.all()


class VideoViewSet(viewsets.ModelViewSet):
    serializer_class = VideoSerializer
    queryset = Video.objects.all()


class CourseResourceViewSet(viewsets.ModelViewSet):
    serializer_class = CourseResourceSerializer
    queryset = CourseResource.objects.all()
