from app_api import views
from django.urls import re_path, include, path
from rest_framework.routers import DefaultRouter

from app_api.views import RecommendView, HomeLessonView

router = DefaultRouter(trailing_slash=False)

router.register('common/history/?', views.HistoryViewSet)

router.register('common', views.CommonPathConfigViewSet)

router.register('home/slider/?', views.SliderViewSet)

router.register('home/nav/?', views.NavigationViewSet)

router.register('address/?', views.AddressViewSet)

router.register('article/type?', views.ArticleTypeViewSet)

router.register('article/?', views.ArticleViewSet)

router.register('cart/?', views.CartViewSet)

router.register('home/teacher/?', views.TeacherViewSet)

router.register('home/student/?', views.StudentViewSet)

router.register('integral/type/?', views.IntegralTypeViewSet)

router.register('integral/?', views.IntegralViewSet)

router.register('label/?', views.LabelViewSet)

router.register('lesson?', views.LessonViewSet)

router.register('notice/?', views.NoticeViewSet)

router.register('recharge/?', views.RechargeViewSet)

router.register('coupon/?', views.CouponViewSet)

router.register('order/?', views.OrderViewSet)

router.register('consult/?', views.ConsultViewSet)

router.register('question/?', views.QuestionViewSet)

router.register('read/types?', views.ReadTypeViewSet)

router.register('read/?', views.ReadViewSet)

router.register('user/course/?', views.UserLessonViewSet)

router.register('user/?', views.UserViewSet)

router.register('bill/?', views.BillViewSet)

router.register('catalog/?', views.CatalogViewSet)

router.register('log/?', views.LogViewSet)

router.register('comment/?', views.CommentViewSet)

router.register('hot/?', views.HotViewSet)

router.register('label_follow/?', views.LabelFollowViewSet)

router.register('qa/?', views.QaViewSet)

router.register('user_notice/?', views.UserNoticeViewSet)

# router.register('nav/?', views.NavViewSet)

router.register('label_type/?', views.LabelTypeViewSet)

router.register('footer/?', views.FooterViewSet)

urlpatterns = [
    re_path('^', include(router.urls)),
    path('home/recommend', RecommendView.as_view()),
    path('home/lesson', HomeLessonView.as_view()),
    # path('notice/setting', NoticeSettingView.as_view())
]
