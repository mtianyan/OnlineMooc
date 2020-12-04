from django_filters import rest_framework as filters
from tyadmin_api.custom import DateFromToRangeFilter
from django.contrib.auth.models import Permission, Group
from django.contrib.contenttypes.models import ContentType
from app_api.models import EmailVerifyRecord, OrderStatus, Order, OrderItem, CouponRange, CouponStatus, Coupon, IntegralType, Integral, Notice, LessonScript, Lesson, Question, Cart, Consult, User, Bill, Address, Catalog, LogType, Log, ReadType, ReadChapter, ReadChapterItem, Teacher, Comment, Hot, RechargeAction, RechargePay, Recharge, LabelFollow, Student, StudentType, Navigation, Read, Article, History, QaType, Answer, Qa, ArticleType, UserNotice, Slider, UserLesson, Nav, LabelType, LessonType, LessonHardType, Label, Footer, CommonPathConfig, Chapter, Term, SysLog

class PermissionFilter(filters.FilterSet):
    content_type_text = filters.CharFilter(field_name="content_type")

    class Meta:
        model = Permission
        exclude = []

class GroupFilter(filters.FilterSet):

    class Meta:
        model = Group
        exclude = []

class ContentTypeFilter(filters.FilterSet):

    class Meta:
        model = ContentType
        exclude = []

class EmailVerifyRecordFilter(filters.FilterSet):
    send_time = DateFromToRangeFilter(field_name="send_time")

    class Meta:
        model = EmailVerifyRecord
        exclude = []

class OrderStatusFilter(filters.FilterSet):

    class Meta:
        model = OrderStatus
        exclude = []

class OrderFilter(filters.FilterSet):
    status_text = filters.CharFilter(field_name="status")
    way_text = filters.CharFilter(field_name="way")
    time = DateFromToRangeFilter(field_name="time")

    class Meta:
        model = Order
        exclude = []

class OrderItemFilter(filters.FilterSet):
    order_text = filters.CharFilter(field_name="order")

    class Meta:
        model = OrderItem
        exclude = ["img","img"]

class CouponRangeFilter(filters.FilterSet):

    class Meta:
        model = CouponRange
        exclude = []

class CouponStatusFilter(filters.FilterSet):

    class Meta:
        model = CouponStatus
        exclude = []

class CouponFilter(filters.FilterSet):
    range_text = filters.CharFilter(field_name="range")
    status_text = filters.CharFilter(field_name="status")
    starttime = DateFromToRangeFilter(field_name="starttime")
    endtime = DateFromToRangeFilter(field_name="endtime")

    class Meta:
        model = Coupon
        exclude = []

class IntegralTypeFilter(filters.FilterSet):

    class Meta:
        model = IntegralType
        exclude = []

class IntegralFilter(filters.FilterSet):
    type_text = filters.CharFilter(field_name="type")

    class Meta:
        model = Integral
        exclude = ["img","img"]

class NoticeFilter(filters.FilterSet):
    time = DateFromToRangeFilter(field_name="time")

    class Meta:
        model = Notice
        exclude = []

class LessonScriptFilter(filters.FilterSet):

    class Meta:
        model = LessonScript
        exclude = []

class LessonFilter(filters.FilterSet):
    category_text = filters.CharFilter(field_name="category")
    type_text = filters.CharFilter(field_name="type")
    hard_text = filters.CharFilter(field_name="hard")
    teacher_text = filters.CharFilter(field_name="teacher")
    script_text = filters.CharFilter(field_name="script")
    time = DateFromToRangeFilter(field_name="time")

    class Meta:
        model = Lesson
        exclude = ["img","img","banner","banner"]

class QuestionFilter(filters.FilterSet):

    class Meta:
        model = Question
        exclude = ["icon","icon"]

class CartFilter(filters.FilterSet):

    class Meta:
        model = Cart
        exclude = ["img","img"]

class ConsultFilter(filters.FilterSet):
    time = DateFromToRangeFilter(field_name="time")

    class Meta:
        model = Consult
        exclude = []

class UserFilter(filters.FilterSet):
    last_login = DateFromToRangeFilter(field_name="last_login")
    date_joined = DateFromToRangeFilter(field_name="date_joined")
    create_time = DateFromToRangeFilter(field_name="create_time")

    class Meta:
        model = User
        exclude = ["avatar","avatar"]

class BillFilter(filters.FilterSet):
    way_text = filters.CharFilter(field_name="way")

    class Meta:
        model = Bill
        exclude = []

class AddressFilter(filters.FilterSet):

    class Meta:
        model = Address
        exclude = []

class CatalogFilter(filters.FilterSet):

    class Meta:
        model = Catalog
        exclude = []

class LogTypeFilter(filters.FilterSet):

    class Meta:
        model = LogType
        exclude = []

class LogFilter(filters.FilterSet):
    type_text = filters.CharFilter(field_name="type")

    class Meta:
        model = Log
        exclude = []

