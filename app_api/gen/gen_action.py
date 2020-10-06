route = input("输入route")
txt = f"""
@action(methods=['get'], detail=False, url_path="{route}/?")
def {route}(self, request, pk=None):
    return Response()
"""
print(txt)