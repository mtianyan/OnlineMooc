# -*- coding: utf-8 -*-


def change_key(request):
    print(request.data)
    print("***" * 12)
    for key, value in request.data.copy().items():
        new_key = get_lower_case_name(key)
        if new_key != key:
            filed_value = request.data.pop(key)
            request.data[new_key] = filed_value


def change_query_key(data):
    for key, value in data.copy().items():
        new_key = get_lower_case_name(key)
        if new_key != key:
            filed_value = data.pop(key)
            data[new_key] = filed_value
    return data


def get_lower_case_name(text):
    lst = []
    for index, char in enumerate(text):
        if char.isupper() and index != 0:
            lst.append("_")
        lst.append(char)

    return "".join(lst).lower()


def str2Hump(text):
    arr = filter(None, text.lower().split('_'))
    res = ''
    j = 0
    for i in arr:
        if j == 0:
            res = i
        else:
            res = res + i[0].upper() + i[1:]
        j += 1
    return res


if __name__ == '__main__':
    print(get_lower_case_name("deptName"))
    print(str2Hump("deptName"))

    data = {'phone': '18092671458', 'salt': None, 'avatar': None, 'sex': '0', 'email': '123@qq.com', 'remark': None, 'status': 0,
            'username': 'mtianyan2',
            'password': '', 'userId': 7, 'nickName': 'mtianyan', 'roleId': 3, 'deptId': 1, 'postId': 3, 'createBy': None, 'updateBy': None,
            'createdAt': None, 'updatedAt': None, 'deletedAt': None, 'postIds': 3, 'roleIds': 3}
    for key, value in data.copy().items():
        new_key = get_lower_case_name(key)
        if new_key != key:
            data[new_key] = data.pop(key)
    print(data)
