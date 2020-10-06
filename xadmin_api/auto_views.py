from rest_framework import viewsets
from xadmin_api.custom import XadminViewSet
from app_api.models import EmailVerifyRecord, OrderStatus, Order, OrderItem, CouponRange, CouponStatus, Coupon, IntegralType, Integral, Notice, \
    LessonScript, Lesson, Question, Cart, Consult, User, Bill, Address, Catalog, LogType, Log, ReadType, ReadChapter, ReadChapterItem, Teacher, \
    Comment, Hot, RechargeAction, RechargePay, Recharge, LabelFollow, Student, StudentType, Navigation, Read, Article, History, QaType, Answer, Qa, \
    ArticleType, UserNotice, Slider, UserLesson, Nav, LabelType, LessonType, LessonHardType, Label, Footer, CommonPathConfig, Chapter, Term, SysLog

from xadmin_api.auto_serializers import EmailVerifyRecordSerializer, OrderStatusSerializer, OrderSerializer, OrderItemSerializer, \
    CouponRangeSerializer, CouponStatusSerializer, CouponSerializer, IntegralTypeSerializer, IntegralSerializer, NoticeSerializer, \
    LessonScriptSerializer, LessonSerializer, QuestionSerializer, CartSerializer, ConsultSerializer, UserSerializer, BillSerializer, \
    AddressSerializer, CatalogSerializer, LogTypeSerializer, LogSerializer, ReadTypeSerializer, ReadChapterSerializer, ReadChapterItemSerializer, \
    TeacherSerializer, CommentSerializer, HotSerializer, RechargeActionSerializer, RechargePaySerializer, RechargeSerializer, LabelFollowSerializer, \
    StudentSerializer, StudentTypeSerializer, NavigationSerializer, ReadSerializer, ArticleSerializer, HistorySerializer, QaTypeSerializer, \
    AnswerSerializer, QaSerializer, ArticleTypeSerializer, UserNoticeSerializer, SliderSerializer, UserLessonSerializer, NavSerializer, \
    LabelTypeSerializer, LessonTypeSerializer, LessonHardTypeSerializer, LabelSerializer, FooterSerializer, CommonPathConfigSerializer, \
    ChapterSerializer, TermSerializer, SysLogSerializer
from xadmin_api.auto_filters import EmailVerifyRecordFilter, OrderStatusFilter, OrderFilter, OrderItemFilter, CouponRangeFilter, CouponStatusFilter, \
    CouponFilter, IntegralTypeFilter, IntegralFilter, NoticeFilter, LessonScriptFilter, LessonFilter, QuestionFilter, CartFilter, ConsultFilter, \
    UserFilter, BillFilter, AddressFilter, CatalogFilter, LogTypeFilter, LogFilter, ReadTypeFilter, ReadChapterFilter, ReadChapterItemFilter, \
    TeacherFilter, CommentFilter, HotFilter, RechargeActionFilter, RechargePayFilter, RechargeFilter, LabelFollowFilter, StudentFilter, \
    StudentTypeFilter, NavigationFilter, ReadFilter, ArticleFilter, HistoryFilter, QaTypeFilter, AnswerFilter, QaFilter, ArticleTypeFilter, \
    UserNoticeFilter, SliderFilter, UserLessonFilter, NavFilter, LabelTypeFilter, LessonTypeFilter, LessonHardTypeFilter, LabelFilter, FooterFilter, \
    CommonPathConfigFilter, ChapterFilter, TermFilter, SysLogFilter


class EmailVerifyRecordViewSet(XadminViewSet):
    serializer_class = EmailVerifyRecordSerializer
    queryset = EmailVerifyRecord.objects.all()
    filter_class = EmailVerifyRecordFilter
    search_fields = ["code", "email", "send_type"]


class OrderStatusViewSet(XadminViewSet):
    serializer_class = OrderStatusSerializer
    queryset = OrderStatus.objects.all()
    filter_class = OrderStatusFilter
    search_fields = ["text"]


class OrderViewSet(XadminViewSet):
    serializer_class = OrderSerializer
    queryset = Order.objects.all()
    filter_class = OrderFilter
    search_fields = ["userid", "code"]


class OrderItemViewSet(XadminViewSet):
    serializer_class = OrderItemSerializer
    queryset = OrderItem.objects.all()
    filter_class = OrderItemFilter
    search_fields = ["lessonid", "title"]


class CouponRangeViewSet(XadminViewSet):
    serializer_class = CouponRangeSerializer
    queryset = CouponRange.objects.all()
    filter_class = CouponRangeFilter
    search_fields = ["text"]


class CouponStatusViewSet(XadminViewSet):
    serializer_class = CouponStatusSerializer
    queryset = CouponStatus.objects.all()
    filter_class = CouponStatusFilter
    search_fields = ["text"]


class CouponViewSet(XadminViewSet):
    serializer_class = CouponSerializer
    queryset = Coupon.objects.all()
    filter_class = CouponFilter
    search_fields = ["userid", "orderid", "usetime"]


