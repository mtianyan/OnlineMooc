import datetime
import time

from rest_framework import serializers
from rest_framework.relations import StringRelatedField

from app_api.models import Order, Coupon, Integral, Notice, Lesson, Question, Cart, User, Bill, Address, Catalog, Log, ReadType, Teacher, Comment, \
    Hot, Recharge, LabelFollow, Student, Navigation, Read, Article, History, Qa, ArticleType, UserNotice, Slider, UserLesson, Nav, LabelType, \
    IntegralType, Label, Footer, CommonPathConfig, StudentType, LessonType, LessonHardType, Chapter, Term, QaType, RechargeAction, RechargePay, \
    CouponRange, CouponStatus, OrderItem, OrderStatus, Consult, ReadChapterItem, ReadChapter, LogType


class ConsultSerializer(serializers.ModelSerializer):
    class Meta:
        model = Consult
        fields = "__all__"


class OrderStatusSerializer(serializers.ModelSerializer):
    class Meta:
        model = OrderStatus
        fields = ["text", "code"]


class OrderItemSerializer(serializers.ModelSerializer):
    class Meta:
        model = OrderItem
        fields = "__all__"


class OrderWaySerializer(serializers.ModelSerializer):
    class Meta:
        model = RechargePay
        fields = ["text", "code"]


class OrderListSerializer(serializers.ModelSerializer):
    status = OrderStatusSerializer()
    way = OrderWaySerializer()
    list = OrderItemSerializer(many=True)

    class Meta:
        model = Order
        fields = "__all__"


class OrderSerializer(serializers.ModelSerializer):
    class Meta:
        model = Order
        fields = "__all__"


class OrderInfoSerializer(serializers.ModelSerializer):
    list = OrderItemSerializer(many=True)

    class Meta:
        model = Order
        fields = "__all__"


class CouponRangeSerializer(serializers.ModelSerializer):
    class Meta:
        model = CouponRange
        fields = ["text", "code"]


class CouponStatusSerializer(serializers.ModelSerializer):
    class Meta:
        model = CouponStatus
        fields = ["text", "code"]


class CouponSerializer(serializers.ModelSerializer):
    range = CouponRangeSerializer()
    status = CouponStatusSerializer()
    starttime = serializers.DateTimeField(format="%Y.%m.%d")
    endtime = serializers.DateTimeField(format="%Y.%m.%d")

    class Meta:
        model = Coupon
        fields = "__all__"


class IntegralSerializer(serializers.ModelSerializer):
    class Meta:
        model = Integral
        fields = "__all__"


class UserNoticeSerializer(serializers.ModelSerializer):
    class Meta:
        model = UserNotice
        fields = "__all__"


class NoticeSerializer(serializers.ModelSerializer):
    class Meta:
        model = Notice
        fields = "__all__"


class LabelTypeHomeSerializer(serializers.ModelSerializer):
    class Meta:
        model = LabelType
        fields = ["code", "title"]


class LabelTypeSerializer(serializers.ModelSerializer):
    text = serializers.CharField(source="title")

    class Meta:
        model = LabelType
        fields = ["code", "text"]


class LessonTypeSerializer(serializers.ModelSerializer):
    class Meta:
        model = LessonType
        fields = ["code", "text"]


class LabelSerializer(serializers.ModelSerializer):
    type = LabelTypeSerializer()

    class Meta:
        model = Label
        fields = "__all__"


class LabelInnerLessonSerializer(serializers.ModelSerializer):
    class Meta:
        model = Label
        fields = ["title"]


class LessonHardTypeSerializer(serializers.ModelSerializer):
    class Meta:
        model = LessonHardType
        fields = ["code", "text"]


class TeacherSerializer(serializers.ModelSerializer):
    class Meta:
        model = Teacher
        fields = "__all__"


class LessonSerializer(serializers.ModelSerializer):
    category = LabelTypeSerializer()
    type = LessonTypeSerializer()
    labels = StringRelatedField(many=True)
    teacher = TeacherSerializer()

    class Meta:
        model = Lesson
        fields = "__all__"


class LessonInfoSerializer(serializers.ModelSerializer):
    category = LabelTypeSerializer()
    type = LessonTypeSerializer()
    labels = StringRelatedField(many=True)
    hard = LessonHardTypeSerializer()
    teacher = TeacherSerializer()

    class Meta:
        model = Lesson
        fields = "__all__"


class TermSerializer(serializers.ModelSerializer):
    class Meta:
        model = Term
        fields = "__all__"


class ChapterSerializer(serializers.ModelSerializer):
    term = TermSerializer(many=True)

    class Meta:
        model = Chapter
        fields = "__all__"


class QuestionSerializer(serializers.ModelSerializer):
    class Meta:
        model = Question
        fields = "__all__"


class CartSerializer(serializers.ModelSerializer):
    class Meta:
        model = Cart
        fields = "__all__"


class UserSerializer(serializers.ModelSerializer):
    class Meta:
        model = User
        fields = "__all__"


