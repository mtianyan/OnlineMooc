import requests

route_full = input("路由信息:")
base_url = "http://localhost:8000/"
head = {
    "Authorization": "Bearer eyJhbGciOiJIUzUxMiJ9.eyJqdGkiOiJjNmMzNjhiMTdlMGQ0ZGI5YTllZGYzMWNmNzhiMDhkNSIsImF1dGgiOiJhZG1pbiIsInN1YiI6ImFkbWluIn0.9YIDwVrwZ3nFtUrM4S1aWt8qLkexF3Ia-Sc3l3WPy0YbgNsyzAUBnViZiwLkejSJtU4ScgLYa7JFLK7B9fI3nw"
}
res = requests.get(base_url + route_full, headers=head).json()
route = route_full.split("/")[-1]
txt = f"""
@action(methods=['get'], detail=False, url_path="{route}/?")
def {route}(self, request, pk=None):
    return Response({res})
"""

print(txt)
