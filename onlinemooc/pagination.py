from django.core.paginator import InvalidPage
from rest_framework.pagination import PageNumberPagination
from rest_framework.response import Response
from collections import OrderedDict


class CustomPageNumberPagination(PageNumberPagination):
    page_query_param = 'pageIndex'
    page_size_query_param = 'pageSize'

    def paginate_queryset(self, queryset, request, view=None):
        """
        Paginate a queryset if required, either returning a
        page object, or `None` if pagination is not configured for this view.
        """
        page_size = self.get_page_size(request)
        if not page_size:
            return None

        paginator = self.django_paginator_class(queryset, page_size)
        page_number = request.query_params.get(self.page_query_param, 1)
        if page_number in self.last_page_strings:
            page_number = paginator.num_pages

        try:
            self.page = paginator.page(page_number)
        except InvalidPage as exc:
            self.page = paginator.page(1)

        if paginator.num_pages > 1 and self.template is not None:
            # The browsable API should display pagination controls.
            self.display_page_controls = True

        self.request = request
        return list(self.page)

    def get_paginated_response(self, data):
        return Response({
            "code": 200,
            "data": OrderedDict([
                ('count', self.page.paginator.count),
                ('list', data),
                ('pageIndex', self.page.paginator.num_pages),
                ('pageSize', self.page.paginator.per_page)
            ])
        })

    def get_results(self, data):
        """必须和上面的一起修改，否则引起Filter与分页无法共存显示的bug"""
        return data['data']


class TreePagination(PageNumberPagination):

    def get_paginated_response(self, data):
        return Response({
            "code": 200,
            "data": data})

    def get_results(self, data):
        """必须和上面的一起修改，否则引起Filter与分页无法共存显示的bug"""
        return data['data']

