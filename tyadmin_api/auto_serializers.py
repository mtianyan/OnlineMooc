from rest_framework import serializers
from django.contrib.auth.models import Permission, Group
from django.contrib.contenttypes.models import ContentType
from app_api.models import EmailVerifyRecord, OrderStatus, Order, OrderItem, CouponRange, CouponStatus, Coupon, IntegralType, Integral, Notice, LessonScript, Lesson, Question, Cart, Consult, User, Bill, Address, Catalog, LogType, Log, ReadType, ReadChapter, ReadChapterItem, Teacher, Comment, Hot, RechargeAction, RechargePay, Recharge, LabelFollow, Student, StudentType, Navigation, Read, Article, History, QaType, Answer, Qa, ArticleType, UserNotice, Slider, UserLesson, Nav, LabelType, LessonType, LessonHardType, Label, Footer, CommonPathConfig, Chapter, Term, SysLog


class ContentTypeListSerializer(serializers.ModelSerializer):
    

    key = serializers.CharField(source="pk")
    ty_options_display_txt = serializers.SerializerMethodField()

    class Meta:
        model = ContentType
        fields = "__all__"

    @staticmethod
    def get_ty_options_display_txt(obj):
        return str(obj)


class ContentTypeCreateUpdateSerializer(serializers.ModelSerializer):
    
    ty_options_display_txt = serializers.SerializerMethodField()
    class Meta:
        model = ContentType
        fields = "__all__"
    @staticmethod
    def get_ty_options_display_txt(obj):
        return str(obj)


class EmailVerifyRecordListSerializer(serializers.ModelSerializer):
    

    key = serializers.CharField(source="pk")
    ty_options_display_txt = serializers.SerializerMethodField()

    class Meta:
        model = EmailVerifyRecord
        fields = "__all__"

    @staticmethod
    def get_ty_options_display_txt(obj):
        return str(obj)


class EmailVerifyRecordCreateUpdateSerializer(serializers.ModelSerializer):
    
    ty_options_display_txt = serializers.SerializerMethodField()
    class Meta:
        model = EmailVerifyRecord
        fields = "__all__"
    @staticmethod
    def get_ty_options_display_txt(obj):
        return str(obj)


class OrderStatusListSerializer(serializers.ModelSerializer):
    

    key = serializers.CharField(source="pk")
    ty_options_display_txt = serializers.SerializerMethodField()

    class Meta:
        model = OrderStatus
        fields = "__all__"

    @staticmethod
    def get_ty_options_display_txt(obj):
        return str(obj)


class OrderStatusCreateUpdateSerializer(serializers.ModelSerializer):
    
    ty_options_display_txt = serializers.SerializerMethodField()
    class Meta:
        model = OrderStatus
        fields = "__all__"
    @staticmethod
    def get_ty_options_display_txt(obj):
        return str(obj)


class CouponRangeListSerializer(serializers.ModelSerializer):
    

    key = serializers.CharField(source="pk")
    ty_options_display_txt = serializers.SerializerMethodField()

    class Meta:
        model = CouponRange
        fields = "__all__"

    @staticmethod
    def get_ty_options_display_txt(obj):
        return str(obj)


class CouponRangeCreateUpdateSerializer(serializers.ModelSerializer):
    
    ty_options_display_txt = serializers.SerializerMethodField()
    class Meta:
        model = CouponRange
        fields = "__all__"
    @staticmethod
    def get_ty_options_display_txt(obj):
        return str(obj)


class CouponStatusListSerializer(serializers.ModelSerializer):
    

    key = serializers.CharField(source="pk")
    ty_options_display_txt = serializers.SerializerMethodField()

    class Meta:
        model = CouponStatus
        fields = "__all__"

    @staticmethod
    def get_ty_options_display_txt(obj):
        return str(obj)


class CouponStatusCreateUpdateSerializer(serializers.ModelSerializer):
    
    ty_options_display_txt = serializers.SerializerMethodField()
    class Meta:
        model = CouponStatus
        fields = "__all__"
    @staticmethod
    def get_ty_options_display_txt(obj):
        return str(obj)


class IntegralTypeListSerializer(serializers.ModelSerializer):
    

    key = serializers.CharField(source="pk")
    ty_options_display_txt = serializers.SerializerMethodField()

    class Meta:
        model = IntegralType
        fields = "__all__"

    @staticmethod
    def get_ty_options_display_txt(obj):
        return str(obj)


class IntegralTypeCreateUpdateSerializer(serializers.ModelSerializer):
    
    ty_options_display_txt = serializers.SerializerMethodField()
    class Meta:
        model = IntegralType
        fields = "__all__"
    @staticmethod
    def get_ty_options_display_txt(obj):
        return str(obj)


