from datetime import datetime

from django.contrib.auth.base_user import AbstractBaseUser
from django.contrib.auth.models import AbstractUser
from django.db import models


from tyadmin_api_cli.fileds import SImageField


class EmailVerifyRecord(models.Model):
    """邮箱验证码model"""
    SEND_CHOICES = (
        ("register", "注册"),
        ("forget", "找回密码"),
        ("update_email", "修改邮箱"),
        ("login_auth", "登录授权"),
    )
    code = models.CharField(max_length=20, verbose_name="验证码")
    email = models.EmailField(max_length=50, verbose_name="邮箱")
    send_type = models.CharField(choices=SEND_CHOICES, max_length=20, verbose_name="验证码类型")
    send_time = models.DateTimeField(default=datetime.now, verbose_name="发送时间")

    class Meta:
        verbose_name = "邮箱验证码"
        verbose_name_plural = verbose_name

    def __str__(self):
        return self.code + ":" + self.email


class OrderStatus(models.Model):
    text = models.CharField(max_length=255, verbose_name="订单状态")
    code = models.IntegerField(default=0, verbose_name="订单状态code", unique=True)

    class Meta:
        verbose_name = '订单状态'
        verbose_name_plural = verbose_name


class Order(models.Model):
    userid = models.CharField(max_length=255, verbose_name="用户id")
    code = models.CharField(max_length=255, verbose_name="订单号")
    time = models.DateTimeField(auto_now=True, max_length=255, verbose_name="订单生成时间")
    expired = models.IntegerField(default=1800000, verbose_name="过期时间")
    coupon = models.IntegerField(default=0, verbose_name="优惠卷")
    status = models.ForeignKey(OrderStatus, on_delete=models.DO_NOTHING, verbose_name="订单状态", default="",
                               blank=True, db_constraint=False, related_name="list")
    way = models.ForeignKey("RechargePay", on_delete=models.DO_NOTHING, verbose_name="支付方式", default="", null=True,
                            blank=True, db_constraint=False, related_name="list")

    class Meta:
        verbose_name = '订单'
        verbose_name_plural = verbose_name


class OrderItem(models.Model):
    order = models.ForeignKey(Order, on_delete=models.DO_NOTHING, verbose_name="所属订单", default="",
                              blank=True, db_constraint=False, related_name="list")
    lessonid = models.CharField(max_length=255, verbose_name="课程id")
    img = SImageField(max_length=255, verbose_name="封面图")
    title = models.CharField(max_length=255, verbose_name="标题")
    price = models.IntegerField(default=0, verbose_name="价格")
    isDiscount = models.BooleanField(verbose_name="是否优惠")
    discountPrice = models.IntegerField(default=0, verbose_name="折后价格")

    class Meta:
        verbose_name = '订单小项'
        verbose_name_plural = verbose_name


class CouponRange(models.Model):
    text = models.CharField(max_length=255, verbose_name="优惠券使用范围")
    code = models.IntegerField(default=0, verbose_name="优惠券使用范围code", unique=True)

    class Meta:
        verbose_name = '充值方式'
        verbose_name_plural = verbose_name


class CouponStatus(models.Model):
    text = models.CharField(max_length=255, verbose_name="优惠券状态")
    code = models.IntegerField(default=0, verbose_name="优惠券状态code", unique=True)

    class Meta:
        verbose_name = '充值方式'
        verbose_name_plural = verbose_name


class Coupon(models.Model):
    userid = models.CharField(max_length=255, verbose_name="用户id")
    orderid = models.CharField(max_length=255, default="", verbose_name="订单id")
    number = models.IntegerField(default=0, verbose_name="金额")
    limit = models.IntegerField(default=0, verbose_name="限制类型")
    starttime = models.DateTimeField(max_length=255, verbose_name="开始时间")
    endtime = models.DateTimeField(max_length=255, verbose_name="结束时间")
    usetime = models.CharField(max_length=255, default="", verbose_name="使用时间")
    range = models.ForeignKey(CouponRange, on_delete=models.DO_NOTHING, verbose_name="优惠券使用范围", default="",
                              blank=True, db_constraint=False, )
    status = models.ForeignKey(CouponStatus, on_delete=models.DO_NOTHING, verbose_name="优惠券使用状态", default="",
                               blank=True, db_constraint=False, )

    class Meta:
        verbose_name = '优惠券'
        verbose_name_plural = verbose_name