class IntegralTypeViewSet(XadminViewSet):
    serializer_class = IntegralTypeSerializer
    queryset = IntegralType.objects.all()
    filter_class = IntegralTypeFilter
    search_fields = ["code", "text"]


class IntegralViewSet(XadminViewSet):
    serializer_class = IntegralSerializer
    queryset = Integral.objects.all()
    filter_class = IntegralFilter
    search_fields = ["title"]


class NoticeViewSet(XadminViewSet):
    serializer_class = NoticeSerializer
    queryset = Notice.objects.all()
    filter_class = NoticeFilter
    search_fields = ["title"]


class LessonScriptViewSet(XadminViewSet):
    serializer_class = LessonScriptSerializer
    queryset = LessonScript.objects.all()
    filter_class = LessonScriptFilter
    search_fields = ["text"]


class LessonViewSet(XadminViewSet):
    serializer_class = LessonSerializer
    queryset = Lesson.objects.all()
    filter_class = LessonFilter
    search_fields = ["title", "introduction"]


class QuestionViewSet(XadminViewSet):
    serializer_class = QuestionSerializer
    queryset = Question.objects.all()
    filter_class = QuestionFilter
    search_fields = ["title"]


class CartViewSet(XadminViewSet):
    serializer_class = CartSerializer
    queryset = Cart.objects.all()
    filter_class = CartFilter
    search_fields = ["userid", "lessonid", "title"]


class ConsultViewSet(XadminViewSet):
    serializer_class = ConsultSerializer
    queryset = Consult.objects.all()
    filter_class = ConsultFilter
    search_fields = ["title", "answer", "course_name"]


class UserViewSet(XadminViewSet):
    serializer_class = UserSerializer
    queryset = User.objects.all()
    filter_class = UserFilter
    search_fields = ["username", "password", "nickname", "sex", "job", "city", "signature", "email", "qq", "phone", "wechat", "weibo"]


class BillViewSet(XadminViewSet):
    serializer_class = BillSerializer
    queryset = Bill.objects.all()
    filter_class = BillFilter
    search_fields = ["userid", "orderno", "name", "time"]


class AddressViewSet(XadminViewSet):
    serializer_class = AddressSerializer
    queryset = Address.objects.all()
    filter_class = AddressFilter
    search_fields = ["userid", "name", "phone", "area", "address", "postcode"]


class CatalogViewSet(XadminViewSet):
    serializer_class = CatalogSerializer
    queryset = Catalog.objects.all()
    filter_class = CatalogFilter
    search_fields = ["lessonid", "introduction"]


class LogTypeViewSet(XadminViewSet):
    serializer_class = LogTypeSerializer
    queryset = LogType.objects.all()
    filter_class = LogTypeFilter
    search_fields = ["text"]


class LogViewSet(XadminViewSet):
    serializer_class = LogSerializer
    queryset = Log.objects.all()
    filter_class = LogFilter
    search_fields = ["userid", "time", "ip", "device", "city"]


class ReadTypeViewSet(XadminViewSet):
    serializer_class = ReadTypeSerializer
    queryset = ReadType.objects.all()
    filter_class = ReadTypeFilter
    search_fields = ["value"]


class ReadChapterViewSet(XadminViewSet):
    serializer_class = ReadChapterSerializer
    queryset = ReadChapter.objects.all()
    filter_class = ReadChapterFilter
    search_fields = ["title"]


class ReadChapterItemViewSet(XadminViewSet):
    serializer_class = ReadChapterItemSerializer
    queryset = ReadChapterItem.objects.all()
    filter_class = ReadChapterItemFilter
    search_fields = ["title"]


class TeacherViewSet(XadminViewSet):
    serializer_class = TeacherSerializer
    queryset = Teacher.objects.all()
    filter_class = TeacherFilter
    search_fields = ["name", "job", "introduction"]


class CommentViewSet(XadminViewSet):
    serializer_class = CommentSerializer
    queryset = Comment.objects.all()
    filter_class = CommentFilter
    search_fields = ["lessonid", "name", "comment"]


class HotViewSet(XadminViewSet):
    serializer_class = HotSerializer
    queryset = Hot.objects.all()
    filter_class = HotFilter
    search_fields = ["value"]


class RechargeActionViewSet(XadminViewSet):
    serializer_class = RechargeActionSerializer
    queryset = RechargeAction.objects.all()
    filter_class = RechargeActionFilter
    search_fields = ["text"]


class RechargePayViewSet(XadminViewSet):
    serializer_class = RechargePaySerializer
    queryset = RechargePay.objects.all()
    filter_class = RechargePayFilter
    search_fields = ["text"]


class RechargeViewSet(XadminViewSet):
    serializer_class = RechargeSerializer
    queryset = Recharge.objects.all()
    filter_class = RechargeFilter
    search_fields = ["userid", "remark"]