class NoticeListSerializer(serializers.ModelSerializer):
    

    key = serializers.CharField(source="pk")
    ty_options_display_txt = serializers.SerializerMethodField()

    class Meta:
        model = Notice
        fields = "__all__"

    @staticmethod
    def get_ty_options_display_txt(obj):
        return str(obj)


class NoticeCreateUpdateSerializer(serializers.ModelSerializer):
    
    ty_options_display_txt = serializers.SerializerMethodField()
    class Meta:
        model = Notice
        fields = "__all__"
    @staticmethod
    def get_ty_options_display_txt(obj):
        return str(obj)


class LessonScriptListSerializer(serializers.ModelSerializer):
    

    key = serializers.CharField(source="pk")
    ty_options_display_txt = serializers.SerializerMethodField()

    class Meta:
        model = LessonScript
        fields = "__all__"

    @staticmethod
    def get_ty_options_display_txt(obj):
        return str(obj)


class LessonScriptCreateUpdateSerializer(serializers.ModelSerializer):
    
    ty_options_display_txt = serializers.SerializerMethodField()
    class Meta:
        model = LessonScript
        fields = "__all__"
    @staticmethod
    def get_ty_options_display_txt(obj):
        return str(obj)


class CartListSerializer(serializers.ModelSerializer):
    

    key = serializers.CharField(source="pk")
    ty_options_display_txt = serializers.SerializerMethodField()

    class Meta:
        model = Cart
        fields = "__all__"

    @staticmethod
    def get_ty_options_display_txt(obj):
        return str(obj)


class CartCreateUpdateSerializer(serializers.ModelSerializer):
    
    ty_options_display_txt = serializers.SerializerMethodField()
    class Meta:
        model = Cart
        fields = "__all__"
    @staticmethod
    def get_ty_options_display_txt(obj):
        return str(obj)


class ConsultListSerializer(serializers.ModelSerializer):
    

    key = serializers.CharField(source="pk")
    ty_options_display_txt = serializers.SerializerMethodField()

    class Meta:
        model = Consult
        fields = "__all__"

    @staticmethod
    def get_ty_options_display_txt(obj):
        return str(obj)


class ConsultCreateUpdateSerializer(serializers.ModelSerializer):
    
    ty_options_display_txt = serializers.SerializerMethodField()
    class Meta:
        model = Consult
        fields = "__all__"
    @staticmethod
    def get_ty_options_display_txt(obj):
        return str(obj)


class AddressListSerializer(serializers.ModelSerializer):
    

    key = serializers.CharField(source="pk")
    ty_options_display_txt = serializers.SerializerMethodField()

    class Meta:
        model = Address
        fields = "__all__"

    @staticmethod
    def get_ty_options_display_txt(obj):
        return str(obj)


class AddressCreateUpdateSerializer(serializers.ModelSerializer):
    
    ty_options_display_txt = serializers.SerializerMethodField()
    class Meta:
        model = Address
        fields = "__all__"
    @staticmethod
    def get_ty_options_display_txt(obj):
        return str(obj)


class CatalogListSerializer(serializers.ModelSerializer):
    

    key = serializers.CharField(source="pk")
    ty_options_display_txt = serializers.SerializerMethodField()

    class Meta:
        model = Catalog
        fields = "__all__"

    @staticmethod
    def get_ty_options_display_txt(obj):
        return str(obj)


class CatalogCreateUpdateSerializer(serializers.ModelSerializer):
    
    ty_options_display_txt = serializers.SerializerMethodField()
    class Meta:
        model = Catalog
        fields = "__all__"
    @staticmethod
    def get_ty_options_display_txt(obj):
        return str(obj)


class LogTypeListSerializer(serializers.ModelSerializer):
    

    key = serializers.CharField(source="pk")
    ty_options_display_txt = serializers.SerializerMethodField()

    class Meta:
        model = LogType
        fields = "__all__"

    @staticmethod
    def get_ty_options_display_txt(obj):
        return str(obj)


class LogTypeCreateUpdateSerializer(serializers.ModelSerializer):
    
    ty_options_display_txt = serializers.SerializerMethodField()
    class Meta:
        model = LogType
        fields = "__all__"
    @staticmethod
    def get_ty_options_display_txt(obj):
        return str(obj)


class ReadTypeListSerializer(serializers.ModelSerializer):
    

    key = serializers.CharField(source="pk")
    ty_options_display_txt = serializers.SerializerMethodField()

    class Meta:
        model = ReadType
        fields = "__all__"

    @staticmethod
    def get_ty_options_display_txt(obj):
        return str(obj)