class IntegralType(models.Model):
    code = models.CharField(max_length=255, default="0", verbose_name="积分商品类别")
    text = models.CharField(max_length=255, verbose_name="积分商品类别code")

    class Meta:
        verbose_name = '积分商品类别'
        verbose_name_plural = verbose_name


class Integral(models.Model):
    img = SImageField(upload_to="Integral_img", max_length=255, verbose_name="图片")
    title = models.CharField(max_length=255, verbose_name="标题")
    integral = models.IntegerField(default=0, verbose_name="积分数")
    type = models.ForeignKey(IntegralType, on_delete=models.DO_NOTHING, verbose_name="积分商品类型", default="",
                             blank=True, db_constraint=False, )

    class Meta:
        verbose_name = '积分商品'
        verbose_name_plural = verbose_name


class Notice(models.Model):
    code = models.IntegerField(default=0, verbose_name="通知code")
    time = models.DateTimeField(max_length=255, verbose_name="通知时间")
    title = models.CharField(max_length=255, verbose_name="通知标题")

    class Meta:
        verbose_name = '通知'
        verbose_name_plural = verbose_name


class LessonScript(models.Model):
    text = models.CharField(max_length=255, verbose_name="课程角标文本")
    code = models.IntegerField(default=0, verbose_name="课程角标code", unique=True)

    class Meta:
        verbose_name = '课程角标类型'
        verbose_name_plural = verbose_name


class Lesson(models.Model):
    title = models.CharField(max_length=255, verbose_name="课程标题", unique=True)
    introduction = models.CharField(max_length=255, default="", verbose_name="课程介绍")
    img = SImageField(upload_to="Lesson_img", max_length=255, verbose_name="课程图片")
    banner = SImageField(upload_to="Lesson_banner", max_length=255, verbose_name="课程Banner")
    price = models.IntegerField(default=0, verbose_name="课程价格")
    isDiscount = models.BooleanField(verbose_name="是否打折")
    discountPrice = models.IntegerField(default=0, verbose_name="打折后价格")
    time = models.DateTimeField(auto_now=True, max_length=255, verbose_name="课程添加时间")
    persons = models.IntegerField(default=0, verbose_name="学习人数")
    comments = models.IntegerField(default=0, verbose_name="评论数")
    category = models.ForeignKey("LabelType", on_delete=models.DO_NOTHING, verbose_name="课程分类", default="",
                                 blank=True, db_constraint=False)
    type = models.ForeignKey("LessonType", on_delete=models.DO_NOTHING, verbose_name="课程类型", default="",
                             blank=True, db_constraint=False, )
    hard = models.ForeignKey("LessonHardType", on_delete=models.DO_NOTHING, verbose_name="课程难度类型", default="",
                             blank=True, db_constraint=False, )
    teacher = models.ForeignKey("Teacher", on_delete=models.DO_NOTHING, verbose_name="课程讲师", default="",
                                blank=True, db_constraint=False)
    labels = models.ManyToManyField("Label", verbose_name="课程拥有的label", default=None,
                                    blank=True, db_constraint=False)
    script = models.ForeignKey(LessonScript, on_delete=models.DO_NOTHING, verbose_name="课程角标", default="", null=True,
                               blank=True, db_constraint=False)

    class Meta:
        verbose_name = '课程'
        verbose_name_plural = verbose_name


class Question(models.Model):
    title = models.CharField(max_length=255, verbose_name="问题标题")
    answers = models.IntegerField(default=0, verbose_name="问题回答")
    views = models.IntegerField(default=0, verbose_name="问题点击量")
    icon = SImageField(max_length=255, default="", verbose_name="问题图标")
    isResolve = models.BooleanField(verbose_name="问题是否解决")
    tags = models.ManyToManyField("Label", verbose_name="问题拥有的label", default=None,
                                  blank=True, db_constraint=False, )

    class Meta:
        verbose_name = '问题'
        verbose_name_plural = verbose_name


