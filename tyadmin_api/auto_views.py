
from rest_framework import viewsets
from tyadmin_api.custom import XadminViewSet
from django.contrib.auth.models import Permission, Group
from django.contrib.contenttypes.models import ContentType
from app_api.models import EmailVerifyRecord, OrderStatus, Order, OrderItem, CouponRange, CouponStatus, Coupon, IntegralType, Integral, Notice, LessonScript, Lesson, Question, Cart, Consult, User, Bill, Address, Catalog, LogType, Log, ReadType, ReadChapter, ReadChapterItem, Teacher, Comment, Hot, RechargeAction, RechargePay, Recharge, LabelFollow, Student, StudentType, Navigation, Read, Article, History, QaType, Answer, Qa, ArticleType, UserNotice, Slider, UserLesson, Nav, LabelType, LessonType, LessonHardType, Label, Footer, CommonPathConfig, Chapter, Term, SysLog

from tyadmin_api.auto_serializers import PermissionListSerializer, GroupListSerializer, ContentTypeListSerializer, EmailVerifyRecordListSerializer, OrderStatusListSerializer, OrderListSerializer, OrderItemListSerializer, CouponRangeListSerializer, CouponStatusListSerializer, CouponListSerializer, IntegralTypeListSerializer, IntegralListSerializer, NoticeListSerializer, LessonScriptListSerializer, LessonListSerializer, QuestionListSerializer, CartListSerializer, ConsultListSerializer, UserListSerializer, BillListSerializer, AddressListSerializer, CatalogListSerializer, LogTypeListSerializer, LogListSerializer, ReadTypeListSerializer, ReadChapterListSerializer, ReadChapterItemListSerializer, TeacherListSerializer, CommentListSerializer, HotListSerializer, RechargeActionListSerializer, RechargePayListSerializer, RechargeListSerializer, LabelFollowListSerializer, StudentListSerializer, StudentTypeListSerializer, NavigationListSerializer, ReadListSerializer, ArticleListSerializer, HistoryListSerializer, QaTypeListSerializer, AnswerListSerializer, QaListSerializer, ArticleTypeListSerializer, UserNoticeListSerializer, SliderListSerializer, UserLessonListSerializer, NavListSerializer, LabelTypeListSerializer, LessonTypeListSerializer, LessonHardTypeListSerializer, LabelListSerializer, FooterListSerializer, CommonPathConfigListSerializer, ChapterListSerializer, TermListSerializer, SysLogListSerializer
from tyadmin_api.auto_serializers import PermissionCreateUpdateSerializer, GroupCreateUpdateSerializer, ContentTypeCreateUpdateSerializer, EmailVerifyRecordCreateUpdateSerializer, OrderStatusCreateUpdateSerializer, OrderCreateUpdateSerializer, OrderItemCreateUpdateSerializer, CouponRangeCreateUpdateSerializer, CouponStatusCreateUpdateSerializer, CouponCreateUpdateSerializer, IntegralTypeCreateUpdateSerializer, IntegralCreateUpdateSerializer, NoticeCreateUpdateSerializer, LessonScriptCreateUpdateSerializer, LessonCreateUpdateSerializer, QuestionCreateUpdateSerializer, CartCreateUpdateSerializer, ConsultCreateUpdateSerializer, UserCreateUpdateSerializer, BillCreateUpdateSerializer, AddressCreateUpdateSerializer, CatalogCreateUpdateSerializer, LogTypeCreateUpdateSerializer, LogCreateUpdateSerializer, ReadTypeCreateUpdateSerializer, ReadChapterCreateUpdateSerializer, ReadChapterItemCreateUpdateSerializer, TeacherCreateUpdateSerializer, CommentCreateUpdateSerializer, HotCreateUpdateSerializer, RechargeActionCreateUpdateSerializer, RechargePayCreateUpdateSerializer, RechargeCreateUpdateSerializer, LabelFollowCreateUpdateSerializer, StudentCreateUpdateSerializer, StudentTypeCreateUpdateSerializer, NavigationCreateUpdateSerializer, ReadCreateUpdateSerializer, ArticleCreateUpdateSerializer, HistoryCreateUpdateSerializer, QaTypeCreateUpdateSerializer, AnswerCreateUpdateSerializer, QaCreateUpdateSerializer, ArticleTypeCreateUpdateSerializer, UserNoticeCreateUpdateSerializer, SliderCreateUpdateSerializer, UserLessonCreateUpdateSerializer, NavCreateUpdateSerializer, LabelTypeCreateUpdateSerializer, LessonTypeCreateUpdateSerializer, LessonHardTypeCreateUpdateSerializer, LabelCreateUpdateSerializer, FooterCreateUpdateSerializer, CommonPathConfigCreateUpdateSerializer, ChapterCreateUpdateSerializer, TermCreateUpdateSerializer, SysLogCreateUpdateSerializer
from tyadmin_api.auto_filters import PermissionFilter, GroupFilter, ContentTypeFilter, EmailVerifyRecordFilter, OrderStatusFilter, OrderFilter, OrderItemFilter, CouponRangeFilter, CouponStatusFilter, CouponFilter, IntegralTypeFilter, IntegralFilter, NoticeFilter, LessonScriptFilter, LessonFilter, QuestionFilter, CartFilter, ConsultFilter, UserFilter, BillFilter, AddressFilter, CatalogFilter, LogTypeFilter, LogFilter, ReadTypeFilter, ReadChapterFilter, ReadChapterItemFilter, TeacherFilter, CommentFilter, HotFilter, RechargeActionFilter, RechargePayFilter, RechargeFilter, LabelFollowFilter, StudentFilter, StudentTypeFilter, NavigationFilter, ReadFilter, ArticleFilter, HistoryFilter, QaTypeFilter, AnswerFilter, QaFilter, ArticleTypeFilter, UserNoticeFilter, SliderFilter, UserLessonFilter, NavFilter, LabelTypeFilter, LessonTypeFilter, LessonHardTypeFilter, LabelFilter, FooterFilter, CommonPathConfigFilter, ChapterFilter, TermFilter, SysLogFilter
    
    
class PermissionViewSet(XadminViewSet):
        serializer_class = PermissionListSerializer
        queryset = Permission.objects.all().order_by('-pk')
        filter_class = PermissionFilter
        search_fields = ["name","codename"]

        def get_serializer_class(self):
            if self.action == "list":
                return PermissionListSerializer
            else:
                return PermissionCreateUpdateSerializer

    