class ReadTypeCreateUpdateSerializer(serializers.ModelSerializer):
    
    ty_options_display_txt = serializers.SerializerMethodField()
    class Meta:
        model = ReadType
        fields = "__all__"
    @staticmethod
    def get_ty_options_display_txt(obj):
        return str(obj)


class TeacherListSerializer(serializers.ModelSerializer):
    

    key = serializers.CharField(source="pk")
    ty_options_display_txt = serializers.SerializerMethodField()

    class Meta:
        model = Teacher
        fields = "__all__"

    @staticmethod
    def get_ty_options_display_txt(obj):
        return str(obj)


class TeacherCreateUpdateSerializer(serializers.ModelSerializer):
    
    ty_options_display_txt = serializers.SerializerMethodField()
    class Meta:
        model = Teacher
        fields = "__all__"
    @staticmethod
    def get_ty_options_display_txt(obj):
        return str(obj)


class CommentListSerializer(serializers.ModelSerializer):
    

    key = serializers.CharField(source="pk")
    ty_options_display_txt = serializers.SerializerMethodField()

    class Meta:
        model = Comment
        fields = "__all__"

    @staticmethod
    def get_ty_options_display_txt(obj):
        return str(obj)


class CommentCreateUpdateSerializer(serializers.ModelSerializer):
    
    ty_options_display_txt = serializers.SerializerMethodField()
    class Meta:
        model = Comment
        fields = "__all__"
    @staticmethod
    def get_ty_options_display_txt(obj):
        return str(obj)


class HotListSerializer(serializers.ModelSerializer):
    

    key = serializers.CharField(source="pk")
    ty_options_display_txt = serializers.SerializerMethodField()

    class Meta:
        model = Hot
        fields = "__all__"

    @staticmethod
    def get_ty_options_display_txt(obj):
        return str(obj)


class HotCreateUpdateSerializer(serializers.ModelSerializer):
    
    ty_options_display_txt = serializers.SerializerMethodField()
    class Meta:
        model = Hot
        fields = "__all__"
    @staticmethod
    def get_ty_options_display_txt(obj):
        return str(obj)


class RechargeActionListSerializer(serializers.ModelSerializer):
    

    key = serializers.CharField(source="pk")
    ty_options_display_txt = serializers.SerializerMethodField()

    class Meta:
        model = RechargeAction
        fields = "__all__"

    @staticmethod
    def get_ty_options_display_txt(obj):
        return str(obj)


class RechargeActionCreateUpdateSerializer(serializers.ModelSerializer):
    
    ty_options_display_txt = serializers.SerializerMethodField()
    class Meta:
        model = RechargeAction
        fields = "__all__"
    @staticmethod
    def get_ty_options_display_txt(obj):
        return str(obj)


class RechargePayListSerializer(serializers.ModelSerializer):
    

    key = serializers.CharField(source="pk")
    ty_options_display_txt = serializers.SerializerMethodField()

    class Meta:
        model = RechargePay
        fields = "__all__"

    @staticmethod
    def get_ty_options_display_txt(obj):
        return str(obj)


class RechargePayCreateUpdateSerializer(serializers.ModelSerializer):
    
    ty_options_display_txt = serializers.SerializerMethodField()
    class Meta:
        model = RechargePay
        fields = "__all__"
    @staticmethod
    def get_ty_options_display_txt(obj):
        return str(obj)


class LabelFollowListSerializer(serializers.ModelSerializer):
    

    key = serializers.CharField(source="pk")
    ty_options_display_txt = serializers.SerializerMethodField()

    class Meta:
        model = LabelFollow
        fields = "__all__"

    @staticmethod
    def get_ty_options_display_txt(obj):
        return str(obj)


class LabelFollowCreateUpdateSerializer(serializers.ModelSerializer):
    
    ty_options_display_txt = serializers.SerializerMethodField()
    class Meta:
        model = LabelFollow
        fields = "__all__"
    @staticmethod
    def get_ty_options_display_txt(obj):
        return str(obj)


class StudentTypeListSerializer(serializers.ModelSerializer):
    

    key = serializers.CharField(source="pk")
    ty_options_display_txt = serializers.SerializerMethodField()

    class Meta:
        model = StudentType
        fields = "__all__"

    @staticmethod
    def get_ty_options_display_txt(obj):
        return str(obj)


class StudentTypeCreateUpdateSerializer(serializers.ModelSerializer):
    
    ty_options_display_txt = serializers.SerializerMethodField()
    class Meta:
        model = StudentType
        fields = "__all__"
    @staticmethod
    def get_ty_options_display_txt(obj):
        return str(obj)


class NavigationListSerializer(serializers.ModelSerializer):
    

    key = serializers.CharField(source="pk")
    ty_options_display_txt = serializers.SerializerMethodField()

    class Meta:
        model = Navigation
        fields = "__all__"

    @staticmethod
    def get_ty_options_display_txt(obj):
        return str(obj)