class LabelFollowViewSet(XadminViewSet):
    serializer_class = LabelFollowSerializer
    queryset = LabelFollow.objects.all()
    filter_class = LabelFollowFilter
    search_fields = ["title"]


class StudentViewSet(XadminViewSet):
    serializer_class = StudentSerializer
    queryset = Student.objects.all()
    filter_class = StudentFilter
    search_fields = ["name"]


class StudentTypeViewSet(XadminViewSet):
    serializer_class = StudentTypeSerializer
    queryset = StudentType.objects.all()
    filter_class = StudentTypeFilter
    search_fields = ["text"]


class NavigationViewSet(XadminViewSet):
    serializer_class = NavigationSerializer
    queryset = Navigation.objects.all()
    filter_class = NavigationFilter
    search_fields = ["title", "code"]


class ReadViewSet(XadminViewSet):
    serializer_class = ReadSerializer
    queryset = Read.objects.all()
    filter_class = ReadFilter
    search_fields = ["type", "title", "desc"]


class ArticleViewSet(XadminViewSet):
    serializer_class = ArticleSerializer
    queryset = Article.objects.all()
    filter_class = ArticleFilter
    search_fields = ["title", "author", "tag", "time"]


class HistoryViewSet(XadminViewSet):
    serializer_class = HistorySerializer
    queryset = History.objects.all()
    filter_class = HistoryFilter
    search_fields = ["value"]


class QaTypeViewSet(XadminViewSet):
    serializer_class = QaTypeSerializer
    queryset = QaType.objects.all()
    filter_class = QaTypeFilter
    search_fields = ["text"]


class AnswerViewSet(XadminViewSet):
    serializer_class = AnswerSerializer
    queryset = Answer.objects.all()
    filter_class = AnswerFilter
    search_fields = ["user_name", "content"]


class QaViewSet(XadminViewSet):
    serializer_class = QaSerializer
    queryset = Qa.objects.all()
    filter_class = QaFilter
    search_fields = ["lessonid", "title", "chapter", "comment"]


class ArticleTypeViewSet(XadminViewSet):
    serializer_class = ArticleTypeSerializer
    queryset = ArticleType.objects.all()
    filter_class = ArticleTypeFilter
    search_fields = ["title"]


class UserNoticeViewSet(XadminViewSet):
    serializer_class = UserNoticeSerializer
    queryset = UserNotice.objects.all()
    filter_class = UserNoticeFilter
    search_fields = ["userid"]


class SliderViewSet(XadminViewSet):
    serializer_class = SliderSerializer
    queryset = Slider.objects.all()
    filter_class = SliderFilter
    search_fields = ["path"]


class UserLessonViewSet(XadminViewSet):
    serializer_class = UserLessonSerializer
    queryset = UserLesson.objects.all()
    filter_class = UserLessonFilter
    search_fields = ["userid", "lessonid", "title", "lastChapter"]


class NavViewSet(XadminViewSet):
    serializer_class = NavSerializer
    queryset = Nav.objects.all()
    filter_class = NavFilter
    search_fields = ["title", "path"]


class LabelTypeViewSet(XadminViewSet):
    serializer_class = LabelTypeSerializer
    queryset = LabelType.objects.all()
    filter_class = LabelTypeFilter
    search_fields = ["title"]


class LessonTypeViewSet(XadminViewSet):
    serializer_class = LessonTypeSerializer
    queryset = LessonType.objects.all()
    filter_class = LessonTypeFilter
    search_fields = ["code", "text"]


class LessonHardTypeViewSet(XadminViewSet):
    serializer_class = LessonHardTypeSerializer
    queryset = LessonHardType.objects.all()
    filter_class = LessonHardTypeFilter
    search_fields = ["code", "text"]


class LabelViewSet(XadminViewSet):
    serializer_class = LabelSerializer
    queryset = Label.objects.all()
    filter_class = LabelFilter
    search_fields = ["title"]


class FooterViewSet(XadminViewSet):
    serializer_class = FooterSerializer
    queryset = Footer.objects.all()
    filter_class = FooterFilter
    search_fields = ["title", "url"]


class CommonPathConfigViewSet(XadminViewSet):
    serializer_class = CommonPathConfigSerializer
    queryset = CommonPathConfig.objects.all()
    filter_class = CommonPathConfigFilter
    search_fields = ["title", "path", "icon", "type"]


class ChapterViewSet(XadminViewSet):
    serializer_class = ChapterSerializer
    queryset = Chapter.objects.all()
    filter_class = ChapterFilter
    search_fields = ["title", "introduce"]


class TermViewSet(XadminViewSet):
    serializer_class = TermSerializer
    queryset = Term.objects.all()
    filter_class = TermFilter
    search_fields = ["title", "path"]


class SysLogViewSet(XadminViewSet):
    serializer_class = SysLogSerializer
    queryset = SysLog.objects.all()
    filter_class = SysLogFilter
    search_fields = ["ip_addr", "action_flag", "log_type", "user_name"]
