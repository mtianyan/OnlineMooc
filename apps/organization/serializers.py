
from rest_framework import serializers

from organization.models import CityDict, CourseOrg, Teacher


class CityDictSerializer(serializers.ModelSerializer):
    class Meta:
        model = CityDict
        fields = "__all__"
    

class CourseOrgSerializer(serializers.ModelSerializer):
    class Meta:
        model = CourseOrg
        fields = "__all__"
    

class TeacherSerializer(serializers.ModelSerializer):
    class Meta:
        model = Teacher
        fields = "__all__"
    