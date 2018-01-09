# encoding: utf-8
__author__ = 'mtianyan'
__date__ = '2018/1/10 0010 05:56'

# 引入Django表单
from  django import forms

# 登录表单验证
class LoginForm(forms.Form):
    # 用户名密码不能为空
    username = forms.CharField(required=True)
    password = forms.CharField(required=True, min_length=5)