class AddressSerializer(serializers.ModelSerializer):
    class Meta:
        model = Address
        fields = "__all__"


class CatalogSerializer(serializers.ModelSerializer):
    class Meta:
        model = Catalog
        fields = "__all__"


class LogTypeSerializer(serializers.ModelSerializer):
    class Meta:
        model = LogType
        fields = ["text", "code"]


class LogSerializer(serializers.ModelSerializer):
    type = LogTypeSerializer()

    class Meta:
        model = Log
        fields = "__all__"


class ReadTypeSerializer(serializers.ModelSerializer):
    class Meta:
        model = ReadType
        fields = "__all__"


class CommentSerializer(serializers.ModelSerializer):
    class Meta:
        model = Comment
        fields = "__all__"


class HotSerializer(serializers.ModelSerializer):
    class Meta:
        model = Hot
        fields = "__all__"


class RechargeActionSerializer(serializers.ModelSerializer):
    class Meta:
        model = RechargeAction
        fields = ["text", "code"]


class RechargePaySerializer(serializers.ModelSerializer):
    action = RechargeActionSerializer

    class Meta:
        model = RechargePay
        fields = ["text", "code"]


class RechargeListSerializer(serializers.ModelSerializer):
    action = RechargeActionSerializer()
    way = RechargePaySerializer()

    class Meta:
        model = Recharge
        fields = "__all__"


class BillSerializer(serializers.ModelSerializer):
    way = RechargePaySerializer()
    orderno = serializers.SerializerMethodField()

    class Meta:
        model = Bill
        fields = "__all__"

    @staticmethod
    def get_orderno(obj):
        year = datetime.datetime.now().year
        month = datetime.datetime.now().month
        day = datetime.datetime.now().day
        if month < 10:
            month = f'0{month}'
        if day < 10:
            day = f'0{day}'
        return f'{year}{month}{day}{int(time.time())}'


class RechargeSerializer(serializers.ModelSerializer):
    class Meta:
        model = Recharge
        fields = "__all__"


class LabelFollowSerializer(serializers.ModelSerializer):
    class Meta:
        model = LabelFollow
        fields = "__all__"


class StudentTypeSerializer(serializers.ModelSerializer):
    class Meta:
        model = StudentType
        fields = ["code", "text"]


class StudentSerializer(serializers.ModelSerializer):
    type = StudentTypeSerializer()

    class Meta:
        model = Student
        fields = "__all__"


class NavigationSerializer(serializers.ModelSerializer):
    class Meta:
        model = Navigation
        fields = "__all__"


class ReadChapterItemSerializer(serializers.ModelSerializer):
    class Meta:
        model = ReadChapterItem
        fields = "__all__"


class ReadChapterSerializer(serializers.ModelSerializer):
    data = ReadChapterItemSerializer(source="chapter_item", many=True)

    class Meta:
        model = ReadChapter
        fields = "__all__"


class ReadSerializer(serializers.ModelSerializer):
    author = TeacherSerializer()
    tryRead = serializers.SerializerMethodField()

    class Meta:
        model = Read
        fields = "__all__"

    @staticmethod
    def get_tryRead(obj):
        chapters = ReadChapter.objects.filter(read=obj).values_list("id", flat=True)
        chapter_items = ReadChapterItem.objects.filter(read_chapter_id__in=chapters, isTry=True).values_list("title", flat=True)
        return chapter_items


class ReadInfoSerializer(serializers.ModelSerializer):
    author = TeacherSerializer()
    chapter = ReadChapterSerializer(many=True)

    class Meta:
        model = Read
        fields = "__all__"


class ArticleSerializer(serializers.ModelSerializer):
    type = serializers.IntegerField(source="type.code")

    class Meta:
        model = Article
        fields = "__all__"


class HistorySerializer(serializers.ModelSerializer):
    class Meta:
        model = History
        fields = "__all__"


class QaTypeSerializer(serializers.ModelSerializer):
    class Meta:
        model = QaType
        fields = ["text", "code"]


class QaSerializer(serializers.ModelSerializer):
    status = QaTypeSerializer(source="type")

    class Meta:
        model = Qa
        fields = "__all__"


class ArticleTypeSerializer(serializers.ModelSerializer):
    class Meta:
        model = ArticleType
        fields = "__all__"


class SliderSerializer(serializers.ModelSerializer):
    class Meta:
        model = Slider
        fields = "__all__"


class UserLessonSerializer(serializers.ModelSerializer):
    type = LessonTypeSerializer()

    class Meta:
        model = UserLesson
        fields = "__all__"


class NavSerializer(serializers.ModelSerializer):
    class Meta:
        model = Nav
        fields = "__all__"


class IntegralTypeSerializer(serializers.ModelSerializer):
    class Meta:
        model = IntegralType
        fields = "__all__"


class FooterSerializer(serializers.ModelSerializer):
    class Meta:
        model = Footer
        fields = "__all__"


class CommonPathConfigSerializer(serializers.ModelSerializer):
    class Meta:
        model = CommonPathConfig
        fields = "__all__"
