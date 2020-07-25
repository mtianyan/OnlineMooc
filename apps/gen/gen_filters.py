from urllib import parse

# url = input("输入完整url")
from utils import get_lower_case_name

url = input("请输入完整地址:")
model = input("请输入模型名称:")
qs = parse.parse_qs(parse.urlsplit(url).query).keys()
# qs = parse.parse_qs(parse.urlsplit(url).query).keys()
remove_list = ["pageIndex", "pageSize"]

remain_qs = [one for one in qs if one not in remove_list]

row_list = []
for one in remain_qs:
    # if get_lower_case_name(one) != one:
    one = f"""    {one} = filters.CharFilter(field_name="{get_lower_case_name(one)}", lookup_expr='icontains')\n"""
    row_list.append(one)
txt = f"""
class {model}Filter(filters.FilterSet):
{"".join(row_list)}
    class Meta:
        model = {model}
        fields = {remain_qs}

filter_class = {model}Filter
"""

print(txt)
