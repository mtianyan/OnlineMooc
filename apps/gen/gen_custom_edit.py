model_name = input("输入模型名称:")
txt = f"""
    def retrieve(self, request, *args, **kwargs):
        pk = kwargs["pk"]
        data = SysUserSerializer({model_name}.objects.get(user_id=pk)).data
        postIds = [cur_user.post_id]
        roleIds = [cur_user.role_id]
        return Response({
            "code": 200,
            "data": data,
            "postIds": postIds,
            "roleIds": roleIds,
            "posts": SysPostSerializer(SysPost.objects.all(), many=True).data,
            "roles": SysRoleSerializer(SysRole.objects.all(), many=True).data,
        })

    def put(self, request, *args, **kwargs):
        change_key(request)
        if "post_ids" in request.data.keys():
            request.data["post_id"] = request.data.pop("post_ids")
        if "role_ids" in request.data.keys():
            request.data["role_id"] = request.data.pop("role_ids")
        SysUser(**request.data).save()
        return Response({'code': 200, 'msg': '修改成功'})

    def destroy(self, request, *args, **kwargs):
        instance = self.get_object()
        self.perform_destroy(instance)
        return Response({'code': 200}, status=status.HTTP_200_OK)

"""