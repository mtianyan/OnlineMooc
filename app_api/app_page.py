from django.core.paginator import InvalidPage
from rest_framework.pagination import PageNumberPagination
from rest_framework.response import Response
from collections import OrderedDict


class AppPageNumberPagination(PageNumberPagination):
    page_query_param = 'page'
    page_size_query_param = 'size'

    def get_paginated_response(self, data):
        return Response(OrderedDict([
            ('total', self.page.paginator.count),
            ('list', data),
        ]))

    def get_results(self, data):
        """必须和上面的一起修改，否则引起Filter与分页无法共存显示的bug"""
        return data