class GroupViewSet(XadminViewSet):
        serializer_class = GroupListSerializer
        queryset = Group.objects.all().order_by('-pk')
        filter_class = GroupFilter
        search_fields = ["name"]

        def get_serializer_class(self):
            if self.action == "list":
                return GroupListSerializer
            else:
                return GroupCreateUpdateSerializer

    
class ContentTypeViewSet(XadminViewSet):
        serializer_class = ContentTypeListSerializer
        queryset = ContentType.objects.all().order_by('-pk')
        filter_class = ContentTypeFilter
        search_fields = ["app_label","model"]

        def get_serializer_class(self):
            if self.action == "list":
                return ContentTypeListSerializer
            else:
                return ContentTypeCreateUpdateSerializer

    
class EmailVerifyRecordViewSet(XadminViewSet):
        serializer_class = EmailVerifyRecordListSerializer
        queryset = EmailVerifyRecord.objects.all().order_by('-pk')
        filter_class = EmailVerifyRecordFilter
        search_fields = ["code","email","send_type"]

        def get_serializer_class(self):
            if self.action == "list":
                return EmailVerifyRecordListSerializer
            else:
                return EmailVerifyRecordCreateUpdateSerializer

    
class OrderStatusViewSet(XadminViewSet):
        serializer_class = OrderStatusListSerializer
        queryset = OrderStatus.objects.all().order_by('-pk')
        filter_class = OrderStatusFilter
        search_fields = ["text"]

        def get_serializer_class(self):
            if self.action == "list":
                return OrderStatusListSerializer
            else:
                return OrderStatusCreateUpdateSerializer

    
