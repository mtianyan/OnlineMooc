# encoding: utf-8
from random import Random

from django.conf import settings
from django.core.mail import EmailMessage

from app_api.models import EmailVerifyRecord


def random_str(random_length=8):
    str_base = ''
    chars = 'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz0123456789'
    length = len(chars) - 1
    random = Random()
    for i in range(random_length):
        str_base += chars[random.randint(0, length)]
    return str_base


def send_email(email, send_type="login_auth"):
    email_record = EmailVerifyRecord()
    if send_type == "login_auth":
        code = random_str(4)
    else:
        code = random_str(16)
    email_record.code = code
    email_record.email = email
    email_record.send_type = send_type
    email_record.save()

    if send_type == "login_auth":
        email_title = "OnlineMooc 平台 邮箱登录验证码"
        email_body = f"验证码为: {code}, 请在五分钟内填写！"
        msg = EmailMessage(email_title, email_body, settings.EMAIL_FROM, [email])
        msg.content_subtype = "html"
        send_status = msg.send()
        if send_status:
            pass
