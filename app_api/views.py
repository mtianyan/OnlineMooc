from django.contrib.auth import authenticate, login
from django.contrib.auth.hashers import make_password
from django.http import JsonResponse
from django_filters.rest_framework import DjangoFilterBackend
from rest_framework.filters import OrderingFilter
from rest_framework import viewsets, status
from rest_framework.decorators import action
from rest_framework.filters import SearchFilter
from rest_framework.renderers import BrowsableAPIRenderer
from rest_framework.response import Response
from rest_framework.views import APIView

from app_api.app_page import AppPageNumberPagination
from app_api.app_viewset import MyViewSet
from app_api.custom_render import MyJSONRenderer
from utils.utils import get_order_no
from app_api.models import Order, Coupon, Integral, Notice, Lesson, Question, Cart, User, Bill, Address, Catalog, Log, ReadType, Teacher, Comment, \
    Hot, Recharge, LabelFollow, Student, Navigation, Read, Article, History, Qa, ArticleType, UserNotice, Slider, UserLesson, Nav, LabelType, \
    IntegralType, Label, Footer, CommonPathConfig, Chapter, RechargePay, RechargeAction, OrderItem, OrderStatus, Consult
from app_api.serializers import OrderSerializer, CouponSerializer, IntegralSerializer, NoticeSerializer, LessonSerializer, QuestionSerializer, \
    CartSerializer, UserSerializer, BillSerializer, AddressSerializer, CatalogSerializer, LogSerializer, ReadTypeSerializer, TeacherSerializer, \
    CommentSerializer, HotSerializer, RechargeSerializer, LabelFollowSerializer, StudentSerializer, NavigationSerializer, ReadSerializer, \
    ArticleSerializer, HistorySerializer, QaSerializer, ArticleTypeSerializer, UserNoticeSerializer, SliderSerializer, UserLessonSerializer, \
    NavSerializer, LabelTypeSerializer, IntegralTypeSerializer, LabelSerializer, FooterSerializer, CommonPathConfigSerializer, LessonInfoSerializer, \
    ChapterSerializer, RechargeListSerializer, OrderInfoSerializer, OrderListSerializer, ConsultSerializer, ReadInfoSerializer
from app_api.filters import OrderFilter, CouponFilter, IntegralFilter, NoticeFilter, LessonFilter, QuestionFilter, CartFilter, UserFilter, BillFilter, \
    AddressFilter, CatalogFilter, LogFilter, ReadTypeFilter, TeacherFilter, CommentFilter, HotFilter, RechargeFilter, LabelFollowFilter, \
    StudentFilter, NavigationFilter, ReadFilter, ArticleFilter, HistoryFilter, QaFilter, ArticleTypeFilter, UserNoticeFilter, SliderFilter, \
    UserLessonFilter, NavFilter, LabelTypeFilter, IntegralTypeFilter, LabelFilter, FooterFilter, CommonPathConfigFilter, ConsultFilter


class ConsultViewSet(MyViewSet):
    serializer_class = ConsultSerializer
    queryset = Consult.objects.all()
    filter_class = ConsultFilter


class OrderViewSet(viewsets.ModelViewSet):
    renderer_classes = (MyJSONRenderer, BrowsableAPIRenderer)
    pagination_class = AppPageNumberPagination
    serializer_class = OrderSerializer
    queryset = Order.objects.all()
    filter_class = OrderFilter

    def get_serializer_class(self):
        if self.action == "list":
            return OrderListSerializer
        else:
            return OrderSerializer

    def list(self, request, *args, **kwargs):
        base_data = super().list(self, request, args, kwargs)
        return base_data

    def create(self, request, *args, **kwargs):
        # TODO 获取登录了的用户id
        self.request.data["userid"] = 1
        self.request.data["code"] = get_order_no()
        self.request.data["status"] = OrderStatus.objects.get(code="0").id
        order_base = super().create(request, args, kwargs)
        order_List = self.request.data["list"]
        add_list = []
        for one in order_List:
            del one["isCheck"]
            del one["userid"]
            del one["id"]
            add_list.append(OrderItem(**one, order_id=order_base.data["id"]))
        OrderItem.objects.bulk_create(add_list)
        return order_base

    @action(methods=['get'], detail=False, url_path="info/?")
    def info(self, request, pk=None):
        code = request.query_params["code"]
        order = Order.objects.get(code=code)
        return Response(OrderInfoSerializer(order).data)

    @action(methods=['post'], detail=False, url_path="pay/?")
    def pay(self, request, pk=None):
        order = Order.objects.get(code=request.data["code"])
        order.status = OrderStatus.objects.get(code="1")
        order.way = RechargePay.objects.get(code=request.data["way"])
        order.save()
        return Response(True)

    def destroy(self, request, *args, **kwargs):
        instance = self.get_object()
        self.perform_destroy(instance)
        return Response(status=status.HTTP_200_OK)

    @action(methods=['get'], detail=False, url_path="cancel/?")
    def cancel(self, request, pk=None):
        order_id = request.query_params["id"]
        order = Order.objects.get(id=order_id)
        order.status = OrderStatus.objects.get(code="2")
        order.save()
        return Response(True)


