import requests


def gen(base_url, url):
    view_name = "".join([one.title().replace(".","") for one in url.split("/")]) + "View"
    url_txt = f"""
    path('{url}', {view_name}.as_view()),
    """
    exe_request = input("请求敲回车,不执行输入0:")
    if exe_request != "0":
        head = {
            "Authorization": "Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhc2NvcGUiOiIiLCJleHAiOjE1OTMyNzc2NDMsImlkZW50aXR5IjoxLCJuaWNlIjoiYWRtaW4iLCJvcmlnX2lhdCI6MTU5MzI3NDA0Mywicm9sZWlkIjoxLCJyb2xla2V5IjoiYWRtaW4iLCJyb2xlbmFtZSI6Iuezu-e7n-euoeeQhuWRmCJ9._8gIv32Z6fz1dhlltTvC_bxLtKnbKDlNj6h8bXtPAhk"    }
        full_url = base_url+url
        print(full_url)
        res = requests.get(full_url, headers=head).json()
        print(res)
    else:
        res = input("输入")
    api_txt = f"""
class {view_name}(APIView):
    def get(self, request):
        return Response({res})
    """.replace("null",'None').replace("true", "True").replace("false", "False")

    print(url_txt)
    print(api_txt)


if __name__ == '__main__':
    base_url = "http://localhost:8000/api/v1/"
    url = input("输入route:")
    gen(base_url, url)