class OrderViewSet(XadminViewSet):
        serializer_class = OrderListSerializer
        queryset = Order.objects.all().order_by('-pk')
        filter_class = OrderFilter
        search_fields = ["userid","code"]

        def get_serializer_class(self):
            if self.action == "list":
                return OrderListSerializer
            else:
                return OrderCreateUpdateSerializer

    
class OrderItemViewSet(XadminViewSet):
        serializer_class = OrderItemListSerializer
        queryset = OrderItem.objects.all().order_by('-pk')
        filter_class = OrderItemFilter
        search_fields = ["lessonid","title"]

        def get_serializer_class(self):
            if self.action == "list":
                return OrderItemListSerializer
            else:
                return OrderItemCreateUpdateSerializer

    
class CouponRangeViewSet(XadminViewSet):
        serializer_class = CouponRangeListSerializer
        queryset = CouponRange.objects.all().order_by('-pk')
        filter_class = CouponRangeFilter
        search_fields = ["text"]

        def get_serializer_class(self):
            if self.action == "list":
                return CouponRangeListSerializer
            else:
                return CouponRangeCreateUpdateSerializer

    
class CouponStatusViewSet(XadminViewSet):
        serializer_class = CouponStatusListSerializer
        queryset = CouponStatus.objects.all().order_by('-pk')
        filter_class = CouponStatusFilter
        search_fields = ["text"]

        def get_serializer_class(self):
            if self.action == "list":
                return CouponStatusListSerializer
            else:
                return CouponStatusCreateUpdateSerializer

    
class CouponViewSet(XadminViewSet):
        serializer_class = CouponListSerializer
        queryset = Coupon.objects.all().order_by('-pk')
        filter_class = CouponFilter
        search_fields = ["userid","orderid","usetime"]

        def get_serializer_class(self):
            if self.action == "list":
                return CouponListSerializer
            else:
                return CouponCreateUpdateSerializer

    
class IntegralTypeViewSet(XadminViewSet):
        serializer_class = IntegralTypeListSerializer
        queryset = IntegralType.objects.all().order_by('-pk')
        filter_class = IntegralTypeFilter
        search_fields = ["code","text"]

        def get_serializer_class(self):
            if self.action == "list":
                return IntegralTypeListSerializer
            else:
                return IntegralTypeCreateUpdateSerializer

    
class IntegralViewSet(XadminViewSet):
        serializer_class = IntegralListSerializer
        queryset = Integral.objects.all().order_by('-pk')
        filter_class = IntegralFilter
        search_fields = ["title"]

        def get_serializer_class(self):
            if self.action == "list":
                return IntegralListSerializer
            else:
                return IntegralCreateUpdateSerializer

    
class NoticeViewSet(XadminViewSet):
        serializer_class = NoticeListSerializer
        queryset = Notice.objects.all().order_by('-pk')
        filter_class = NoticeFilter
        search_fields = ["title"]

        def get_serializer_class(self):
            if self.action == "list":
                return NoticeListSerializer
            else:
                return NoticeCreateUpdateSerializer

    
class LessonScriptViewSet(XadminViewSet):
        serializer_class = LessonScriptListSerializer
        queryset = LessonScript.objects.all().order_by('-pk')
        filter_class = LessonScriptFilter
        search_fields = ["text"]

        def get_serializer_class(self):
            if self.action == "list":
                return LessonScriptListSerializer
            else:
                return LessonScriptCreateUpdateSerializer

    
class LessonViewSet(XadminViewSet):
        serializer_class = LessonListSerializer
        queryset = Lesson.objects.all().order_by('-pk')
        filter_class = LessonFilter
        search_fields = ["title","introduction"]

        def get_serializer_class(self):
            if self.action == "list":
                return LessonListSerializer
            else:
                return LessonCreateUpdateSerializer

    
