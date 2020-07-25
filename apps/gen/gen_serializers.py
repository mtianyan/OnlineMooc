import os
import re
from pathlib import Path


def get_lower_case_name(text):
    lst = []
    for index, char in enumerate(text):
        if char.isupper() and index != 0:
            lst.append("_")
        lst.append(char)

    return "".join(lst).lower()


app_name = "users"
with open(Path(__file__).parent.parent.resolve().joinpath(f"{app_name}/models.py")) as fr:
    code_content = fr.read()

model_list = re.findall('class (.*)\(models.Model\):', code_content)
serializers_txt = f"""
from rest_framework import serializers

from {app_name}.models import {", ".join(model_list)}
"""
for model in model_list:
    serializers_txt += f"""

class {model}Serializer(serializers.ModelSerializer):
    class Meta:
        model = {model}
        fields = "__all__"
    """

if os.path.exists('serializers.py'):
    print("已存在serializers跳过")
else:
    with open('serializers.py', 'w') as fw:
        fw.write(serializers_txt)

serializers_list = [one + "Serializer" for one in model_list]
viewset_txt = f"""
from rest_framework import viewsets

from {app_name}.models import {", ".join(model_list)}
from {app_name}.serializers import {", ".join(serializers_list)}
"""

for model_name in model_list:
    viewset_txt += f"""

class {model_name}ViewSet(viewsets.ModelViewSet):
        serializer_class = {model_name}Serializer
        queryset = {model_name}.objects.all()
    """
if os.path.exists('api_views.py'):
    print("已存在views跳过")
else:
    with open('api_views.py', 'w') as fw:
        fw.write(viewset_txt)

url_txt = f"""from {app_name} import views
from django.urls import re_path, include, path
from rest_framework.routers import DefaultRouter

router = DefaultRouter(trailing_slash=False)
"""

for model_name in model_list:
    url_txt += f"""
router.register('{get_lower_case_name(model_name)}/?', views.{model_name}ViewSet)
"""

url_txt += """
urlpatterns = [
    re_path('^', include(router.urls)),
]
"""

if os.path.exists('urls.py'):
    print("已存在urls跳过")
else:
    with open('urls.py', 'w') as fw:
        fw.write(url_txt)
