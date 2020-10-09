import json
import os

from django.conf import settings
from django.contrib.auth import authenticate, login, logout
from django.contrib.auth.hashers import make_password
from django.db.models import Q
from django.http import JsonResponse
from django_filters.rest_framework import DjangoFilterBackend
from rest_framework.filters import OrderingFilter
from rest_framework import viewsets, status
from rest_framework.decorators import action
from rest_framework.filters import SearchFilter
from rest_framework.permissions import IsAuthenticated
from rest_framework.renderers import BrowsableAPIRenderer
from rest_framework.response import Response
from rest_framework.views import APIView

from app_api.app_page import AppPageNumberPagination
from app_api.app_viewset import MyViewSet
from app_api.custom_render import MyJSONRenderer
from utils.log_utils import login_log_save
from utils.utils import get_order_no, log_save
from app_api.models import Order, Coupon, Integral, Notice, Lesson, Question, Cart, User, Bill, Address, Catalog, Log, ReadType, Teacher, Comment, \
    Hot, Recharge, LabelFollow, Student, Navigation, Read, Article, History, Qa, ArticleType, UserNotice, Slider, UserLesson, Nav, LabelType, \
    IntegralType, Label, Footer, CommonPathConfig, Chapter, RechargePay, RechargeAction, OrderItem, OrderStatus, Consult
from app_api.serializers import OrderSerializer, CouponSerializer, IntegralSerializer, NoticeSerializer, LessonSerializer, QuestionSerializer, \
    CartSerializer, UserSerializer, BillSerializer, AddressSerializer, CatalogSerializer, LogSerializer, ReadTypeSerializer, TeacherSerializer, \
    CommentSerializer, HotSerializer, RechargeSerializer, LabelFollowSerializer, StudentSerializer, NavigationSerializer, ReadSerializer, \
    ArticleSerializer, HistorySerializer, QaSerializer, ArticleTypeSerializer, UserNoticeSerializer, SliderSerializer, UserLessonSerializer, \
    NavSerializer, LabelTypeSerializer, IntegralTypeSerializer, LabelSerializer, FooterSerializer, CommonPathConfigSerializer, LessonInfoSerializer, \
    ChapterSerializer, RechargeListSerializer, OrderInfoSerializer, OrderListSerializer, ConsultSerializer, ReadInfoSerializer, \
    LabelTypeHomeSerializer
from app_api.filters import OrderFilter, CouponFilter, IntegralFilter, NoticeFilter, LessonFilter, QuestionFilter, CartFilter, UserFilter, BillFilter, \
    AddressFilter, CatalogFilter, LogFilter, ReadTypeFilter, TeacherFilter, CommentFilter, HotFilter, RechargeFilter, LabelFollowFilter, \
    StudentFilter, NavigationFilter, ReadFilter, ArticleFilter, HistoryFilter, QaFilter, ArticleTypeFilter, UserNoticeFilter, SliderFilter, \
    UserLessonFilter, NavFilter, LabelTypeFilter, IntegralTypeFilter, LabelFilter, FooterFilter, CommonPathConfigFilter, ConsultFilter


class ConsultViewSet(MyViewSet):
    serializer_class = ConsultSerializer
    queryset = Consult.objects.all()
    filter_class = ConsultFilter
    permission_classes = [IsAuthenticated, ]

    def get_queryset(self):
        return Consult.objects.filter(userid=self.request.user.id)