class CouponViewSet(MyViewSet):
    serializer_class = CouponSerializer
    queryset = Coupon.objects.all()
    filter_class = CouponFilter


class IntegralViewSet(MyViewSet):
    pagination_class = AppPageNumberPagination
    serializer_class = IntegralSerializer
    queryset = Integral.objects.all()
    filter_class = IntegralFilter


class NoticeViewSet(viewsets.ModelViewSet):
    pagination_class = AppPageNumberPagination
    renderer_classes = (MyJSONRenderer, BrowsableAPIRenderer)
    serializer_class = NoticeSerializer
    queryset = Notice.objects.all()
    filter_class = NoticeFilter

    def list(self, request, *args, **kwargs):
        queryset = self.filter_queryset(self.get_queryset())

        page = self.paginate_queryset(queryset)
        if page is not None:
            serializer = self.get_serializer(page, many=True)
            for one in serializer.data:
                one["isRead"] = UserNotice.objects.get(messageid=one["id"], userid=1).isRead
            return self.get_paginated_response(serializer.data)

        serializer = self.get_serializer(queryset, many=True)
        for one in serializer.data:
            one["isRead"] = UserNotice.objects.get(messageid=one["id"], userid=1).isRead
        return Response(serializer.data)

    @action(methods=['post'], detail=False, url_path="read/?")
    def read(self, request, pk=None):
        message_id = request.data["id"]
        # TODO 变为自己的id
        user_notice = UserNotice.objects.get(messageid=message_id, userid=1)
        user_notice.isRead = True
        user_notice.save()
        return Response(True)

    @action(methods=['post'], detail=False, url_path="read/all?")
    def readAll(self, request, pk=None):
        # TODO 变为自己的id
        UserNotice.objects.filter(userid=1).update(isRead=True)
        return Response(True)

    @action(methods=['get'], detail=False, url_path="read/not?")
    def readNot(self, request, pk=None):
        notice = UserNotice.objects.filter(userid=1, isRead=False).count()
        flag = False
        if notice != 0:
            flag = True
        return JsonResponse({
            "code": 0,
            "msg": "获取成功",
            "user": 1,
            "notice": notice,
            "data": flag
        })

    def destroy(self, request, *args, **kwargs):
        instance = self.get_object()
        self.perform_destroy(instance)
        return Response(status=status.HTTP_200_OK)


class LessonViewSet(MyViewSet):
    pagination_class = AppPageNumberPagination
    serializer_class = LessonSerializer
    queryset = Lesson.objects.all()
    filter_class = LessonFilter
    filter_backends = [DjangoFilterBackend, OrderingFilter, SearchFilter]
    ordering_fields = ('persons', 'time')

    @action(methods=['get'], detail=False, url_path="info/?")
    def info(self, request, pk=None):
        lesson_id = request.query_params["id"]
        base_data = LessonInfoSerializer(Lesson.objects.get(id=lesson_id)).data
        base_data["catalog"] = CatalogSerializer(Catalog.objects.get(lessonid=lesson_id)).data
        base_data["catalog"]["chapter"] = ChapterSerializer(Chapter.objects.filter(lesson_id=lesson_id), many=True).data
        return Response(base_data)

    @action(methods=['get'], detail=False, url_path="comment/?")
    def comment(self, request, pk=None):
        lesson_id = request.query_params["id"]
        base_data = CommentSerializer(Comment.objects.filter(lessonid=lesson_id), many=True).data
        return Response(base_data)

    @action(methods=['get'], detail=False, url_path="qa/?")
    def qa(self, request, pk=None):
        lesson_id = request.query_params["id"]
        try:
            code = request.query_params["code"]
            base_data = QaSerializer(Qa.objects.filter(lessonid=lesson_id, type__code=code), many=True).data
        except ValueError:
            base_data = QaSerializer(Qa.objects.filter(lessonid=lesson_id), many=True).data
        return Response(base_data)


