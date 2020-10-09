from datetime import datetime

from app_api.models import Log, LogType


def login_log_save(request,user, login_type):
    login_type = LogType.objects.get(code=login_type)
    # TODO 获取动态城市
    if "Mozilla" in request.META['HTTP_USER_AGENT']:
        dec = "web"
    else:
        dec = "未知设备"
    log = Log(userid=user.id, time=datetime.now(), ip=request.META['REMOTE_ADDR'], device=dec, city="四川省成都市", type=login_type)
    log.save()