class QuestionViewSet(XadminViewSet):
        serializer_class = QuestionListSerializer
        queryset = Question.objects.all().order_by('-pk')
        filter_class = QuestionFilter
        search_fields = ["title"]

        def get_serializer_class(self):
            if self.action == "list":
                return QuestionListSerializer
            else:
                return QuestionCreateUpdateSerializer

    
class CartViewSet(XadminViewSet):
        serializer_class = CartListSerializer
        queryset = Cart.objects.all().order_by('-pk')
        filter_class = CartFilter
        search_fields = ["userid","lessonid","title"]

        def get_serializer_class(self):
            if self.action == "list":
                return CartListSerializer
            else:
                return CartCreateUpdateSerializer

    
class ConsultViewSet(XadminViewSet):
        serializer_class = ConsultListSerializer
        queryset = Consult.objects.all().order_by('-pk')
        filter_class = ConsultFilter
        search_fields = ["userid","title","answer","course_name"]

        def get_serializer_class(self):
            if self.action == "list":
                return ConsultListSerializer
            else:
                return ConsultCreateUpdateSerializer

    
class UserViewSet(XadminViewSet):
        serializer_class = UserListSerializer
        queryset = User.objects.all().order_by('-pk')
        filter_class = UserFilter
        search_fields = ["password","username","first_name","last_name","nickname","sex","job","city","signature","email","qq","phone","wechat","weibo"]

        def get_serializer_class(self):
            if self.action == "list":
                return UserListSerializer
            else:
                return UserCreateUpdateSerializer

    
class BillViewSet(XadminViewSet):
        serializer_class = BillListSerializer
        queryset = Bill.objects.all().order_by('-pk')
        filter_class = BillFilter
        search_fields = ["userid","orderno","name","time"]

        def get_serializer_class(self):
            if self.action == "list":
                return BillListSerializer
            else:
                return BillCreateUpdateSerializer

    
class AddressViewSet(XadminViewSet):
        serializer_class = AddressListSerializer
        queryset = Address.objects.all().order_by('-pk')
        filter_class = AddressFilter
        search_fields = ["userid","name","phone","area","address","postcode"]

        def get_serializer_class(self):
            if self.action == "list":
                return AddressListSerializer
            else:
                return AddressCreateUpdateSerializer

    
class CatalogViewSet(XadminViewSet):
        serializer_class = CatalogListSerializer
        queryset = Catalog.objects.all().order_by('-pk')
        filter_class = CatalogFilter
        search_fields = ["lessonid","introduction"]

        def get_serializer_class(self):
            if self.action == "list":
                return CatalogListSerializer
            else:
                return CatalogCreateUpdateSerializer

    
class LogTypeViewSet(XadminViewSet):
        serializer_class = LogTypeListSerializer
        queryset = LogType.objects.all().order_by('-pk')
        filter_class = LogTypeFilter
        search_fields = ["text"]

        def get_serializer_class(self):
            if self.action == "list":
                return LogTypeListSerializer
            else:
                return LogTypeCreateUpdateSerializer

    
class LogViewSet(XadminViewSet):
        serializer_class = LogListSerializer
        queryset = Log.objects.all().order_by('-pk')
        filter_class = LogFilter
        search_fields = ["userid","time","ip","device","city"]

        def get_serializer_class(self):
            if self.action == "list":
                return LogListSerializer
            else:
                return LogCreateUpdateSerializer

    
class ReadTypeViewSet(XadminViewSet):
        serializer_class = ReadTypeListSerializer
        queryset = ReadType.objects.all().order_by('-pk')
        filter_class = ReadTypeFilter
        search_fields = ["value"]

        def get_serializer_class(self):
            if self.action == "list":
                return ReadTypeListSerializer
            else:
                return ReadTypeCreateUpdateSerializer

    
class ReadChapterViewSet(XadminViewSet):
        serializer_class = ReadChapterListSerializer
        queryset = ReadChapter.objects.all().order_by('-pk')
        filter_class = ReadChapterFilter
        search_fields = ["title"]

        def get_serializer_class(self):
            if self.action == "list":
                return ReadChapterListSerializer
            else:
                return ReadChapterCreateUpdateSerializer

    
