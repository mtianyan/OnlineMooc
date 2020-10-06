from rest_framework import viewsets
from rest_framework.renderers import BrowsableAPIRenderer

from app_api.custom_render import MyJSONRenderer


class MyViewSet(viewsets.ReadOnlyModelViewSet):
    pagination_class = None
    renderer_classes = (MyJSONRenderer, BrowsableAPIRenderer)