class Cart(models.Model):
    userid = models.CharField(max_length=255, verbose_name="用户id")
    lessonid = models.CharField(max_length=255, verbose_name="课程id")
    img = SImageField(max_length=255, verbose_name="封面图", default="")
    title = models.CharField(max_length=255, verbose_name="标题")
    price = models.IntegerField(default=0, verbose_name="价格")
    isDiscount = models.BooleanField(verbose_name="是否优惠")
    discountPrice = models.IntegerField(default=0, verbose_name="折后价格")

    class Meta:
        verbose_name = '购物车'
        verbose_name_plural = verbose_name


class Consult(models.Model):
    userid = models.CharField(max_length=255, verbose_name="用户id", default="1", blank=True, null=True)
    like = models.BooleanField(verbose_name="是否点赞", default=False)
    number = models.IntegerField(default=0, verbose_name="点赞数")
    title = models.CharField(max_length=255, verbose_name="咨询标题")
    answer = models.CharField(max_length=1000, verbose_name="咨询回答")
    time = models.DateTimeField(max_length=255, verbose_name="咨询回答")
    course_name = models.CharField(max_length=255, verbose_name="课程名字")

    class Meta:
        verbose_name = '用户咨询'
        verbose_name_plural = verbose_name


class User(AbstractUser):
    # REQUIRED_FIELDS = []
    # USERNAME_FIELD = "username"
    #
    # is_active = True
    #
    # @property
    # def is_anonymous(self):
    #     """
    #     Always return False. This is a way of comparing User objects to
    #     anonymous users.
    #     """
    #     return False
    #
    # @property
    # def is_authenticated(self):
    #     """
    #     Always return True. This is a way to tell if the user has been
    #     authenticated in templates.
    #     """
    #     return True

    # username = models.CharField(max_length=255, verbose_name="用户名", unique=True)
    # password = models.CharField(max_length=255, verbose_name="密码")
    nickname = models.CharField(max_length=255, verbose_name="昵称")
    avatar = SImageField(upload_to="User_avatar", max_length=255, default="https://static.mukewang.com/static/img/avatar_default.png",
                        verbose_name="头像")
    sex = models.CharField(max_length=255, default="male", verbose_name="性别")
    job = models.CharField(max_length=255, default="", verbose_name="工作")
    city = models.CharField(max_length=255, default="", verbose_name="城市")
    signature = models.CharField(max_length=255, default="", verbose_name="个性签名")
    hour = models.IntegerField(default=0, verbose_name="学习时长")
    exp = models.IntegerField(default=0, verbose_name="学习经验数")
    integral = models.IntegerField(default=0, verbose_name="积分数")
    follow = models.IntegerField(default=0, verbose_name="follow数")
    fans = models.IntegerField(default=0, verbose_name="粉丝数")
    email = models.CharField(max_length=255, default="", verbose_name="邮箱")
    qq = models.CharField(max_length=255, default="", verbose_name="qq")
    phone = models.CharField(max_length=255, default="", verbose_name="手机号")
    wechat = models.CharField(max_length=255, default="", verbose_name="微信")
    weibo = models.CharField(max_length=255, default="", verbose_name="微博")
    create_time = models.DateTimeField(auto_now=True, verbose_name="注册时间")

    # objects = UserManager()
    #
    # def check_password(self, raw_password):
    #     """
    #     Return a boolean of whether the raw_password was correct. Handles
    #     hashing formats behind the scenes.
    #     """
    #
    #     def setter(raw_password):
    #         self.set_password(raw_password)
    #         # Password hash upgrades shouldn't be considered password changes.
    #         self._password = None
    #         self.save(update_fields=["password"])
    #
    #     return check_password(raw_password, self.password, setter)

    class Meta:
        verbose_name = '用户'
        verbose_name_plural = verbose_name


class Bill(models.Model):
    userid = models.CharField(max_length=255, verbose_name="用户id")
    orderno = models.CharField(max_length=255, verbose_name="订单号")
    name = models.CharField(max_length=255, verbose_name="课程名字")
    time = models.CharField(max_length=255, verbose_name="时间")
    cost = models.IntegerField(default=0, verbose_name="消费金额")
    way = models.ForeignKey("RechargePay", on_delete=models.DO_NOTHING, verbose_name="账单支方式", default="", null=True,
                            blank=True, db_constraint=False, )

    class Meta:
        verbose_name = 'Bill'
        verbose_name_plural = verbose_name