class QuestionViewSet(viewsets.ModelViewSet):
    pagination_class = AppPageNumberPagination
    renderer_classes = (MyJSONRenderer, BrowsableAPIRenderer)
    serializer_class = QuestionSerializer
    queryset = Question.objects.all()
    filter_class = QuestionFilter


class CartViewSet(viewsets.ModelViewSet):
    pagination_class = None
    renderer_classes = (MyJSONRenderer, BrowsableAPIRenderer)
    serializer_class = CartSerializer
    queryset = Cart.objects.all()
    filter_class = CartFilter

    def create(self, request, *args, **kwargs):
        # TODO 获取登录了的用户id
        self.request.data["userid"] = 1
        self.request.data["lessonid"] = self.request.data["id"]
        return super().create(request, args, kwargs)

    def update(self, request, *args, **kwargs):
        # TODO 获取登录了的用户id
        self.request.data["userid"] = 1
        return super().update(request, args, kwargs)

    def destroy(self, request, *args, **kwargs):
        instance = self.get_object()
        self.perform_destroy(instance)
        return Response(status=status.HTTP_200_OK)


class UserViewSet(MyViewSet):
    serializer_class = UserSerializer
    queryset = User.objects.all()
    filter_class = UserFilter

    @action(methods=['get'], detail=False, url_path="info/?")
    def info(self, request, pk=None):
        # TODO: 修改为当前用户
        ret = UserSerializer(User.objects.get(id=1)).data
        del ret["password"]
        return Response(ret)

    @action(methods=['post'], detail=False, url_path="update/info/?")
    def update_info(self, request, pk=None):
        # TODO 获取登录后的用户
        user = User.objects.get(id=1)
        user.city = request.data["city"]
        user.job = request.data["job"]
        user.sex = request.data["sex"]
        user.signature = request.data["signature"]
        user.save()
        return Response(True)

    @action(methods=['post'], detail=False, url_path="update/binds/?")
    def update_binds(self, request, pk=None):
        # TODO 获取登录后的用户
        user = User.objects.get(id=1)
        user.email = request.data["email"]
        user.password = make_password(request.data["ckpassword"])
        user.phone = request.data["phone"]
        user.qq = request.data["qq"]
        user.wechat = request.data["wechat"]
        user.save()
        return Response(True)

    @action(methods=['post'], detail=False, url_path="register/?")
    def register(self, request, pk=None):
        username = request.data["username"]
        password = request.data["password"]
        user = User(username=username, password=make_password(password))
        user.save()
        return Response(True)

    @action(methods=['post'], detail=False, url_path="login/?")
    def login(self, request, pk=None):
        user = authenticate(request, username=request.data["username"], password=request.data["password"])
        if user is not None:
            login(request, user)
            return Response(UserSerializer(user).data)
        else:
            return JsonResponse({
                "code": -1,
                "msg": "登录失败"
            })


class BillViewSet(MyViewSet):
    pagination_class = AppPageNumberPagination
    serializer_class = BillSerializer
    queryset = Bill.objects.all()
    filter_class = BillFilter

    def list(self, request, *args, **kwargs):
        base_data = super().list(self, request, args, kwargs)
        all_recharge = Bill.objects.filter(userid=1)
        sum_total = 0
        for one in all_recharge:
            sum_total += one.cost
        base_data.data["count"] = sum_total // 100
        for one in base_data.data["list"]:
            one["cost"] = one["cost"] // 100
        return base_data


