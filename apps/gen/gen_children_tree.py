model_name = input("模型名称:")
txt = f"""
children = serializers.SerializerMethodField()
@staticmethod
def get_children(obj):
    children_serializer = {model_name}Serializer({model_name}.objects.filter(parent_id=obj.id), many=True)
    return children_serializer.data

pagination_class = TreePagination

    def get_queryset(self):
        if self.action == "list":
            queryset = {model_name}.objects.filter(parent_id=None)
        elif self.action == "retrieve":
            queryset = {model_name}.objects.all()
        else:
            queryset = {model_name}.objects.all()
        return queryset
"""
print(txt)