class NavigationCreateUpdateSerializer(serializers.ModelSerializer):
    
    ty_options_display_txt = serializers.SerializerMethodField()
    class Meta:
        model = Navigation
        fields = "__all__"
    @staticmethod
    def get_ty_options_display_txt(obj):
        return str(obj)


class HistoryListSerializer(serializers.ModelSerializer):
    

    key = serializers.CharField(source="pk")
    ty_options_display_txt = serializers.SerializerMethodField()

    class Meta:
        model = History
        fields = "__all__"

    @staticmethod
    def get_ty_options_display_txt(obj):
        return str(obj)


class HistoryCreateUpdateSerializer(serializers.ModelSerializer):
    
    ty_options_display_txt = serializers.SerializerMethodField()
    class Meta:
        model = History
        fields = "__all__"
    @staticmethod
    def get_ty_options_display_txt(obj):
        return str(obj)


class QaTypeListSerializer(serializers.ModelSerializer):
    

    key = serializers.CharField(source="pk")
    ty_options_display_txt = serializers.SerializerMethodField()

    class Meta:
        model = QaType
        fields = "__all__"

    @staticmethod
    def get_ty_options_display_txt(obj):
        return str(obj)


class QaTypeCreateUpdateSerializer(serializers.ModelSerializer):
    
    ty_options_display_txt = serializers.SerializerMethodField()
    class Meta:
        model = QaType
        fields = "__all__"
    @staticmethod
    def get_ty_options_display_txt(obj):
        return str(obj)


class AnswerListSerializer(serializers.ModelSerializer):
    

    key = serializers.CharField(source="pk")
    ty_options_display_txt = serializers.SerializerMethodField()

    class Meta:
        model = Answer
        fields = "__all__"

    @staticmethod
    def get_ty_options_display_txt(obj):
        return str(obj)


class AnswerCreateUpdateSerializer(serializers.ModelSerializer):
    
    ty_options_display_txt = serializers.SerializerMethodField()
    class Meta:
        model = Answer
        fields = "__all__"
    @staticmethod
    def get_ty_options_display_txt(obj):
        return str(obj)


class ArticleTypeListSerializer(serializers.ModelSerializer):
    

    key = serializers.CharField(source="pk")
    ty_options_display_txt = serializers.SerializerMethodField()

    class Meta:
        model = ArticleType
        fields = "__all__"

    @staticmethod
    def get_ty_options_display_txt(obj):
        return str(obj)


class ArticleTypeCreateUpdateSerializer(serializers.ModelSerializer):
    
    ty_options_display_txt = serializers.SerializerMethodField()
    class Meta:
        model = ArticleType
        fields = "__all__"
    @staticmethod
    def get_ty_options_display_txt(obj):
        return str(obj)


class SliderListSerializer(serializers.ModelSerializer):
    

    key = serializers.CharField(source="pk")
    ty_options_display_txt = serializers.SerializerMethodField()

    class Meta:
        model = Slider
        fields = "__all__"

    @staticmethod
    def get_ty_options_display_txt(obj):
        return str(obj)


class SliderCreateUpdateSerializer(serializers.ModelSerializer):
    
    ty_options_display_txt = serializers.SerializerMethodField()
    class Meta:
        model = Slider
        fields = "__all__"
    @staticmethod
    def get_ty_options_display_txt(obj):
        return str(obj)


class NavListSerializer(serializers.ModelSerializer):
    

    key = serializers.CharField(source="pk")
    ty_options_display_txt = serializers.SerializerMethodField()

    class Meta:
        model = Nav
        fields = "__all__"

    @staticmethod
    def get_ty_options_display_txt(obj):
        return str(obj)


class NavCreateUpdateSerializer(serializers.ModelSerializer):
    
    ty_options_display_txt = serializers.SerializerMethodField()
    class Meta:
        model = Nav
        fields = "__all__"
    @staticmethod
    def get_ty_options_display_txt(obj):
        return str(obj)


class LabelTypeListSerializer(serializers.ModelSerializer):
    

    key = serializers.CharField(source="pk")
    ty_options_display_txt = serializers.SerializerMethodField()

    class Meta:
        model = LabelType
        fields = "__all__"

    @staticmethod
    def get_ty_options_display_txt(obj):
        return str(obj)


class LabelTypeCreateUpdateSerializer(serializers.ModelSerializer):
    
    ty_options_display_txt = serializers.SerializerMethodField()
    class Meta:
        model = LabelType
        fields = "__all__"
    @staticmethod
    def get_ty_options_display_txt(obj):
        return str(obj)