class AddressViewSet(viewsets.ModelViewSet):
    pagination_class = None
    renderer_classes = (MyJSONRenderer, BrowsableAPIRenderer)
    serializer_class = AddressSerializer
    queryset = Address.objects.all()
    filter_class = AddressFilter

    def create(self, request, *args, **kwargs):
        # TODO 获取登录了的用户id
        self.request.data["userid"] = 1
        return super(AddressViewSet, self).create(request, args, kwargs)

    def update(self, request, *args, **kwargs):
        # TODO 获取登录了的用户id
        self.request.data["userid"] = 1
        return super(AddressViewSet, self).update(request, args, kwargs)

    def destroy(self, request, *args, **kwargs):
        instance = self.get_object()
        self.perform_destroy(instance)
        return Response(status=status.HTTP_200_OK)

    @action(methods=['get'], detail=False, url_path="default/?")
    def default(self, request, pk=None):
        address_id = request.query_params["id"]
        address = Address.objects.get(pk=address_id)
        address.isDefault = True
        address.save()
        return Response(HotSerializer(Hot.objects.all(), many=True).data)


class ArticleViewSet(viewsets.ModelViewSet):
    pagination_class = AppPageNumberPagination
    renderer_classes = (MyJSONRenderer, BrowsableAPIRenderer)
    serializer_class = ArticleSerializer
    queryset = Article.objects.all()
    filter_class = ArticleFilter


class CatalogViewSet(MyViewSet):
    serializer_class = CatalogSerializer
    queryset = Catalog.objects.all()
    filter_class = CatalogFilter


class LogViewSet(MyViewSet):
    pagination_class = AppPageNumberPagination
    serializer_class = LogSerializer
    queryset = Log.objects.all()
    filter_class = LogFilter


class ReadTypeViewSet(MyViewSet):
    serializer_class = ReadTypeSerializer
    queryset = ReadType.objects.all()
    filter_class = ReadTypeFilter


class TeacherViewSet(MyViewSet):
    serializer_class = TeacherSerializer
    queryset = Teacher.objects.all()
    filter_class = TeacherFilter


class CommentViewSet(MyViewSet):
    serializer_class = CommentSerializer
    queryset = Comment.objects.all()
    filter_class = CommentFilter


class HotViewSet(MyViewSet):
    serializer_class = HotSerializer
    queryset = Hot.objects.all()
    filter_class = HotFilter


class RechargeViewSet(viewsets.ModelViewSet):
    pagination_class = AppPageNumberPagination
    serializer_class = RechargeSerializer
    renderer_classes = (MyJSONRenderer, BrowsableAPIRenderer)
    queryset = Recharge.objects.all()
    filter_class = RechargeFilter

    def get_serializer_class(self):
        if self.action == "list":
            return RechargeListSerializer
        else:
            return RechargeSerializer

    def create(self, request, *args, **kwargs):
        # TODO 获取登录了的用户id
        self.request.data["userid"] = 1
        if self.request.data["way"] == 1:
            self.request.data["remark"] = "微信充值"
        elif self.request.data["way"] == 0:
            self.request.data["remark"] = "支付宝充值"
        self.request.data["way"] = RechargePay.objects.get(code=self.request.data["way"]).id
        self.request.data["action"] = RechargeAction.objects.get(code="0").id
        self.request.data["money"] = self.request.data["money"] * 100
        return super().create(request, args, kwargs)

    def list(self, request, *args, **kwargs):
        base_data = super().list(self, request, args, kwargs)
        all_recharge = Recharge.objects.filter(userid=1)
        sum_total = 0
        for one in all_recharge:
            if one.action.code == 0:
                sum_total += one.money
            elif one.action.code == 1:
                sum_total -= one.money
        base_data.data["sum"] = sum_total // 100
        for one in base_data.data["list"]:
            one["money"] = one["money"] // 100
        return base_data

    @action(methods=['get'], detail=False, url_path="charge/?")
    def charge(self, request, pk=None):
        all_recharge = Recharge.objects.filter(userid=1)
        sum_total = 0
        for one in all_recharge:
            if one.action.code == "0":
                sum_total += one.money
            elif one.action.code == "1":
                sum_total -= one.money
        sum_total = sum_total // 100
        return Response(sum_total)