class Address(models.Model):
    userid = models.CharField(max_length=255, verbose_name="用户id")
    name = models.CharField(max_length=255, verbose_name="用户名")
    phone = models.CharField(max_length=255, verbose_name="手机号")
    area = models.CharField(max_length=255, verbose_name="地区")
    address = models.CharField(max_length=255, verbose_name="地址")
    postcode = models.CharField(max_length=255, verbose_name="邮编")
    isDefault = models.BooleanField(verbose_name="是否默认", default=False)

    class Meta:
        verbose_name = '地址信息'
        verbose_name_plural = verbose_name


class Catalog(models.Model):
    lessonid = models.CharField(max_length=255, verbose_name="课程id")
    introduction = models.CharField(max_length=255, default="", verbose_name="课程介绍")
    isComplete = models.BooleanField(verbose_name="是否完结")

    class Meta:
        verbose_name = '课程目录信息'
        verbose_name_plural = verbose_name


class LogType(models.Model):
    text = models.CharField(max_length=255, verbose_name="登录类型")
    code = models.IntegerField(default=0, verbose_name="登录类型code", unique=True)

    class Meta:
        verbose_name = '登录类型'
        verbose_name_plural = verbose_name


class Log(models.Model):
    userid = models.CharField(max_length=255, verbose_name="用户id")
    time = models.CharField(max_length=255, verbose_name="时间")
    ip = models.CharField(max_length=255, verbose_name="ip地址")
    device = models.CharField(max_length=255, verbose_name="设备")
    city = models.CharField(max_length=255, verbose_name="城市")
    type = models.ForeignKey(LogType, on_delete=models.DO_NOTHING, verbose_name="日志类型", default="", null=True,
                             blank=True, db_constraint=False, )

    class Meta:
        verbose_name = '访问日志'
        verbose_name_plural = verbose_name


class ReadType(models.Model):
    value = models.CharField(max_length=255, verbose_name="类型值")
    sort = models.IntegerField(default=0, verbose_name="排序")

    class Meta:
        verbose_name = '专栏分类'
        verbose_name_plural = verbose_name


class ReadChapter(models.Model):
    read = models.ForeignKey("Read", on_delete=models.DO_NOTHING, verbose_name="所属专栏", default="",
                             blank=True, db_constraint=False, related_name="chapter")
    title = models.CharField(max_length=255, verbose_name="章节标题")

    class Meta:
        verbose_name = '专栏章节'
        verbose_name_plural = verbose_name


class ReadChapterItem(models.Model):
    read_chapter = models.ForeignKey(ReadChapter, on_delete=models.DO_NOTHING, verbose_name="所属章节", default="",
                                     blank=True, db_constraint=False, related_name="chapter_item")
    title = models.CharField(max_length=255, verbose_name="小章节标题", default="")
    isTry = models.BooleanField(verbose_name="是否试看")
    time = models.DateTimeField(verbose_name="发布时间")

    class Meta:
        verbose_name = '专栏章节小节'
        verbose_name_plural = verbose_name


class Teacher(models.Model):
    name = models.CharField(max_length=255, verbose_name="讲师姓名", unique=True)
    avatar = SImageField(upload_to="Teacher_avatar", max_length=255, verbose_name="讲师头像")
    job = models.CharField(max_length=255, verbose_name="讲师职业")
    introduction = models.CharField(max_length=255, verbose_name="个人介绍")

    class Meta:
        verbose_name = '讲师'
        verbose_name_plural = verbose_name


class Comment(models.Model):
    lessonid = models.CharField(max_length=255, verbose_name="课程id")
    name = models.CharField(max_length=255, verbose_name="评论者", default="")
    avatar = SImageField(upload_to="Comment_avatar", max_length=255, verbose_name="评论头像", default="")
    content_score = models.FloatField(verbose_name="内容分数", default=0)
    easy_score = models.FloatField(verbose_name="简单分数", default=0)
    logic_score = models.FloatField(verbose_name="逻辑分数", default=0)
    time = models.DateTimeField(auto_now=True, verbose_name="评论时间")
    comment = models.CharField(max_length=1000, verbose_name="评论内容", default="")

    class Meta:
        verbose_name = '评论'
        verbose_name_plural = verbose_name


