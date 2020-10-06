import datetime
import time

from app_api.models import SysLog


def get_order_no():
    year = datetime.datetime.now().year
    month = datetime.datetime.now().month
    day = datetime.datetime.now().day
    if month < 10:
        month = f'0{month}'
    if day < 10:
        day = f'0{day}'
    return f'{year}{month}{day}{int(time.time())}'


def log_save(user, request, flag, message, log_type):
    log = SysLog(
        user_name=user,
        ip_addr=request.META['REMOTE_ADDR'],
        action_flag=flag,
        message=message,
        log_type=log_type
    )
    log.save()