class LessonTypeListSerializer(serializers.ModelSerializer):
    

    key = serializers.CharField(source="pk")
    ty_options_display_txt = serializers.SerializerMethodField()

    class Meta:
        model = LessonType
        fields = "__all__"

    @staticmethod
    def get_ty_options_display_txt(obj):
        return str(obj)


class LessonTypeCreateUpdateSerializer(serializers.ModelSerializer):
    
    ty_options_display_txt = serializers.SerializerMethodField()
    class Meta:
        model = LessonType
        fields = "__all__"
    @staticmethod
    def get_ty_options_display_txt(obj):
        return str(obj)


class LessonHardTypeListSerializer(serializers.ModelSerializer):
    

    key = serializers.CharField(source="pk")
    ty_options_display_txt = serializers.SerializerMethodField()

    class Meta:
        model = LessonHardType
        fields = "__all__"

    @staticmethod
    def get_ty_options_display_txt(obj):
        return str(obj)


class LessonHardTypeCreateUpdateSerializer(serializers.ModelSerializer):
    
    ty_options_display_txt = serializers.SerializerMethodField()
    class Meta:
        model = LessonHardType
        fields = "__all__"
    @staticmethod
    def get_ty_options_display_txt(obj):
        return str(obj)


class FooterListSerializer(serializers.ModelSerializer):
    

    key = serializers.CharField(source="pk")
    ty_options_display_txt = serializers.SerializerMethodField()

    class Meta:
        model = Footer
        fields = "__all__"

    @staticmethod
    def get_ty_options_display_txt(obj):
        return str(obj)


class FooterCreateUpdateSerializer(serializers.ModelSerializer):
    
    ty_options_display_txt = serializers.SerializerMethodField()
    class Meta:
        model = Footer
        fields = "__all__"
    @staticmethod
    def get_ty_options_display_txt(obj):
        return str(obj)


class CommonPathConfigListSerializer(serializers.ModelSerializer):
    

    key = serializers.CharField(source="pk")
    ty_options_display_txt = serializers.SerializerMethodField()

    class Meta:
        model = CommonPathConfig
        fields = "__all__"

    @staticmethod
    def get_ty_options_display_txt(obj):
        return str(obj)


class CommonPathConfigCreateUpdateSerializer(serializers.ModelSerializer):
    
    ty_options_display_txt = serializers.SerializerMethodField()
    class Meta:
        model = CommonPathConfig
        fields = "__all__"
    @staticmethod
    def get_ty_options_display_txt(obj):
        return str(obj)


class SysLogListSerializer(serializers.ModelSerializer):
    

    key = serializers.CharField(source="pk")
    ty_options_display_txt = serializers.SerializerMethodField()

    class Meta:
        model = SysLog
        fields = "__all__"

    @staticmethod
    def get_ty_options_display_txt(obj):
        return str(obj)


class SysLogCreateUpdateSerializer(serializers.ModelSerializer):
    
    ty_options_display_txt = serializers.SerializerMethodField()
    class Meta:
        model = SysLog
        fields = "__all__"
    @staticmethod
    def get_ty_options_display_txt(obj):
        return str(obj)


class PermissionListSerializer(serializers.ModelSerializer):
    
    content_type = ContentTypeCreateUpdateSerializer()

    key = serializers.CharField(source="pk")
    ty_options_display_txt = serializers.SerializerMethodField()

    class Meta:
        model = Permission
        fields = "__all__"

    @staticmethod
    def get_ty_options_display_txt(obj):
        return str(obj)


class PermissionCreateUpdateSerializer(serializers.ModelSerializer):
    
    ty_options_display_txt = serializers.SerializerMethodField()
    class Meta:
        model = Permission
        fields = "__all__"
    @staticmethod
    def get_ty_options_display_txt(obj):
        return str(obj)


class GroupListSerializer(serializers.ModelSerializer):
    
    permissions = PermissionCreateUpdateSerializer(many=True)

    key = serializers.CharField(source="pk")
    ty_options_display_txt = serializers.SerializerMethodField()

    class Meta:
        model = Group
        fields = "__all__"

    @staticmethod
    def get_ty_options_display_txt(obj):
        return str(obj)


class GroupCreateUpdateSerializer(serializers.ModelSerializer):
    
    ty_options_display_txt = serializers.SerializerMethodField()
    class Meta:
        model = Group
        fields = "__all__"
    @staticmethod
    def get_ty_options_display_txt(obj):
        return str(obj)


class OrderListSerializer(serializers.ModelSerializer):
    
    status = OrderStatusCreateUpdateSerializer()
    way = RechargePayCreateUpdateSerializer()

    key = serializers.CharField(source="pk")
    ty_options_display_txt = serializers.SerializerMethodField()

    class Meta:
        model = Order
        fields = "__all__"

    @staticmethod
    def get_ty_options_display_txt(obj):
        return str(obj)