class Hot(models.Model):
    value = models.CharField(max_length=255, verbose_name="热搜词")
    time = models.DateTimeField(verbose_name="热搜时间", default=datetime.now)

    class Meta:
        verbose_name = '热搜'
        verbose_name_plural = verbose_name


class RechargeAction(models.Model):
    text = models.CharField(max_length=255, verbose_name="充值类型")
    code = models.IntegerField(default=0, verbose_name="充值类型code", unique=True)

    class Meta:
        verbose_name = '充值类型'
        verbose_name_plural = verbose_name


class RechargePay(models.Model):
    text = models.CharField(max_length=255, verbose_name="充值方式")
    code = models.IntegerField(default=0, verbose_name="充值方式code", unique=True)

    class Meta:
        verbose_name = '充值方式'
        verbose_name_plural = verbose_name


class Recharge(models.Model):
    userid = models.CharField(max_length=255, verbose_name="用户id")
    time = models.DateTimeField(auto_now=True, max_length=255, verbose_name="充值时间")
    money = models.IntegerField(default=0, verbose_name="充值金额(分)")
    remark = models.CharField(max_length=255, default="", verbose_name="备注")
    action = models.ForeignKey(RechargeAction, on_delete=models.DO_NOTHING, verbose_name="RechargeAction", default="",
                               blank=True, db_constraint=False, )
    way = models.ForeignKey(RechargePay, on_delete=models.DO_NOTHING, verbose_name="RechargePay", default="",
                            blank=True, db_constraint=False, )

    class Meta:
        verbose_name = '充值记录'
        verbose_name_plural = verbose_name


class LabelFollow(models.Model):
    userid = models.IntegerField(verbose_name="用户id")
    labelid = models.IntegerField(verbose_name="Label的id", default=0)
    title = models.CharField(max_length=255, verbose_name="Label的title")

    class Meta:
        verbose_name = '关注Label'
        verbose_name_plural = verbose_name
        unique_together = ("userid", "labelid")


class Student(models.Model):
    avatar = SImageField(upload_to='pic', max_length=255, verbose_name="头像")
    name = models.CharField(max_length=255, verbose_name="名称")
    number = models.IntegerField(default=0, verbose_name="积分数")
    type = models.ForeignKey("StudentType", on_delete=models.DO_NOTHING, verbose_name="学生类型", default="",
                             blank=True, db_constraint=False, )

    class Meta:
        verbose_name = '学生'
        verbose_name_plural = verbose_name


class StudentType(models.Model):
    text = models.CharField(max_length=255, verbose_name="学生类型")
    code = models.IntegerField(default=0, verbose_name="学生code", unique=True)

    class Meta:
        verbose_name = '学生类型'
        verbose_name_plural = verbose_name


class Navigation(models.Model):
    title = models.CharField(max_length=255, verbose_name="标题")
    code = models.CharField(max_length=255, verbose_name="code")
    sort = models.IntegerField(default=0, verbose_name="排序")

    class Meta:
        verbose_name = '首页左侧菜单'
        verbose_name_plural = verbose_name


class Read(models.Model):
    type = models.CharField(max_length=255, verbose_name="类型")
    title = models.CharField(max_length=255, verbose_name="标题", unique=True)
    img = SImageField(upload_to="Read_img", max_length=255, verbose_name="图片")
    detailImg = SImageField(upload_to="Read_detail", max_length=255, verbose_name="细节图片")
    desc = models.CharField(max_length=255, verbose_name="描述")
    price = models.IntegerField(default=0, verbose_name="价格")
    persons = models.IntegerField(default=0, verbose_name="人数")
    term = models.IntegerField(default=0, verbose_name="章节数")
    isRecommend = models.BooleanField(verbose_name="是否推荐", default=False)
    author = models.ForeignKey(Teacher, on_delete=models.DO_NOTHING, verbose_name="作者", default="",
                               blank=True, db_constraint=False)

    class Meta:
        verbose_name = '专栏'
        verbose_name_plural = verbose_name


