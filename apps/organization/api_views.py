
from rest_framework import viewsets

from organization.models import CityDict, CourseOrg, Teacher
from organization.serializers import CityDictSerializer, CourseOrgSerializer, TeacherSerializer


class CityDictViewSet(viewsets.ModelViewSet):
        serializer_class = CityDictSerializer
        queryset = CityDict.objects.all()
    

class CourseOrgViewSet(viewsets.ModelViewSet):
        serializer_class = CourseOrgSerializer
        queryset = CourseOrg.objects.all()
    

class TeacherViewSet(viewsets.ModelViewSet):
        serializer_class = TeacherSerializer
        queryset = Teacher.objects.all()
    