class OrderCreateUpdateSerializer(serializers.ModelSerializer):
    
    ty_options_display_txt = serializers.SerializerMethodField()
    class Meta:
        model = Order
        fields = "__all__"
    @staticmethod
    def get_ty_options_display_txt(obj):
        return str(obj)


class OrderItemListSerializer(serializers.ModelSerializer):
    
    order = OrderCreateUpdateSerializer()

    key = serializers.CharField(source="pk")
    ty_options_display_txt = serializers.SerializerMethodField()

    class Meta:
        model = OrderItem
        fields = "__all__"

    @staticmethod
    def get_ty_options_display_txt(obj):
        return str(obj)


class OrderItemCreateUpdateSerializer(serializers.ModelSerializer):
    
    ty_options_display_txt = serializers.SerializerMethodField()
    class Meta:
        model = OrderItem
        fields = "__all__"
    @staticmethod
    def get_ty_options_display_txt(obj):
        return str(obj)


class CouponListSerializer(serializers.ModelSerializer):
    
    range = CouponRangeCreateUpdateSerializer()
    status = CouponStatusCreateUpdateSerializer()

    key = serializers.CharField(source="pk")
    ty_options_display_txt = serializers.SerializerMethodField()

    class Meta:
        model = Coupon
        fields = "__all__"

    @staticmethod
    def get_ty_options_display_txt(obj):
        return str(obj)


class CouponCreateUpdateSerializer(serializers.ModelSerializer):
    
    ty_options_display_txt = serializers.SerializerMethodField()
    class Meta:
        model = Coupon
        fields = "__all__"
    @staticmethod
    def get_ty_options_display_txt(obj):
        return str(obj)


class IntegralListSerializer(serializers.ModelSerializer):
    
    type = IntegralTypeCreateUpdateSerializer()

    key = serializers.CharField(source="pk")
    ty_options_display_txt = serializers.SerializerMethodField()

    class Meta:
        model = Integral
        fields = "__all__"

    @staticmethod
    def get_ty_options_display_txt(obj):
        return str(obj)


class IntegralCreateUpdateSerializer(serializers.ModelSerializer):
    
    ty_options_display_txt = serializers.SerializerMethodField()
    class Meta:
        model = Integral
        fields = "__all__"
    @staticmethod
    def get_ty_options_display_txt(obj):
        return str(obj)


class LessonListSerializer(serializers.ModelSerializer):
    
    category = LabelTypeCreateUpdateSerializer()
    type = LessonTypeCreateUpdateSerializer()
    hard = LessonHardTypeCreateUpdateSerializer()
    teacher = TeacherCreateUpdateSerializer()
    script = LessonScriptCreateUpdateSerializer()
    labels = LabelCreateUpdateSerializer(many=True)

    key = serializers.CharField(source="pk")
    ty_options_display_txt = serializers.SerializerMethodField()

    class Meta:
        model = Lesson
        fields = "__all__"

    @staticmethod
    def get_ty_options_display_txt(obj):
        return str(obj)


class LessonCreateUpdateSerializer(serializers.ModelSerializer):
    
    ty_options_display_txt = serializers.SerializerMethodField()
    class Meta:
        model = Lesson
        fields = "__all__"
    @staticmethod
    def get_ty_options_display_txt(obj):
        return str(obj)


class QuestionListSerializer(serializers.ModelSerializer):
    
    tags = LabelCreateUpdateSerializer(many=True)

    key = serializers.CharField(source="pk")
    ty_options_display_txt = serializers.SerializerMethodField()

    class Meta:
        model = Question
        fields = "__all__"

    @staticmethod
    def get_ty_options_display_txt(obj):
        return str(obj)


class QuestionCreateUpdateSerializer(serializers.ModelSerializer):
    
    ty_options_display_txt = serializers.SerializerMethodField()
    class Meta:
        model = Question
        fields = "__all__"
    @staticmethod
    def get_ty_options_display_txt(obj):
        return str(obj)


class UserListSerializer(serializers.ModelSerializer):
    
    groups = GroupCreateUpdateSerializer(many=True)
    user_permissions = PermissionCreateUpdateSerializer(many=True)

    key = serializers.CharField(source="pk")
    ty_options_display_txt = serializers.SerializerMethodField()

    class Meta:
        model = User
        fields = "__all__"

    @staticmethod
    def get_ty_options_display_txt(obj):
        return str(obj)


class UserCreateUpdateSerializer(serializers.ModelSerializer):
    
    ty_options_display_txt = serializers.SerializerMethodField()
    class Meta:
        model = User
        fields = "__all__"
    @staticmethod
    def get_ty_options_display_txt(obj):
        return str(obj)