class ReadTypeFilter(filters.FilterSet):

    class Meta:
        model = ReadType
        exclude = []

class ReadChapterFilter(filters.FilterSet):
    read_text = filters.CharFilter(field_name="read")

    class Meta:
        model = ReadChapter
        exclude = []

class ReadChapterItemFilter(filters.FilterSet):
    read_chapter_text = filters.CharFilter(field_name="read_chapter")
    time = DateFromToRangeFilter(field_name="time")

    class Meta:
        model = ReadChapterItem
        exclude = []

class TeacherFilter(filters.FilterSet):

    class Meta:
        model = Teacher
        exclude = ["avatar","avatar"]

class CommentFilter(filters.FilterSet):
    time = DateFromToRangeFilter(field_name="time")

    class Meta:
        model = Comment
        exclude = ["avatar","avatar"]

class HotFilter(filters.FilterSet):
    time = DateFromToRangeFilter(field_name="time")

    class Meta:
        model = Hot
        exclude = []

class RechargeActionFilter(filters.FilterSet):

    class Meta:
        model = RechargeAction
        exclude = []

class RechargePayFilter(filters.FilterSet):

    class Meta:
        model = RechargePay
        exclude = []

class RechargeFilter(filters.FilterSet):
    action_text = filters.CharFilter(field_name="action")
    way_text = filters.CharFilter(field_name="way")
    time = DateFromToRangeFilter(field_name="time")

    class Meta:
        model = Recharge
        exclude = []

class LabelFollowFilter(filters.FilterSet):

    class Meta:
        model = LabelFollow
        exclude = []

class StudentFilter(filters.FilterSet):
    type_text = filters.CharFilter(field_name="type")

    class Meta:
        model = Student
        exclude = ["avatar","avatar"]

class StudentTypeFilter(filters.FilterSet):

    class Meta:
        model = StudentType
        exclude = []

class NavigationFilter(filters.FilterSet):

    class Meta:
        model = Navigation
        exclude = []

class ReadFilter(filters.FilterSet):
    author_text = filters.CharFilter(field_name="author")

    class Meta:
        model = Read
        exclude = ["img","img","detailImg","detailImg"]

class ArticleFilter(filters.FilterSet):
    type_text = filters.CharFilter(field_name="type")

    class Meta:
        model = Article
        exclude = ["img","img"]

class HistoryFilter(filters.FilterSet):
    time = DateFromToRangeFilter(field_name="time")

    class Meta:
        model = History
        exclude = []

class QaTypeFilter(filters.FilterSet):

    class Meta:
        model = QaType
        exclude = []

class AnswerFilter(filters.FilterSet):

    class Meta:
        model = Answer
        exclude = []

class QaFilter(filters.FilterSet):
    type_text = filters.CharFilter(field_name="type")
    time = DateFromToRangeFilter(field_name="time")

    class Meta:
        model = Qa
        exclude = ["avatar","avatar"]

class ArticleTypeFilter(filters.FilterSet):

    class Meta:
        model = ArticleType
        exclude = []

class UserNoticeFilter(filters.FilterSet):
    messageid_text = filters.CharFilter(field_name="messageid")

    class Meta:
        model = UserNotice
        exclude = []

class SliderFilter(filters.FilterSet):

    class Meta:
        model = Slider
        exclude = ["img","img"]

class UserLessonFilter(filters.FilterSet):
    type_text = filters.CharFilter(field_name="type")

    class Meta:
        model = UserLesson
        exclude = ["img","img"]

class NavFilter(filters.FilterSet):

    class Meta:
        model = Nav
        exclude = ["icon","icon"]

class LabelTypeFilter(filters.FilterSet):

    class Meta:
        model = LabelType
        exclude = []

class LessonTypeFilter(filters.FilterSet):

    class Meta:
        model = LessonType
        exclude = []

class LessonHardTypeFilter(filters.FilterSet):

    class Meta:
        model = LessonHardType
        exclude = []

class LabelFilter(filters.FilterSet):
    type_text = filters.CharFilter(field_name="type")

    class Meta:
        model = Label
        exclude = []

class FooterFilter(filters.FilterSet):

    class Meta:
        model = Footer
        exclude = []

class CommonPathConfigFilter(filters.FilterSet):

    class Meta:
        model = CommonPathConfig
        exclude = []

class ChapterFilter(filters.FilterSet):
    lesson_text = filters.CharFilter(field_name="lesson")

    class Meta:
        model = Chapter
        exclude = []

class TermFilter(filters.FilterSet):
    chapter_text = filters.CharFilter(field_name="chapter")

    class Meta:
        model = Term
        exclude = []

class SysLogFilter(filters.FilterSet):
    action_time = DateFromToRangeFilter(field_name="action_time")

    class Meta:
        model = SysLog
        exclude = []