class Article(models.Model):
    title = models.CharField(max_length=255, verbose_name="文章名")
    img = SImageField(upload_to="Article_img", max_length=255, verbose_name="图片")
    views = models.IntegerField(default=0, verbose_name="查看量")
    author = models.CharField(max_length=255, verbose_name="作者")
    tag = models.CharField(max_length=255, verbose_name="标签")
    time = models.CharField(max_length=255, verbose_name="时间")
    type = models.ForeignKey("ArticleType", on_delete=models.DO_NOTHING, verbose_name="文章类型", default="",
                             blank=True, db_constraint=False)

    class Meta:
        verbose_name = '文章'
        verbose_name_plural = verbose_name


class History(models.Model):
    value = models.CharField(max_length=255, verbose_name="历史记录值")
    time = models.DateTimeField(auto_now=True, max_length=255, verbose_name="记录时间")

    class Meta:
        verbose_name = '搜索历史'
        verbose_name_plural = verbose_name


class QaType(models.Model):
    text = models.CharField(max_length=255, verbose_name="问题类型")
    code = models.IntegerField(default=0, verbose_name="问题类型code", unique=True)

    class Meta:
        verbose_name = '文章类型'
        verbose_name_plural = verbose_name


class Answer(models.Model):
    user_name = models.CharField(max_length=255, verbose_name="用户名")
    content = models.CharField(max_length=1000, verbose_name="回答内容", default="")

    class Meta:
        verbose_name = '回答'
        verbose_name_plural = verbose_name


class Qa(models.Model):
    lessonid = models.CharField(max_length=255, verbose_name="课程id")
    title = models.CharField(max_length=255, verbose_name="问题名称", default="")
    avatar = SImageField(upload_to="Qa_avatar", max_length=255, verbose_name="提问者头像", default="")
    answers = models.IntegerField(verbose_name="回答数", default=0)
    views = models.IntegerField(verbose_name="查看数", default=0)
    chapter = models.CharField(max_length=255, verbose_name="章节名字", default="")
    time = models.DateTimeField(auto_now=True, verbose_name="评论时间")
    comment = models.CharField(max_length=1000, verbose_name="评论内容", default="")
    type = models.ForeignKey(QaType, on_delete=models.DO_NOTHING, verbose_name="问题类型", default="",
                             blank=True, db_constraint=False, )

    class Meta:
        verbose_name = 'Qa'
        verbose_name_plural = verbose_name


class ArticleType(models.Model):
    title = models.CharField(max_length=255, verbose_name="文章类型")
    code = models.IntegerField(default=0, verbose_name="文章code", unique=True)

    class Meta:
        verbose_name = '文章类型'
        verbose_name_plural = verbose_name


class UserNotice(models.Model):
    messageid = models.ForeignKey(Notice, on_delete=models.DO_NOTHING, verbose_name="通知id", default="",
                                  blank=True, db_constraint=False, related_name="notice")
    userid = models.CharField(max_length=255, verbose_name="通知用户id")
    isRead = models.BooleanField(verbose_name="通知已读")
    isDelete = models.BooleanField(verbose_name="通知已删除")

    class Meta:
        verbose_name = '用户通知'
        verbose_name_plural = verbose_name


class Slider(models.Model):
    img = SImageField(upload_to="Slider_img", max_length=255, verbose_name="图片地址")
    path = models.CharField(default="", max_length=255, verbose_name="跳转地址")
    sort = models.IntegerField(default=0, verbose_name="排序")

    class Meta:
        verbose_name = '首页Banner'
        verbose_name_plural = verbose_name


class UserLesson(models.Model):
    type = models.ForeignKey("LessonType", on_delete=models.DO_NOTHING, verbose_name="课程类型", default="",
                             blank=True, db_constraint=False, )
    userid = models.CharField(max_length=255, verbose_name="用户id")
    lessonid = models.CharField(max_length=255, verbose_name="课程id")
    title = models.CharField(max_length=255, verbose_name="标题")
    img = SImageField(upload_to="UserLesson_img", max_length=255, verbose_name="图片")
    percent = models.IntegerField(default=0, verbose_name="百分比")
    isFollow = models.BooleanField(verbose_name="是否follow")
    exp = models.IntegerField(default=0, verbose_name="经验")
    hours = models.IntegerField(default=0, verbose_name="小时")
    notes = models.IntegerField(default=0, verbose_name="笔记数量")
    codes = models.IntegerField(default=0, verbose_name="代码片段数量")
    questions = models.IntegerField(default=0, verbose_name="问题数量")
    lastChapter = models.CharField(max_length=255, default="", verbose_name="最后一章节")

    class Meta:
        verbose_name = '用户学习的课程'
        verbose_name_plural = verbose_name