class LabelFollowViewSet(MyViewSet):
    serializer_class = LabelFollowSerializer
    queryset = LabelFollow.objects.all()
    filter_class = LabelFollowFilter


class StudentViewSet(MyViewSet):
    serializer_class = StudentSerializer
    queryset = Student.objects.all()
    filter_class = StudentFilter


class NavigationViewSet(MyViewSet):
    serializer_class = NavigationSerializer
    queryset = Navigation.objects.all()
    filter_class = NavigationFilter


class ReadViewSet(viewsets.ModelViewSet):
    pagination_class = AppPageNumberPagination
    renderer_classes = (MyJSONRenderer, BrowsableAPIRenderer)
    serializer_class = ReadSerializer
    queryset = Read.objects.all()
    filter_class = ReadFilter

    def get_serializer_class(self):
        if self.action == "retrieve":
            return ReadInfoSerializer
        else:
            return ReadSerializer

    @action(methods=['get'], detail=False, url_path="recommend/?")
    def recommend(self, request, pk=None):
        return Response(ReadSerializer(Read.objects.filter(isRecommend=True), many=True).data)


class HistoryViewSet(MyViewSet):
    serializer_class = HistorySerializer
    queryset = History.objects.all()
    filter_class = HistoryFilter


class QaViewSet(MyViewSet):
    serializer_class = QaSerializer
    queryset = Qa.objects.all()
    filter_class = QaFilter


class ArticleTypeViewSet(MyViewSet):
    serializer_class = ArticleTypeSerializer
    queryset = ArticleType.objects.all()
    filter_class = ArticleTypeFilter


class UserNoticeViewSet(MyViewSet):
    serializer_class = UserNoticeSerializer
    queryset = UserNotice.objects.all()
    filter_class = UserNoticeFilter


class SliderViewSet(MyViewSet):
    serializer_class = SliderSerializer
    queryset = Slider.objects.all()
    filter_class = SliderFilter


class UserLessonViewSet(MyViewSet):
    pagination_class = AppPageNumberPagination
    serializer_class = UserLessonSerializer
    queryset = UserLesson.objects.all()
    filter_class = UserLessonFilter


class NavViewSet(MyViewSet):
    serializer_class = NavSerializer
    queryset = Nav.objects.all()
    filter_class = NavFilter


class LabelTypeViewSet(MyViewSet):
    serializer_class = LabelTypeSerializer
    queryset = LabelType.objects.all()
    filter_class = LabelTypeFilter


class IntegralTypeViewSet(MyViewSet):
    serializer_class = IntegralTypeSerializer
    queryset = IntegralType.objects.all()
    filter_class = IntegralTypeFilter


class LabelViewSet(MyViewSet):
    serializer_class = LabelSerializer
    queryset = Label.objects.all()
    filter_class = LabelFilter

    @action(methods=['post'], detail=False, url_path="follow/?")
    def follow(self, request, pk=None):
        list = request.data["list"]
        add_list = []
        for one in list:
            # TODO 改为当前用户
            one_follow = LabelFollow(userid=1, title=one["title"], labelid=Label.objects.get(title=one["title"]).id)
            add_list.append(one_follow)
        LabelFollow.objects.bulk_create(add_list, ignore_conflicts=True)
        return Response(True)

    @action(methods=['get'], detail=False, url_path="follow/list?")
    def followList(self, request, pk=None):
        # TODO 只展示当前用户
        return JsonResponse({
            "code": 0,
            "msg": "success",
            "data": LabelFollowSerializer(LabelFollow.objects.all(), many=True).data
        })


class FooterViewSet(MyViewSet):
    serializer_class = FooterSerializer
    queryset = Footer.objects.all()
    filter_class = FooterFilter


