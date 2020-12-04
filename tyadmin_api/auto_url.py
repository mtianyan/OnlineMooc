from tyadmin_api import auto_views
from django.urls import re_path, include, path
from rest_framework.routers import DefaultRouter
    
router = DefaultRouter(trailing_slash=False)
    
router.register('permission', auto_views.PermissionViewSet)
    
router.register('group', auto_views.GroupViewSet)
    
router.register('content_type', auto_views.ContentTypeViewSet)
    
router.register('email_verify_record', auto_views.EmailVerifyRecordViewSet)
    
router.register('order_status', auto_views.OrderStatusViewSet)
    
router.register('order', auto_views.OrderViewSet)
    
router.register('order_item', auto_views.OrderItemViewSet)
    
router.register('coupon_range', auto_views.CouponRangeViewSet)
    
router.register('coupon_status', auto_views.CouponStatusViewSet)
    
router.register('coupon', auto_views.CouponViewSet)
    
router.register('integral_type', auto_views.IntegralTypeViewSet)
    
router.register('integral', auto_views.IntegralViewSet)
    
router.register('notice', auto_views.NoticeViewSet)
    
router.register('lesson_script', auto_views.LessonScriptViewSet)
    
router.register('lesson', auto_views.LessonViewSet)
    
router.register('question', auto_views.QuestionViewSet)
    
router.register('cart', auto_views.CartViewSet)
    
router.register('consult', auto_views.ConsultViewSet)
    
router.register('user', auto_views.UserViewSet)
    
router.register('bill', auto_views.BillViewSet)
    
router.register('address', auto_views.AddressViewSet)
    
router.register('catalog', auto_views.CatalogViewSet)
    
router.register('log_type', auto_views.LogTypeViewSet)
    
router.register('log', auto_views.LogViewSet)
    
router.register('read_type', auto_views.ReadTypeViewSet)
    
router.register('read_chapter', auto_views.ReadChapterViewSet)
    
router.register('read_chapter_item', auto_views.ReadChapterItemViewSet)
    
router.register('teacher', auto_views.TeacherViewSet)
    
router.register('comment', auto_views.CommentViewSet)
    
router.register('hot', auto_views.HotViewSet)
    
router.register('recharge_action', auto_views.RechargeActionViewSet)
    
router.register('recharge_pay', auto_views.RechargePayViewSet)
    
router.register('recharge', auto_views.RechargeViewSet)
    
router.register('label_follow', auto_views.LabelFollowViewSet)
    
router.register('student', auto_views.StudentViewSet)
    
router.register('student_type', auto_views.StudentTypeViewSet)
    
router.register('navigation', auto_views.NavigationViewSet)
    
router.register('read', auto_views.ReadViewSet)
    
router.register('article', auto_views.ArticleViewSet)
    
router.register('history', auto_views.HistoryViewSet)
    
router.register('qa_type', auto_views.QaTypeViewSet)
    
router.register('answer', auto_views.AnswerViewSet)
    
router.register('qa', auto_views.QaViewSet)
    
router.register('article_type', auto_views.ArticleTypeViewSet)
    
router.register('user_notice', auto_views.UserNoticeViewSet)
    
router.register('slider', auto_views.SliderViewSet)
    
router.register('user_lesson', auto_views.UserLessonViewSet)
    
router.register('nav', auto_views.NavViewSet)
    
router.register('label_type', auto_views.LabelTypeViewSet)
    
router.register('lesson_type', auto_views.LessonTypeViewSet)
    
router.register('lesson_hard_type', auto_views.LessonHardTypeViewSet)
    
router.register('label', auto_views.LabelViewSet)
    
router.register('footer', auto_views.FooterViewSet)
    
router.register('common_path_config', auto_views.CommonPathConfigViewSet)
    
router.register('chapter', auto_views.ChapterViewSet)
    
router.register('term', auto_views.TermViewSet)
    
router.register('sys_log', auto_views.SysLogViewSet)
    
urlpatterns = [
        re_path('^', include(router.urls)),
    ]
    