class Nav(models.Model):
    title = models.CharField(max_length=255, verbose_name="名称")
    path = models.CharField(max_length=255, default="/", verbose_name="访问路径")
    icon = models.ImageField(max_length=255, verbose_name="图标")

    class Meta:
        verbose_name = '首页左侧菜单'
        verbose_name_plural = verbose_name


class LabelType(models.Model):
    title = models.CharField(max_length=255, verbose_name="名称")
    code = models.IntegerField(default=0, verbose_name="code")
    sort = models.IntegerField(default=0, verbose_name="排序")

    class Meta:
        verbose_name = 'Label类型'
        verbose_name_plural = verbose_name


class LessonType(models.Model):
    code = models.CharField(max_length=255, unique=True, verbose_name="课程类型")
    text = models.CharField(max_length=255, verbose_name="课程类型code")

    class Meta:
        verbose_name = '课程类型'
        verbose_name_plural = verbose_name


class LessonHardType(models.Model):
    code = models.CharField(max_length=255, unique=True, verbose_name="课程难度code")
    text = models.CharField(max_length=255, verbose_name="课程难度")

    class Meta:
        verbose_name = '课程难度类型'
        verbose_name_plural = verbose_name


class Label(models.Model):
    title = models.CharField(max_length=255, verbose_name="标题")
    sort = models.IntegerField(default=0, verbose_name="排序")
    type = models.ForeignKey(LabelType, on_delete=models.DO_NOTHING, verbose_name="Label类型", default="",
                             blank=True, db_constraint=False)

    class Meta:
        verbose_name = 'Label小项'
        verbose_name_plural = verbose_name

    def __str__(self):
        return self.title


class Footer(models.Model):
    title = models.CharField(max_length=255, verbose_name="标题")
    url = models.CharField(max_length=255, verbose_name="url")
    sort = models.IntegerField(default=0, verbose_name="排序")

    class Meta:
        verbose_name = '底部配置'
        verbose_name_plural = verbose_name


class CommonPathConfig(models.Model):
    title = models.CharField(max_length=255, verbose_name="名称")
    path = models.CharField(max_length=255, verbose_name="访问路径")
    icon = models.CharField(max_length=500, verbose_name="访问路径")
    type = models.CharField(max_length=500, verbose_name="类型")  # h-header # f-footer

    class Meta:
        verbose_name = '公共头部脚部配置'
        verbose_name_plural = verbose_name


class Chapter(models.Model):
    lesson = models.ForeignKey(Lesson, on_delete=models.DO_NOTHING, verbose_name="所属Lesson", default="",
                               blank=True, db_constraint=False)
    title = models.CharField(max_length=255, verbose_name="章节标题")
    introduce = models.CharField(default="", max_length=800, verbose_name="章节介绍")

    class Meta:
        verbose_name = '章节'
        verbose_name_plural = verbose_name


class Term(models.Model):
    chapter = models.ForeignKey(Chapter, on_delete=models.DO_NOTHING, verbose_name="所属章节", default="",
                                blank=True, db_constraint=False, related_name="term")
    seconds = models.IntegerField(verbose_name="时长")
    title = models.CharField(default="", max_length=255, verbose_name="小节标题")
    path = models.CharField(max_length=255, verbose_name="访问链接")

    class Meta:
        verbose_name = '小节'
        verbose_name_plural = verbose_name


class SysLog(models.Model):
    action_time = models.DateTimeField(verbose_name="动作时间", default=datetime.now)
    ip_addr = models.CharField(max_length=39, blank=True, null=True, verbose_name="操作ip")
    action_flag = models.CharField(blank=True, null=True, max_length=32, verbose_name="操作flag")
    message = models.TextField(verbose_name="日志记录")
    log_type = models.CharField(default="", max_length=200, verbose_name="日志类型")
    user_name = models.CharField(max_length=200, default="1", verbose_name="用户")

    class Meta:
        verbose_name = "系统日志"
        verbose_name_plural = verbose_name
        ordering = ('-action_time',)
