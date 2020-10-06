from rest_framework import serializers
from app_api.models import EmailVerifyRecord, OrderStatus, Order, OrderItem, CouponRange, CouponStatus, Coupon, IntegralType, Integral, Notice, \
    LessonScript, Lesson, Question, Cart, Consult, User, Bill, Address, Catalog, LogType, Log, ReadType, ReadChapter, ReadChapterItem, Teacher, \
    Comment, Hot, RechargeAction, RechargePay, Recharge, LabelFollow, Student, StudentType, Navigation, Read, Article, History, QaType, Answer, Qa, \
    ArticleType, UserNotice, Slider, UserLesson, Nav, LabelType, LessonType, LessonHardType, Label, Footer, CommonPathConfig, Chapter, Term, SysLog


class EmailVerifyRecordSerializer(serializers.ModelSerializer):
    class Meta:
        model = EmailVerifyRecord
        fields = "__all__"


class OrderStatusSerializer(serializers.ModelSerializer):
    class Meta:
        model = OrderStatus
        fields = "__all__"


class OrderSerializer(serializers.ModelSerializer):
    status_text = serializers.CharField(source="status.text", read_only=True)
    way_text = serializers.CharField(source="way.text", read_only=True)

    class Meta:
        model = Order
        fields = "__all__"


class OrderItemSerializer(serializers.ModelSerializer):
    order_text = serializers.CharField(source="order.code", read_only=True)

    class Meta:
        model = OrderItem
        fields = "__all__"


class CouponRangeSerializer(serializers.ModelSerializer):
    class Meta:
        model = CouponRange
        fields = "__all__"


class CouponStatusSerializer(serializers.ModelSerializer):
    class Meta:
        model = CouponStatus
        fields = "__all__"


class CouponSerializer(serializers.ModelSerializer):
    range_text = serializers.CharField(source="range.text", read_only=True)
    status_text = serializers.CharField(source="status.text", read_only=True)

    class Meta:
        model = Coupon
        fields = "__all__"


class IntegralTypeSerializer(serializers.ModelSerializer):
    class Meta:
        model = IntegralType
        fields = "__all__"


class IntegralSerializer(serializers.ModelSerializer):
    type_text = serializers.CharField(source="type.text", read_only=True)

    class Meta:
        model = Integral
        fields = "__all__"


class NoticeSerializer(serializers.ModelSerializer):
    class Meta:
        model = Notice
        fields = "__all__"


class LessonScriptSerializer(serializers.ModelSerializer):
    class Meta:
        model = LessonScript
        fields = "__all__"


class LessonSerializer(serializers.ModelSerializer):
    category_text = serializers.CharField(source="category.title", read_only=True)
    type_text = serializers.CharField(source="type.text", read_only=True)
    hard_text = serializers.CharField(source="hard.text", read_only=True)
    teacher_text = serializers.CharField(source="teacher.name", read_only=True)
    script_text = serializers.CharField(source="script.title", read_only=True)

    class Meta:
        model = Lesson
        fields = "__all__"


class QuestionSerializer(serializers.ModelSerializer):
    class Meta:
        model = Question
        fields = "__all__"


class CartSerializer(serializers.ModelSerializer):
    class Meta:
        model = Cart
        fields = "__all__"


class ConsultSerializer(serializers.ModelSerializer):
    class Meta:
        model = Consult
        fields = "__all__"


class UserSerializer(serializers.ModelSerializer):
    class Meta:
        model = User
        fields = "__all__"


class BillSerializer(serializers.ModelSerializer):
    way_text = serializers.CharField(source="way.text", read_only=True)

    class Meta:
        model = Bill
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
        fields = "__all__"


class LogSerializer(serializers.ModelSerializer):
    type_text = serializers.CharField(source="type.text", read_only=True)

    class Meta:
        model = Log
        fields = "__all__"


class ReadTypeSerializer(serializers.ModelSerializer):
    class Meta:
        model = ReadType
        fields = "__all__"


class ReadChapterSerializer(serializers.ModelSerializer):
    read_text = serializers.CharField(source="read.title", read_only=True)

    class Meta:
        model = ReadChapter
        fields = "__all__"


