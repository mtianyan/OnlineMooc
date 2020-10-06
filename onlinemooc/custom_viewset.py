from rest_framework import viewsets, status
from rest_framework.response import Response

from utils import change_key


class CustomViewSet(viewsets.ModelViewSet):
    def retrieve(self, request, *args, **kwargs):
        instance = self.get_object()
        serializer = self.get_serializer(instance)
        res = serializer.data
        if "status" in res.keys():
            res["status"] = str(res["status"])
        return Response({
            "code": 200,
            "data": res
        })

    def create(self, request, *args, **kwargs):
        serializer = self.get_serializer(data=request.data)
        serializer.is_valid(raise_exception=True)
        self.perform_create(serializer)
        headers = self.get_success_headers(serializer.data)
        return Response({'code': 200}, status=status.HTTP_201_CREATED, headers=headers)

    def put(self, request, *args, **kwargs):
        change_key(request)
        update_fields = [one for one in request.data.keys() if one != self.serializer_class.Meta.model._meta.pk.name]
        self.serializer_class.Meta.model(**request.data).save(update_fields=update_fields)
        return Response({'code': 200, 'msg': '修改成功'})

    # def destroy(self, request, *args, **kwargs):
    #     instance = self.get_object()
    #     self.perform_destroy(instance)
    #     return Response({'code': 200}, status=status.HTTP_200_OK)

    def destroy(self, request, *args, **kwargs):
        ids = kwargs["pk"].split(",")
        self.serializer_class.Meta.model.objects.filter(pk__in=ids).delete()
        return Response({
            "code": 200
        })