class ReadChapterItemViewSet(XadminViewSet):
        serializer_class = ReadChapterItemListSerializer
        queryset = ReadChapterItem.objects.all().order_by('-pk')
        filter_class = ReadChapterItemFilter
        search_fields = ["title"]

        def get_serializer_class(self):
            if self.action == "list":
                return ReadChapterItemListSerializer
            else:
                return ReadChapterItemCreateUpdateSerializer

    
class TeacherViewSet(XadminViewSet):
        serializer_class = TeacherListSerializer
        queryset = Teacher.objects.all().order_by('-pk')
        filter_class = TeacherFilter
        search_fields = ["name","job","introduction"]

        def get_serializer_class(self):
            if self.action == "list":
                return TeacherListSerializer
            else:
                return TeacherCreateUpdateSerializer

    
class CommentViewSet(XadminViewSet):
        serializer_class = CommentListSerializer
        queryset = Comment.objects.all().order_by('-pk')
        filter_class = CommentFilter
        search_fields = ["lessonid","name","comment"]

        def get_serializer_class(self):
            if self.action == "list":
                return CommentListSerializer
            else:
                return CommentCreateUpdateSerializer

    
class HotViewSet(XadminViewSet):
        serializer_class = HotListSerializer
        queryset = Hot.objects.all().order_by('-pk')
        filter_class = HotFilter
        search_fields = ["value"]

        def get_serializer_class(self):
            if self.action == "list":
                return HotListSerializer
            else:
                return HotCreateUpdateSerializer

    
class RechargeActionViewSet(XadminViewSet):
        serializer_class = RechargeActionListSerializer
        queryset = RechargeAction.objects.all().order_by('-pk')
        filter_class = RechargeActionFilter
        search_fields = ["text"]

        def get_serializer_class(self):
            if self.action == "list":
                return RechargeActionListSerializer
            else:
                return RechargeActionCreateUpdateSerializer

    
class RechargePayViewSet(XadminViewSet):
        serializer_class = RechargePayListSerializer
        queryset = RechargePay.objects.all().order_by('-pk')
        filter_class = RechargePayFilter
        search_fields = ["text"]

        def get_serializer_class(self):
            if self.action == "list":
                return RechargePayListSerializer
            else:
                return RechargePayCreateUpdateSerializer

    
class RechargeViewSet(XadminViewSet):
        serializer_class = RechargeListSerializer
        queryset = Recharge.objects.all().order_by('-pk')
        filter_class = RechargeFilter
        search_fields = ["userid","remark"]

        def get_serializer_class(self):
            if self.action == "list":
                return RechargeListSerializer
            else:
                return RechargeCreateUpdateSerializer

    
class LabelFollowViewSet(XadminViewSet):
        serializer_class = LabelFollowListSerializer
        queryset = LabelFollow.objects.all().order_by('-pk')
        filter_class = LabelFollowFilter
        search_fields = ["title"]

        def get_serializer_class(self):
            if self.action == "list":
                return LabelFollowListSerializer
            else:
                return LabelFollowCreateUpdateSerializer

    
class StudentViewSet(XadminViewSet):
        serializer_class = StudentListSerializer
        queryset = Student.objects.all().order_by('-pk')
        filter_class = StudentFilter
        search_fields = ["name"]

        def get_serializer_class(self):
            if self.action == "list":
                return StudentListSerializer
            else:
                return StudentCreateUpdateSerializer

    
class StudentTypeViewSet(XadminViewSet):
        serializer_class = StudentTypeListSerializer
        queryset = StudentType.objects.all().order_by('-pk')
        filter_class = StudentTypeFilter
        search_fields = ["text"]

        def get_serializer_class(self):
            if self.action == "list":
                return StudentTypeListSerializer
            else:
                return StudentTypeCreateUpdateSerializer

    