class ReadChapterItemSerializer(serializers.ModelSerializer):
    read_chapter_text = serializers.CharField(source="read_chapter.title", read_only=True)

    class Meta:
        model = ReadChapterItem
        fields = "__all__"


class TeacherSerializer(serializers.ModelSerializer):
    class Meta:
        model = Teacher
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
        fields = "__all__"


class RechargePaySerializer(serializers.ModelSerializer):
    class Meta:
        model = RechargePay
        fields = "__all__"


class RechargeSerializer(serializers.ModelSerializer):
    action_text = serializers.CharField(source="action.text", read_only=True)
    way_text = serializers.CharField(source="way.text", read_only=True)

    class Meta:
        model = Recharge
        fields = "__all__"


class LabelFollowSerializer(serializers.ModelSerializer):
    class Meta:
        model = LabelFollow
        fields = "__all__"


class StudentSerializer(serializers.ModelSerializer):
    type_text = serializers.CharField(source="type.text", read_only=True)

    class Meta:
        model = Student
        fields = "__all__"


class StudentTypeSerializer(serializers.ModelSerializer):
    class Meta:
        model = StudentType
        fields = "__all__"


class NavigationSerializer(serializers.ModelSerializer):
    class Meta:
        model = Navigation
        fields = "__all__"


class ReadSerializer(serializers.ModelSerializer):
    author_text = serializers.CharField(source="author.name", read_only=True)

    class Meta:
        model = Read
        fields = "__all__"


class ArticleSerializer(serializers.ModelSerializer):
    type_text = serializers.CharField(source="type.title", read_only=True)

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
        fields = "__all__"


class AnswerSerializer(serializers.ModelSerializer):
    class Meta:
        model = Answer
        fields = "__all__"


class QaSerializer(serializers.ModelSerializer):
    type_text = serializers.CharField(source="type.text", read_only=True)

    class Meta:
        model = Qa
        fields = "__all__"


class ArticleTypeSerializer(serializers.ModelSerializer):
    class Meta:
        model = ArticleType
        fields = "__all__"


class UserNoticeSerializer(serializers.ModelSerializer):
    messageid_text = serializers.CharField(source="messageid.title", read_only=True)

    class Meta:
        model = UserNotice
        fields = "__all__"


class SliderSerializer(serializers.ModelSerializer):
    class Meta:
        model = Slider
        fields = "__all__"


class UserLessonSerializer(serializers.ModelSerializer):
    type_text = serializers.CharField(source="type.text", read_only=True)

    class Meta:
        model = UserLesson
        fields = "__all__"


class NavSerializer(serializers.ModelSerializer):
    class Meta:
        model = Nav
        fields = "__all__"


class LabelTypeSerializer(serializers.ModelSerializer):
    class Meta:
        model = LabelType
        fields = "__all__"


class LessonTypeSerializer(serializers.ModelSerializer):
    class Meta:
        model = LessonType
        fields = "__all__"


class LessonHardTypeSerializer(serializers.ModelSerializer):
    class Meta:
        model = LessonHardType
        fields = "__all__"


class LabelSerializer(serializers.ModelSerializer):
    type_text = serializers.CharField(source="type.title", read_only=True)

    class Meta:
        model = Label
        fields = "__all__"


class FooterSerializer(serializers.ModelSerializer):
    class Meta:
        model = Footer
        fields = "__all__"


class CommonPathConfigSerializer(serializers.ModelSerializer):
    class Meta:
        model = CommonPathConfig
        fields = "__all__"


class ChapterSerializer(serializers.ModelSerializer):
    lesson_text = serializers.CharField(source="lesson.title", read_only=True)

    class Meta:
        model = Chapter
        fields = "__all__"


class TermSerializer(serializers.ModelSerializer):
    chapter_text = serializers.CharField(source="chapter.title", read_only=True)

    class Meta:
        model = Term
        fields = "__all__"


class SysLogSerializer(serializers.ModelSerializer):
    class Meta:
        model = SysLog
        fields = "__all__"
