from rest_framework import serializers

from users.models import EmailVerifyRecord, Banner, UserProfile


class EmailVerifyRecordSerializer(serializers.ModelSerializer):
    class Meta:
        model = EmailVerifyRecord
        fields = "__all__"


class BannerSerializer(serializers.ModelSerializer):
    class Meta:
        model = Banner
        fields = "__all__"


class UserProfileSerializer(serializers.ModelSerializer):
    class Meta:
        model = UserProfile
        fields = "__all__"