class NavigationViewSet(XadminViewSet):
        serializer_class = NavigationListSerializer
        queryset = Navigation.objects.all().order_by('-pk')
        filter_class = NavigationFilter
        search_fields = ["title","code"]

        def get_serializer_class(self):
            if self.action == "list":
                return NavigationListSerializer
            else:
                return NavigationCreateUpdateSerializer

    
class ReadViewSet(XadminViewSet):
        serializer_class = ReadListSerializer
        queryset = Read.objects.all().order_by('-pk')
        filter_class = ReadFilter
        search_fields = ["type","title","desc"]

        def get_serializer_class(self):
            if self.action == "list":
                return ReadListSerializer
            else:
                return ReadCreateUpdateSerializer

    
class ArticleViewSet(XadminViewSet):
        serializer_class = ArticleListSerializer
        queryset = Article.objects.all().order_by('-pk')
        filter_class = ArticleFilter
        search_fields = ["title","author","tag","time"]

        def get_serializer_class(self):
            if self.action == "list":
                return ArticleListSerializer
            else:
                return ArticleCreateUpdateSerializer

    
class HistoryViewSet(XadminViewSet):
        serializer_class = HistoryListSerializer
        queryset = History.objects.all().order_by('-pk')
        filter_class = HistoryFilter
        search_fields = ["value"]

        def get_serializer_class(self):
            if self.action == "list":
                return HistoryListSerializer
            else:
                return HistoryCreateUpdateSerializer

    
class QaTypeViewSet(XadminViewSet):
        serializer_class = QaTypeListSerializer
        queryset = QaType.objects.all().order_by('-pk')
        filter_class = QaTypeFilter
        search_fields = ["text"]

        def get_serializer_class(self):
            if self.action == "list":
                return QaTypeListSerializer
            else:
                return QaTypeCreateUpdateSerializer

    
class AnswerViewSet(XadminViewSet):
        serializer_class = AnswerListSerializer
        queryset = Answer.objects.all().order_by('-pk')
        filter_class = AnswerFilter
        search_fields = ["user_name","content"]

        def get_serializer_class(self):
            if self.action == "list":
                return AnswerListSerializer
            else:
                return AnswerCreateUpdateSerializer

    
class QaViewSet(XadminViewSet):
        serializer_class = QaListSerializer
        queryset = Qa.objects.all().order_by('-pk')
        filter_class = QaFilter
        search_fields = ["lessonid","title","chapter","comment"]

        def get_serializer_class(self):
            if self.action == "list":
                return QaListSerializer
            else:
                return QaCreateUpdateSerializer

    
class ArticleTypeViewSet(XadminViewSet):
        serializer_class = ArticleTypeListSerializer
        queryset = ArticleType.objects.all().order_by('-pk')
        filter_class = ArticleTypeFilter
        search_fields = ["title"]

        def get_serializer_class(self):
            if self.action == "list":
                return ArticleTypeListSerializer
            else:
                return ArticleTypeCreateUpdateSerializer

    
class UserNoticeViewSet(XadminViewSet):
        serializer_class = UserNoticeListSerializer
        queryset = UserNotice.objects.all().order_by('-pk')
        filter_class = UserNoticeFilter
        search_fields = ["userid"]

        def get_serializer_class(self):
            if self.action == "list":
                return UserNoticeListSerializer
            else:
                return UserNoticeCreateUpdateSerializer

    
class SliderViewSet(XadminViewSet):
        serializer_class = SliderListSerializer
        queryset = Slider.objects.all().order_by('-pk')
        filter_class = SliderFilter
        search_fields = ["path"]

        def get_serializer_class(self):
            if self.action == "list":
                return SliderListSerializer
            else:
                return SliderCreateUpdateSerializer

    
class UserLessonViewSet(XadminViewSet):
        serializer_class = UserLessonListSerializer
        queryset = UserLesson.objects.all().order_by('-pk')
        filter_class = UserLessonFilter
        search_fields = ["userid","lessonid","title","lastChapter"]

        def get_serializer_class(self):
            if self.action == "list":
                return UserLessonListSerializer
            else:
                return UserLessonCreateUpdateSerializer

    
