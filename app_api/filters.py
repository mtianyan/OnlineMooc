from django_filters import rest_framework as filters

from app_api.models import Order, Coupon, Integral, Notice, Lesson, Question, Cart, User, Bill, Address, Catalog, Log, ReadType, Teacher, Comment, \
    Hot, Recharge, LabelFollow, Student, Navigation, Read, Article, History, Qa, ArticleType, UserNotice, Slider, UserLesson, Nav, LabelType, \
    IntegralType, Label, Footer, CommonPathConfig, Consult


class ConsultFilter(filters.FilterSet):
    class Meta:
        model = Consult
        fields = "__all__"


class OrderFilter(filters.FilterSet):
    status = filters.NumberFilter(field_name="status__code")

    class Meta:
        model = Order
        fields = "__all__"


class CouponFilter(filters.FilterSet):
    status = filters.NumberFilter(field_name="status__code")

    class Meta:
        model = Coupon
        fields = "__all__"


class IntegralFilter(filters.FilterSet):
    type = filters.NumberFilter(field_name="type__code")
    integral = filters.RangeFilter()

    class Meta:
        model = Integral
        exclude = ['img']


class NoticeFilter(filters.FilterSet):
    class Meta:
        model = Notice
        fields = "__all__"


class LessonFilter(filters.FilterSet):
    category = filters.NumberFilter(field_name="category__code")
    type = filters.NumberFilter(field_name="type__code")
    label = filters.CharFilter(field_name="labels__title")

    class Meta:
        model = Lesson
        exclude = ["img", "banner"]


class QuestionFilter(filters.FilterSet):
    label = filters.CharFilter(field_name="tags__title")

    class Meta:
        model = Question
        exclude = ["icon"]


class CartFilter(filters.FilterSet):
    class Meta:
        model = Cart
        exclude = ["img"]


class UserFilter(filters.FilterSet):
    class Meta:
        model = User
        exclude = ["avatar"]


class BillFilter(filters.FilterSet):
    class Meta:
        model = Bill
        fields = "__all__"


class AddressFilter(filters.FilterSet):
    class Meta:
        model = Address
        fields = "__all__"


class CatalogFilter(filters.FilterSet):
    class Meta:
        model = Catalog
        fields = "__all__"


class LogFilter(filters.FilterSet):
    class Meta:
        model = Log
        fields = "__all__"


class ReadTypeFilter(filters.FilterSet):
    class Meta:
        model = ReadType
        exclude = ["img", "detailImg"]


class TeacherFilter(filters.FilterSet):
    class Meta:
        model = Teacher
        exclude = ["avatar"]


class CommentFilter(filters.FilterSet):
    class Meta:
        model = Comment
        exclude = ["avatar"]


class HotFilter(filters.FilterSet):
    class Meta:
        model = Hot
        fields = "__all__"


class RechargeFilter(filters.FilterSet):
    class Meta:
        model = Recharge
        fields = "__all__"


class LabelFollowFilter(filters.FilterSet):
    class Meta:
        model = LabelFollow
        fields = "__all__"


class StudentFilter(filters.FilterSet):
    class Meta:
        model = Student
        exclude = ["avatar"]


class NavigationFilter(filters.FilterSet):
    class Meta:
        model = Navigation
        fields = "__all__"


class ReadFilter(filters.FilterSet):
    class Meta:
        model = Read
        exclude = ["img", "detailImg"]


class ArticleFilter(filters.FilterSet):
    code = filters.NumberFilter(field_name="type__code")

    class Meta:
        model = Article
        exclude = ["img"]


class HistoryFilter(filters.FilterSet):
    class Meta:
        model = History
        fields = "__all__"


class QaFilter(filters.FilterSet):
    class Meta:
        model = Qa
        exclude = ["avatar"]


class ArticleTypeFilter(filters.FilterSet):
    class Meta:
        model = ArticleType
        exclude = ["img"]


class UserNoticeFilter(filters.FilterSet):
    class Meta:
        model = UserNotice
        fields = "__all__"


class SliderFilter(filters.FilterSet):
    class Meta:
        model = Slider
        exclude = ["img"]


class UserLessonFilter(filters.FilterSet):
    type = filters.NumberFilter(field_name="type__code")

    class Meta:
        model = UserLesson
        exclude = ["img"]


class NavFilter(filters.FilterSet):
    class Meta:
        model = Nav
        exclude = ["icon"]


class LabelTypeFilter(filters.FilterSet):
    class Meta:
        model = LabelType
        fields = "__all__"


class IntegralTypeFilter(filters.FilterSet):
    class Meta:
        model = IntegralType
        fields = "__all__"


class LabelFilter(filters.FilterSet):
    class Meta:
        model = Label
        fields = "__all__"


class FooterFilter(filters.FilterSet):
    class Meta:
        model = Footer
        fields = "__all__"


class CommonPathConfigFilter(filters.FilterSet):
    class Meta:
        model = CommonPathConfig
        fields = "__all__"