class BillListSerializer(serializers.ModelSerializer):
    
    way = RechargePayCreateUpdateSerializer()

    key = serializers.CharField(source="pk")
    ty_options_display_txt = serializers.SerializerMethodField()

    class Meta:
        model = Bill
        fields = "__all__"

    @staticmethod
    def get_ty_options_display_txt(obj):
        return str(obj)


class BillCreateUpdateSerializer(serializers.ModelSerializer):
    
    ty_options_display_txt = serializers.SerializerMethodField()
    class Meta:
        model = Bill
        fields = "__all__"
    @staticmethod
    def get_ty_options_display_txt(obj):
        return str(obj)


class LogListSerializer(serializers.ModelSerializer):
    
    type = LogTypeCreateUpdateSerializer()

    key = serializers.CharField(source="pk")
    ty_options_display_txt = serializers.SerializerMethodField()

    class Meta:
        model = Log
        fields = "__all__"

    @staticmethod
    def get_ty_options_display_txt(obj):
        return str(obj)


class LogCreateUpdateSerializer(serializers.ModelSerializer):
    
    ty_options_display_txt = serializers.SerializerMethodField()
    class Meta:
        model = Log
        fields = "__all__"
    @staticmethod
    def get_ty_options_display_txt(obj):
        return str(obj)


class ReadChapterListSerializer(serializers.ModelSerializer):
    
    read = ReadCreateUpdateSerializer()

    key = serializers.CharField(source="pk")
    ty_options_display_txt = serializers.SerializerMethodField()

    class Meta:
        model = ReadChapter
        fields = "__all__"

    @staticmethod
    def get_ty_options_display_txt(obj):
        return str(obj)


class ReadChapterCreateUpdateSerializer(serializers.ModelSerializer):
    
    ty_options_display_txt = serializers.SerializerMethodField()
    class Meta:
        model = ReadChapter
        fields = "__all__"
    @staticmethod
    def get_ty_options_display_txt(obj):
        return str(obj)


class ReadChapterItemListSerializer(serializers.ModelSerializer):
    
    read_chapter = ReadChapterCreateUpdateSerializer()

    key = serializers.CharField(source="pk")
    ty_options_display_txt = serializers.SerializerMethodField()

    class Meta:
        model = ReadChapterItem
        fields = "__all__"

    @staticmethod
    def get_ty_options_display_txt(obj):
        return str(obj)


class ReadChapterItemCreateUpdateSerializer(serializers.ModelSerializer):
    
    ty_options_display_txt = serializers.SerializerMethodField()
    class Meta:
        model = ReadChapterItem
        fields = "__all__"
    @staticmethod
    def get_ty_options_display_txt(obj):
        return str(obj)


class RechargeListSerializer(serializers.ModelSerializer):
    
    action = RechargeActionCreateUpdateSerializer()
    way = RechargePayCreateUpdateSerializer()

    key = serializers.CharField(source="pk")
    ty_options_display_txt = serializers.SerializerMethodField()

    class Meta:
        model = Recharge
        fields = "__all__"

    @staticmethod
    def get_ty_options_display_txt(obj):
        return str(obj)


class RechargeCreateUpdateSerializer(serializers.ModelSerializer):
    
    ty_options_display_txt = serializers.SerializerMethodField()
    class Meta:
        model = Recharge
        fields = "__all__"
    @staticmethod
    def get_ty_options_display_txt(obj):
        return str(obj)


class StudentListSerializer(serializers.ModelSerializer):
    
    type = StudentTypeCreateUpdateSerializer()

    key = serializers.CharField(source="pk")
    ty_options_display_txt = serializers.SerializerMethodField()

    class Meta:
        model = Student
        fields = "__all__"

    @staticmethod
    def get_ty_options_display_txt(obj):
        return str(obj)


class StudentCreateUpdateSerializer(serializers.ModelSerializer):
    
    ty_options_display_txt = serializers.SerializerMethodField()
    class Meta:
        model = Student
        fields = "__all__"
    @staticmethod
    def get_ty_options_display_txt(obj):
        return str(obj)


class ReadListSerializer(serializers.ModelSerializer):
    
    author = TeacherCreateUpdateSerializer()

    key = serializers.CharField(source="pk")
    ty_options_display_txt = serializers.SerializerMethodField()

    class Meta:
        model = Read
        fields = "__all__"

    @staticmethod
    def get_ty_options_display_txt(obj):
        return str(obj)


class ReadCreateUpdateSerializer(serializers.ModelSerializer):
    
    ty_options_display_txt = serializers.SerializerMethodField()
    class Meta:
        model = Read
        fields = "__all__"
    @staticmethod
    def get_ty_options_display_txt(obj):
        return str(obj)