class NavViewSet(XadminViewSet):
        serializer_class = NavListSerializer
        queryset = Nav.objects.all().order_by('-pk')
        filter_class = NavFilter
        search_fields = ["title","path"]

        def get_serializer_class(self):
            if self.action == "list":
                return NavListSerializer
            else:
                return NavCreateUpdateSerializer

    
class LabelTypeViewSet(XadminViewSet):
        serializer_class = LabelTypeListSerializer
        queryset = LabelType.objects.all().order_by('-pk')
        filter_class = LabelTypeFilter
        search_fields = ["title"]

        def get_serializer_class(self):
            if self.action == "list":
                return LabelTypeListSerializer
            else:
                return LabelTypeCreateUpdateSerializer

    
class LessonTypeViewSet(XadminViewSet):
        serializer_class = LessonTypeListSerializer
        queryset = LessonType.objects.all().order_by('-pk')
        filter_class = LessonTypeFilter
        search_fields = ["code","text"]

        def get_serializer_class(self):
            if self.action == "list":
                return LessonTypeListSerializer
            else:
                return LessonTypeCreateUpdateSerializer

    
class LessonHardTypeViewSet(XadminViewSet):
        serializer_class = LessonHardTypeListSerializer
        queryset = LessonHardType.objects.all().order_by('-pk')
        filter_class = LessonHardTypeFilter
        search_fields = ["code","text"]

        def get_serializer_class(self):
            if self.action == "list":
                return LessonHardTypeListSerializer
            else:
                return LessonHardTypeCreateUpdateSerializer

    
class LabelViewSet(XadminViewSet):
        serializer_class = LabelListSerializer
        queryset = Label.objects.all().order_by('-pk')
        filter_class = LabelFilter
        search_fields = ["title"]

        def get_serializer_class(self):
            if self.action == "list":
                return LabelListSerializer
            else:
                return LabelCreateUpdateSerializer

    
class FooterViewSet(XadminViewSet):
        serializer_class = FooterListSerializer
        queryset = Footer.objects.all().order_by('-pk')
        filter_class = FooterFilter
        search_fields = ["title","url"]

        def get_serializer_class(self):
            if self.action == "list":
                return FooterListSerializer
            else:
                return FooterCreateUpdateSerializer

    
class CommonPathConfigViewSet(XadminViewSet):
        serializer_class = CommonPathConfigListSerializer
        queryset = CommonPathConfig.objects.all().order_by('-pk')
        filter_class = CommonPathConfigFilter
        search_fields = ["title","path","icon","type"]

        def get_serializer_class(self):
            if self.action == "list":
                return CommonPathConfigListSerializer
            else:
                return CommonPathConfigCreateUpdateSerializer

    
class ChapterViewSet(XadminViewSet):
        serializer_class = ChapterListSerializer
        queryset = Chapter.objects.all().order_by('-pk')
        filter_class = ChapterFilter
        search_fields = ["title","introduce"]

        def get_serializer_class(self):
            if self.action == "list":
                return ChapterListSerializer
            else:
                return ChapterCreateUpdateSerializer

    
class TermViewSet(XadminViewSet):
        serializer_class = TermListSerializer
        queryset = Term.objects.all().order_by('-pk')
        filter_class = TermFilter
        search_fields = ["title","path"]

        def get_serializer_class(self):
            if self.action == "list":
                return TermListSerializer
            else:
                return TermCreateUpdateSerializer

    
class SysLogViewSet(XadminViewSet):
        serializer_class = SysLogListSerializer
        queryset = SysLog.objects.all().order_by('-pk')
        filter_class = SysLogFilter
        search_fields = ["ip_addr","action_flag","log_type","user_name"]

        def get_serializer_class(self):
            if self.action == "list":
                return SysLogListSerializer
            else:
                return SysLogCreateUpdateSerializer
