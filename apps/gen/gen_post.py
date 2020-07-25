import json

import requests


def gen(base_url, url, data):
    view_name = "".join([one.title() for one in url.split("/")]) + "View"
    url_txt = f"""
    path('{url}', {view_name}.as_view()),
    """

    exe_request = input("请求敲回车,不执行输入0:")
    if exe_request != "0":
        full_url = base_url + url
        print(full_url)
        headers = {
            "Authorization": "Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhc2NvcGUiOiIiLCJleHAiOjE1OTMyODE1MDAsImlkZW50aXR5IjoxLCJuaWNlIjoiYWRtaW4iLCJvcmlnX2lhdCI6MTU5MzI3NzkwMCwicm9sZWlkIjoxLCJyb2xla2V5IjoiYWRtaW4iLCJyb2xlbmFtZSI6Iuezu-e7n-euoeeQhuWRmCJ9.imH7I3zN6KgyNCjgquJ4frxPmh-FK6IvBDKBid73Szo"
        }
        res = requests.post(full_url, data=data, headers=headers).json()
        print(res)
    else:
        res = input("请输入返回值:")
    txt_list = []
    for key, value in json.loads(data).items():
        txt = f"""\t\t{key} = request.data["{key}"]\n"""
        txt_list.append(txt)

    api_txt = f"""
class {view_name}(APIView):
    def post(self, request):
{"".join(txt_list)}
\t\treturn Response({res})
    """.replace("null", 'None').replace("true", "True").replace("false", "False")

    print(url_txt)
    print(api_txt)


if __name__ == '__main__':
    base_url = "http://localhost:8000/"
    url = input("输入route:")
    data = input("请输入payload:")
    gen(base_url, url, data)