class CommonPathConfigViewSet(MyViewSet):
    serializer_class = CommonPathConfigSerializer
    queryset = CommonPathConfig.objects.all()
    filter_class = CommonPathConfigFilter

    @action(methods=['get'], detail=False, url_path="nav/?")
    def nav(self, request, pk=None):
        query_dict = CommonPathConfig.objects.filter(type="h")
        return Response(CommonPathConfigSerializer(query_dict, many=True).data)

    @action(methods=['get'], detail=False, url_path="footer/?")
    def footer(self, request, pk=None):
        query_dict = CommonPathConfig.objects.filter(type="f")
        return Response(CommonPathConfigSerializer(query_dict, many=True).data)

    @action(methods=['get'], detail=False, url_path="hot/?")
    def hot(self, request, pk=None):
        return Response(HotSerializer(Hot.objects.all(), many=True).data)


class RecommendView(APIView):
    def get(self, request):
        return Response({
            "code": 0,
            "msg": "获取成功",
            "data": [
                {
                    "type": "topic",
                    "data": [
                        {
                            "topic": "【内推第2波】",
                            "title": " 打工奋斗7万落京户VS自主创业牧马城市，如何抉择？",
                            "img": "https://img.mukewang.com/5abc43e500012ec805120512.jpg",
                            "desc": "毕业求职？跳槽加薪？纠结滋润加班还是苦练x年自主创业？速速提问互撩，你在撩的极有可能就是你的Boss！激不激动？惊不惊喜？Offer已在这里！你的简历在哪里？Scott老师邮箱：wolf18387@qq.comJeson老师邮箱：jeson@imoocc.com"
                        },
                        {
                            "topic": "【获奖名单戳查看更多】",
                            "title": "当我们谈论Java时，我们都谈些什么？",
                            "img": "https://img.mukewang.com/5abaf07b00016b7005120512.jpg",
                            "desc": ""
                        },
                        {
                            "topic": "【内推第1波】",
                            "title": "直击BAT面试机会！行业大佬在线答疑",
                            "img": "https://img.mukewang.com/5aaf11ae0001d26c05120512.jpg",
                            "desc": ""
                        },
                        {
                            "topic": "【【花式填坑】第23期",
                            "title": "运维进化篇：成为Python DevOps工程师有哪些必备条件？",
                            "img": "https://img.mukewang.com/5a5d55de00015cba05120512.jpg",
                            "desc": ""
                        }
                    ]
                },
                {
                    "type": "article",
                    "title": "前端要不要学数据结构&算法",
                    "img": "https://img.mukewang.com/5c696fad000148dc08180526-210-130.jpg",
                    "desc": "我们都知道前端开发工程师更多偏向 DOM 渲染和 DOM 交互操作，随之 Node 的推广前端工程师也可以完成服务端开发。对于服务端开发而言大家都觉得数据结构和算法是基础，非学不可。所以正在进行 Node 开发的同学而言，这个答案跃然纸上。我们今天重点说一说纯前端开发的同学到底需不要数据结构与算法。我先说下结论：需要，非常需要。第一，只要是程序员，基本功都是数据结构与算法",
                    "scan": 17358,
                    "recommend": 66
                },
                {
                    "type": "question",
                    "title": "java好学吗.??pp",
                    "status": {
                        "text": "最赞回答",
                        "answer": "挺好的！"
                    },
                    "total": 272
                },
                {
                    "type": "article",
                    "title": "【前端学习路线升级版】看新手如何系统掌握前端技能",
                    "img": "https://img.mukewang.com/5c92209100019b0402500237-210-130.jpg",
                    "desc": "前端怎样入门？ 这一波良心推荐的【前端学习路线】干货，不谈虚的，直接来谈每个阶段要学习的内容 想入门前端的小伙伴们，那就放马过来吧！     首先，给大家分享一张最新的以 企业岗位需求为导向前端技能点图，如下 根据前端工程师技能点图，我们分为四个阶段： 第一阶段：前端基础 （HTML / CSS / HTML5 / CSS3 / JavaScript ） 干货文章： 初识HTML+CSS",
                    "scan": 20216,
                    "recommend": 192
                },
                {
                    "type": "question",
                    "title": "date.getMonth()+1 为什么获取月份要加1，而日期 年份 什么的没有",
                    "status": {
                        "text": "已采纳回答",
                        "answer": "月份范围是1-12月份对应的常量值 是0-11， 就像数组下标是从0开始不是从1开始。"
                    },
                    "total": 1
                },
                {
                    "type": "article",
                    "title": "【React学习路线】从零进阶前端核心工程师",
                    "img": "https://img.mukewang.com/5c4172810001941104400440-210-130.jpg",
                    "desc": "哈喽，良心推荐小慕又来跟大家分享啦，今天分享的是React~ 面向工资编程，前端核心框架、加薪神器React了解一下！ React毫无疑问是前端界主流的框架，而框架本身就是热点，可以说是前端工程师们能力提升、快速晋升高级开发工程师的必备技能。 还不知道如何入门？ 技术提升遇到瓶颈？ 别担心，下面小慕就跟大家详细聊一下React的学习路线，入门到进阶的秘籍都在这里啦！ 第一阶段：React快速入门",
                    "scan": 10419,
                    "recommend": 91
                },
                {
                    "type": "question",
                    "title": "【有奖问答】与大咖交流前端JS与框架开发，免费赢取前端图书（11.28-12.4）",
                    "status": {
                        "text": "最赞回答",
                        "answer": "我觉得不管学习哪门语言，到后面总还是要学习一下规范，程序员的素养必不可少啊！！"
                    },
                    "total": 156
                },
                {
                    "type": "article",
                    "title": "Vue倔强青铜-入门和组件化通信",
                    "img": "https://img.mukewang.com/5c8d186a00012f4109000383-210-130.jpg",
                    "desc": "原文链接 入门 作为前端最容易上手的框架，Vue入门其实没啥说的，我放一段清单的代码，大家能看懂就说明能上手了",
                    "scan": 8477,
                    "recommend": 30
                },
                {
                    "type": "question",
                    "title": "话说，大家想编程的最初初衷是什么",
                    "status": {
                        "text": "最赞回答",
                        "answer": "说兴趣的话有没有人打我...."
                    },
                    "total": 490
                },
                {
                    "type": "article",
                    "title": "【面试技巧系列】找工作、涨薪、跳槽都得来一份",
                    "img": "https://img.mukewang.com/5c6d07a000015abd02000198-210-130.jpg",
                    "desc": "面试是程序员求职过程中最重要的一步 别以为面试技巧很虚 很多技术不错的人 恰恰输在了面试技巧上 知识点怎么复习、问题如何回答 怎么在面试时避免采坑、惊艳面试官 怎么与HR谈论薪资待遇…… 往往这些问题决定你能否成功应聘。 敲黑板划重点： 以下面试技巧神器你值得拥有！ 大量干货文章袭来预警~ 一、通用篇 干货文章： 聪明人喜欢这样写简历 如何有效地备战面试 【程序员】在面",
                    "scan": 21665,
                    "recommend": 115
                },
                {
                    "type": "question",
                    "title": "各位猿或者媛，一般几点睡啊。有时忍住头痛看java到很晚，第二天就头痛一整天",
                    "status": {
                        "text": "已采纳回答",
                        "answer": "没有什么事情是需要熬夜完成的"
                    },
                    "total": 335
                },
                {
                    "type": "article",
                    "title": "【干货推荐】java工程师从零进阶，大牛带你轻松上路",
                    "img": "https://img.mukewang.com/5c35b57c0001d18302430269-210-130.jpg",
                    "desc": "java新手不知如何入门？ 经验多却面临上升瓶颈期？ 想进阶高级工程师还差点火候？ 今天这波最实用的java实战之路 以战养兵 为你打通职业发展脉络 沿着Java大牛们的思路， 逐步成长为一名业务与思想同样优秀的Java开发者。 就业、晋升、管理均游刃有余！ 不多说了，上干货！ 阅读指南：本文专为Java开发行业人员设计，分为四个阶段，循序渐进的带你进行SSM框架、SpringBoot框架、微服务",
                    "scan": 23549,
                    "recommend": 147
                },
                {
                    "type": "question",
                    "title": "date.getMonth()+1 为什么获取月份要加1，而日期 年份 什么的没有",
                    "status": {
                        "text": "已采纳回答",
                        "answer": "月份范围是1-12月份对应的常量值 是0-11， 就像数组下标是从0开始不是从1开始。"
                    },
                    "total": 1
                }
            ]
        })