class OrderViewSet(viewsets.ModelViewSet):
    renderer_classes = (MyJSONRenderer, BrowsableAPIRenderer)
    pagination_class = AppPageNumberPagination
    serializer_class = OrderSerializer
    queryset = Order.objects.all()
    filter_class = OrderFilter
    permission_classes = [IsAuthenticated, ]

    def get_serializer_class(self):
        if self.action == "list":
            return OrderListSerializer
        else:
            return OrderSerializer

    def list(self, request, *args, **kwargs):
        queryset = self.filter_queryset(self.get_queryset()).filter(userid=request.user.id)

        page = self.paginate_queryset(queryset)
        if page is not None:
            serializer = self.get_serializer(page, many=True)
            return self.get_paginated_response(serializer.data)

        serializer = self.get_serializer(queryset, many=True)
        return Response(serializer.data)

    def create(self, request, *args, **kwargs):
        self.request.data["userid"] = request.user.id
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
    permission_classes = [IsAuthenticated, ]

    def get_queryset(self):
        return Coupon.objects.filter(userid=self.request.user.id)


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
    permission_classes = [IsAuthenticated, ]

    def list(self, request, *args, **kwargs):
        queryset = self.filter_queryset(self.get_queryset())

        page = self.paginate_queryset(queryset)
        if page is not None:
            serializer = self.get_serializer(page, many=True)
            for one in serializer.data:
                try:
                    one["isRead"] = UserNotice.objects.get(messageid=one["id"], userid=request.user.id).isRead
                except UserNotice.DoesNotExist:
                    one["isRead"] = False
            return self.get_paginated_response(serializer.data)

        serializer = self.get_serializer(queryset, many=True)
        for one in serializer.data:
            one["isRead"] = UserNotice.objects.get(messageid=one["id"], userid=request.user.id).isRead
        return Response(serializer.data)

    @action(methods=['post'], detail=False, url_path="read/?")
    def read(self, request, pk=None):
        message_id = request.data["id"]
        user_notice = UserNotice.objects.get(messageid=message_id, userid=request.user.id)
        user_notice.isRead = True
        user_notice.save()
        return Response(True)

    @action(methods=['post'], detail=False, url_path="read/all?")
    def readAll(self, request, pk=None):
        UserNotice.objects.filter(userid=request.user.id).update(isRead=True)
        return Response(True)

    @action(methods=['get'], detail=False, url_path="read/not?")
    def readNot(self, request, pk=None):
        notice = UserNotice.objects.filter(userid=request.user.id, isRead=False).count()
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

    @action(methods=['get'], detail=False, url_path="setting/?")
    def setting(self, request, pk=None):
        data_json = os.path.join(settings.BASE_DIR, 'app_api/mock/notice/setting.json')
        with open(data_json) as fr:
            content = fr.read()
        import demjson
        content = demjson.decode(content)
        return JsonResponse(content)


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
    permission_classes = [IsAuthenticated, ]

    def create(self, request, *args, **kwargs):
        self.request.data["userid"] = request.user.id
        self.request.data["lessonid"] = self.request.data["id"]
        serializer = self.get_serializer(data=request.data)
        bak_img_url = self.request.data["img"]
        del self.request.data["img"]
        serializer.is_valid(raise_exception=True)
        serializer.validated_data["img"] = bak_img_url
        self.perform_create(serializer)
        headers = self.get_success_headers(serializer.data)
        return Response(serializer.data, status=status.HTTP_201_CREATED, headers=headers)

    def update(self, request, *args, **kwargs):
        self.request.data["userid"] = request.user.id
        return super().update(request, args, kwargs)

    def destroy(self, request, *args, **kwargs):
        instance = self.get_object()
        self.perform_destroy(instance)
        return Response(status=status.HTTP_200_OK)


class UserViewSet(MyViewSet):
    serializer_class = UserSerializer
    queryset = User.objects.all()
    filter_class = UserFilter

    @action(methods=['get'], detail=False, url_path="info/?", permission_classes=[IsAuthenticated, ])
    def info(self, request, pk=None):
        user = request.user
        ret = UserSerializer(user).data
        del ret["password"]
        return Response(ret)

    @action(methods=['post'], detail=False, url_path="update/info/?", permission_classes=[IsAuthenticated, ])
    def update_info(self, request, pk=None):
        user = request.user
        user.nickname = request.data["nickname"]
        user.city = request.data["city"]
        user.job = request.data["job"]
        user.sex = request.data["sex"]
        user.signature = request.data["signature"]
        user.save()
        return Response(True)

    @action(methods=['post'], detail=False, url_path="update/binds/?", permission_classes=[IsAuthenticated, ])
    def update_binds(self, request, pk=None):
        user = request.user
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
        # TODO 更改默认头像
        user.avatar = "https://img3.sycdn.imooc.com/5a5d1f3a0001cab806380638-140-140.jpg"
        user.save()
        return Response(True)

    @action(methods=['post'], detail=False, url_path="login/?")
    def login(self, request, pk=None):
        user = authenticate(request, username=request.data["username"], password=request.data["password"])
        if user is not None:
            login(request, user)
            login_log_save(request, user, login_type="0")
            return Response(UserSerializer(user).data)
        else:
            return JsonResponse({
                "code": -1,
                "msg": "登录失败"
            })

    @action(methods=['get'], detail=False, url_path="logout/?")
    def logout(self, request, pk=None):
        logout(request)
        return JsonResponse({
            "code": 0,
            "msg": "用户退出成功"
        })