class ArticleListSerializer(serializers.ModelSerializer):
    
    type = ArticleTypeCreateUpdateSerializer()

    key = serializers.CharField(source="pk")
    ty_options_display_txt = serializers.SerializerMethodField()

    class Meta:
        model = Article
        fields = "__all__"

    @staticmethod
    def get_ty_options_display_txt(obj):
        return str(obj)


class ArticleCreateUpdateSerializer(serializers.ModelSerializer):
    
    ty_options_display_txt = serializers.SerializerMethodField()
    class Meta:
        model = Article
        fields = "__all__"
    @staticmethod
    def get_ty_options_display_txt(obj):
        return str(obj)


class QaListSerializer(serializers.ModelSerializer):
    
    type = QaTypeCreateUpdateSerializer()

    key = serializers.CharField(source="pk")
    ty_options_display_txt = serializers.SerializerMethodField()

    class Meta:
        model = Qa
        fields = "__all__"

    @staticmethod
    def get_ty_options_display_txt(obj):
        return str(obj)


class QaCreateUpdateSerializer(serializers.ModelSerializer):
    
    ty_options_display_txt = serializers.SerializerMethodField()
    class Meta:
        model = Qa
        fields = "__all__"
    @staticmethod
    def get_ty_options_display_txt(obj):
        return str(obj)


class UserNoticeListSerializer(serializers.ModelSerializer):
    
    messageid = NoticeCreateUpdateSerializer()

    key = serializers.CharField(source="pk")
    ty_options_display_txt = serializers.SerializerMethodField()

    class Meta:
        model = UserNotice
        fields = "__all__"

    @staticmethod
    def get_ty_options_display_txt(obj):
        return str(obj)


class UserNoticeCreateUpdateSerializer(serializers.ModelSerializer):
    
    ty_options_display_txt = serializers.SerializerMethodField()
    class Meta:
        model = UserNotice
        fields = "__all__"
    @staticmethod
    def get_ty_options_display_txt(obj):
        return str(obj)


class UserLessonListSerializer(serializers.ModelSerializer):
    
    type = LessonTypeCreateUpdateSerializer()

    key = serializers.CharField(source="pk")
    ty_options_display_txt = serializers.SerializerMethodField()

    class Meta:
        model = UserLesson
        fields = "__all__"

    @staticmethod
    def get_ty_options_display_txt(obj):
        return str(obj)


class UserLessonCreateUpdateSerializer(serializers.ModelSerializer):
    
    ty_options_display_txt = serializers.SerializerMethodField()
    class Meta:
        model = UserLesson
        fields = "__all__"
    @staticmethod
    def get_ty_options_display_txt(obj):
        return str(obj)


class LabelListSerializer(serializers.ModelSerializer):
    
    type = LabelTypeCreateUpdateSerializer()

    key = serializers.CharField(source="pk")
    ty_options_display_txt = serializers.SerializerMethodField()

    class Meta:
        model = Label
        fields = "__all__"

    @staticmethod
    def get_ty_options_display_txt(obj):
        return str(obj)


class LabelCreateUpdateSerializer(serializers.ModelSerializer):
    
    ty_options_display_txt = serializers.SerializerMethodField()
    class Meta:
        model = Label
        fields = "__all__"
    @staticmethod
    def get_ty_options_display_txt(obj):
        return str(obj)


class ChapterListSerializer(serializers.ModelSerializer):
    
    lesson = LessonCreateUpdateSerializer()

    key = serializers.CharField(source="pk")
    ty_options_display_txt = serializers.SerializerMethodField()

    class Meta:
        model = Chapter
        fields = "__all__"

    @staticmethod
    def get_ty_options_display_txt(obj):
        return str(obj)


class ChapterCreateUpdateSerializer(serializers.ModelSerializer):
    
    ty_options_display_txt = serializers.SerializerMethodField()
    class Meta:
        model = Chapter
        fields = "__all__"
    @staticmethod
    def get_ty_options_display_txt(obj):
        return str(obj)


class TermListSerializer(serializers.ModelSerializer):
    
    chapter = ChapterCreateUpdateSerializer()

    key = serializers.CharField(source="pk")
    ty_options_display_txt = serializers.SerializerMethodField()

    class Meta:
        model = Term
        fields = "__all__"

    @staticmethod
    def get_ty_options_display_txt(obj):
        return str(obj)


class TermCreateUpdateSerializer(serializers.ModelSerializer):
    
    ty_options_display_txt = serializers.SerializerMethodField()
    class Meta:
        model = Term
        fields = "__all__"
    @staticmethod
    def get_ty_options_display_txt(obj):
        return str(obj)