class BillViewSet(MyViewSet):
    pagination_class = AppPageNumberPagination
    serializer_class = BillSerializer
    queryset = Bill.objects.all()
    filter_class = BillFilter

    def get_queryset(self):
        return Bill.objects.filter(userid=self.request.user.id)

    def list(self, request, *args, **kwargs):
        base_data = super().list(self, request, args, kwargs)
        all_recharge = Bill.objects.filter(userid=request.user.id)
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
    permission_classes = [IsAuthenticated, ]

    def list(self, request, *args, **kwargs):
        queryset = self.filter_queryset(self.get_queryset()).filter(userid=request.user.id)

        page = self.paginate_queryset(queryset)
        if page is not None:
            serializer = self.get_serializer(page, many=True)
            return self.get_paginated_response(serializer.data)

        serializer = self.get_serializer(queryset, many=True)
        return Response(serializer.data)

    def create(self, request, *args, **kwargs):
        self.request.data["userid"] = request.user.id
        return super(AddressViewSet, self).create(request, args, kwargs)

    def update(self, request, *args, **kwargs):
        self.request.data["userid"] = request.user.id
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

    def list(self, request, *args, **kwargs):
        queryset = self.filter_queryset(self.get_queryset()).filter(userid=request.user.id)

        page = self.paginate_queryset(queryset)
        if page is not None:
            serializer = self.get_serializer(page, many=True)
            return self.get_paginated_response(serializer.data)

        serializer = self.get_serializer(queryset, many=True)
        return Response(serializer.data)


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
    permission_classes = [IsAuthenticated, ]

    def get_queryset(self):
        if self.action == "list":
            return Recharge.objects.filter(userid=self.request.user.id)
        else:
            return Recharge.objects.all()

    def get_serializer_class(self):
        if self.action == "list":
            return RechargeListSerializer
        else:
            return RechargeSerializer

    def create(self, request, *args, **kwargs):
        self.request.data["userid"] = request.user.id
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
        all_recharge = Recharge.objects.filter(userid=request.user.id)
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

    def list(self, request, *args, **kwargs):
        nav_list = Navigation.objects.all().order_by('sort')
        wait_code_list = []
        for one in nav_list:
            wait_code_list += one.code.split(",")
        tag_list = Label.objects.filter(type__code__in=wait_code_list)
        lesson_list = Lesson.objects.filter(category__code__in=wait_code_list)
        base_ret = NavigationSerializer(nav_list, many=True).data
        for one in base_ret:
            tag_ret_list = []
            for one_tag in one["code"].split(","):
                one_label = LabelType.objects.get(code=one_tag)
                one_label_data = LabelTypeHomeSerializer(one_label).data
                one_label_data["list"] = list(Label.objects.filter(type__code=one_tag).values_list("title", flat=True))
                tag_ret_list.append(one_label_data)
            one["tags"] = tag_ret_list
            one["lessons"] = LessonSerializer(lesson_list.filter(Q(type__code=1) & Q(category__code__in=one["code"].split(",")))[:4], many=True).data
        return Response(base_ret, status=status.HTTP_200_OK)
        # data_json = os.path.join(settings.BASE_DIR, 'app_api/mock/home/nav.json')
        # return JsonResponse(json.load(open(data_json, 'r')))


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

    def get_queryset(self):
        return UserNotice.objects.filter(userid=self.request.user.id)


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
    # 猿问感兴趣的标签
    serializer_class = LabelSerializer
    queryset = Label.objects.all()
    filter_class = LabelFilter
    # permission_classes = [IsAuthenticated, ]

    @action(methods=['post'], detail=False, url_path="follow/?", permission_classes=[IsAuthenticated, ])
    def follow(self, request, pk=None):
        list = request.data["list"]
        add_list = []
        for one in list:
            one_follow = LabelFollow(userid=request.user.id, title=one["title"], labelid=Label.objects.get(title=one["title"]).id)
            add_list.append(one_follow)
        LabelFollow.objects.bulk_create(add_list, ignore_conflicts=True)
        return Response(True)

    @action(methods=['get'], detail=False, url_path="follow/list?", permission_classes=[IsAuthenticated, ])
    def followList(self, request, pk=None):
        return JsonResponse({
            "code": 0,
            "msg": "success",
            "data": LabelFollowSerializer(LabelFollow.objects.filter(userid=request.user.id), many=True).data
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
        data_json = os.path.join(settings.BASE_DIR, 'app_api/mock/home/recommend.json')
        return JsonResponse(json.load(open(data_json, 'r')))


class HomeLessonView(APIView):
    def get(self, request):
        recommend_list = LessonSerializer(Lesson.objects.filter(type__code=1).order_by("persons")[:5], many=True).data
        new_list = Lesson.objects.filter(type__code=1).order_by('time')[:10]
        easy_list = Lesson.objects.filter(hard__code=0)[:10]
        improve_list = Lesson.objects.filter(hard__code__gte=2)[:10]
        advance_list = Lesson.objects.filter(category__code=4)[:10]
        return JsonResponse({
            "code": 0,
            "msg": "获取首页课程成功",
            "data": {
                "recommend": recommend_list,
                "new": LessonSerializer(new_list, many=True).data,
                "easy": LessonSerializer(easy_list, many=True).data,
                "improve": LessonSerializer(improve_list, many=True).data,
                "advanced": LessonSerializer(advance_list, many=True).data
            }
        })
