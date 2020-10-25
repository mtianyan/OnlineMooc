// @ts-nocheck
import { ApplyPluginsType, dynamic } from '/Users/mtianyan/tyRepos/Python/OnlineMooc/tyadmin/node_modules/@umijs/runtime';
import { plugin } from './plugin';

const routes = [
  {
    "path": "/xadmin/login",
    "component": dynamic({ loader: () => import(/* webpackChunkName: 'layouts__UserLayout' */'/Users/mtianyan/tyRepos/Python/OnlineMooc/tyadmin/src/layouts/UserLayout'), loading: require('@/components/PageLoading/index').default}),
    "routes": [
      {
        "name": "login",
        "path": "/xadmin/login",
        "component": dynamic({ loader: () => import(/* webpackChunkName: 'p__TyAdminBuiltIn__UserLogin' */'/Users/mtianyan/tyRepos/Python/OnlineMooc/tyadmin/src/pages/TyAdminBuiltIn/UserLogin'), loading: require('@/components/PageLoading/index').default}),
        "exact": true
      }
    ]
  },
  {
    "path": "/xadmin/",
    "component": dynamic({ loader: () => import(/* webpackChunkName: 'layouts__SecurityLayout' */'/Users/mtianyan/tyRepos/Python/OnlineMooc/tyadmin/src/layouts/SecurityLayout'), loading: require('@/components/PageLoading/index').default}),
    "routes": [
      {
        "path": "/xadmin/",
        "component": dynamic({ loader: () => import(/* webpackChunkName: 'layouts__BasicLayout' */'/Users/mtianyan/tyRepos/Python/OnlineMooc/tyadmin/src/layouts/BasicLayout'), loading: require('@/components/PageLoading/index').default}),
        "authority": [
          "admin",
          "user"
        ],
        "routes": [
          {
            "name": "首页",
            "path": "/xadmin/index",
            "icon": "dashboard",
            "component": dynamic({ loader: () => import(/* webpackChunkName: 'p__TyAdminBuiltIn__DashBoard' */'/Users/mtianyan/tyRepos/Python/OnlineMooc/tyadmin/src/pages/TyAdminBuiltIn/DashBoard'), loading: require('@/components/PageLoading/index').default}),
            "exact": true
          },
          {
            "path": "/xadmin/",
            "redirect": "/xadmin/index",
            "exact": true
          },
          {
            "name": "首页",
            "path": "/xadmin/index",
            "icon": "dashboard",
            "component": dynamic({ loader: () => import(/* webpackChunkName: 'p__TyAdminBuiltIn__DashBoard' */'/Users/mtianyan/tyRepos/Python/OnlineMooc/tyadmin/src/pages/TyAdminBuiltIn/DashBoard'), loading: require('@/components/PageLoading/index').default}),
            "exact": true
          },
          {
            "name": "权限",
            "icon": "smile",
            "path": "/xadmin/permission",
            "component": dynamic({ loader: () => import(/* webpackChunkName: 'p__AutoGenPage__PermissionList' */'/Users/mtianyan/tyRepos/Python/OnlineMooc/tyadmin/src/pages/AutoGenPage/PermissionList'), loading: require('@/components/PageLoading/index').default}),
            "exact": true
          },
          {
            "name": "组",
            "icon": "smile",
            "path": "/xadmin/group",
            "component": dynamic({ loader: () => import(/* webpackChunkName: 'p__AutoGenPage__GroupList' */'/Users/mtianyan/tyRepos/Python/OnlineMooc/tyadmin/src/pages/AutoGenPage/GroupList'), loading: require('@/components/PageLoading/index').default}),
            "exact": true
          },
          {
            "name": "邮箱验证码",
            "icon": "smile",
            "path": "/xadmin/email_verify_record",
            "component": dynamic({ loader: () => import(/* webpackChunkName: 'p__AutoGenPage__EmailVerifyRecordList' */'/Users/mtianyan/tyRepos/Python/OnlineMooc/tyadmin/src/pages/AutoGenPage/EmailVerifyRecordList'), loading: require('@/components/PageLoading/index').default}),
            "exact": true
          },
          {
            "name": "订单状态",
            "icon": "smile",
            "path": "/xadmin/order_status",
            "component": dynamic({ loader: () => import(/* webpackChunkName: 'p__AutoGenPage__OrderStatusList' */'/Users/mtianyan/tyRepos/Python/OnlineMooc/tyadmin/src/pages/AutoGenPage/OrderStatusList'), loading: require('@/components/PageLoading/index').default}),
            "exact": true
          },
          {
            "name": "订单",
            "icon": "smile",
            "path": "/xadmin/order",
            "component": dynamic({ loader: () => import(/* webpackChunkName: 'p__AutoGenPage__OrderList' */'/Users/mtianyan/tyRepos/Python/OnlineMooc/tyadmin/src/pages/AutoGenPage/OrderList'), loading: require('@/components/PageLoading/index').default}),
            "exact": true
          },
          {
            "name": "订单小项",
            "icon": "smile",
            "path": "/xadmin/order_item",
            "component": dynamic({ loader: () => import(/* webpackChunkName: 'p__AutoGenPage__OrderItemList' */'/Users/mtianyan/tyRepos/Python/OnlineMooc/tyadmin/src/pages/AutoGenPage/OrderItemList'), loading: require('@/components/PageLoading/index').default}),
            "exact": true
          },
          {
            "name": "充值方式",
            "icon": "smile",
            "path": "/xadmin/coupon_range",
            "component": dynamic({ loader: () => import(/* webpackChunkName: 'p__AutoGenPage__CouponRangeList' */'/Users/mtianyan/tyRepos/Python/OnlineMooc/tyadmin/src/pages/AutoGenPage/CouponRangeList'), loading: require('@/components/PageLoading/index').default}),
            "exact": true
          },
          {
            "name": "充值方式",
            "icon": "smile",
            "path": "/xadmin/coupon_status",
            "component": dynamic({ loader: () => import(/* webpackChunkName: 'p__AutoGenPage__CouponStatusList' */'/Users/mtianyan/tyRepos/Python/OnlineMooc/tyadmin/src/pages/AutoGenPage/CouponStatusList'), loading: require('@/components/PageLoading/index').default}),
            "exact": true
          },
          {
            "name": "优惠券",
            "icon": "smile",
            "path": "/xadmin/coupon",
            "component": dynamic({ loader: () => import(/* webpackChunkName: 'p__AutoGenPage__CouponList' */'/Users/mtianyan/tyRepos/Python/OnlineMooc/tyadmin/src/pages/AutoGenPage/CouponList'), loading: require('@/components/PageLoading/index').default}),
            "exact": true
          },
          {
            "name": "积分商品类别",
            "icon": "smile",
            "path": "/xadmin/integral_type",
            "component": dynamic({ loader: () => import(/* webpackChunkName: 'p__AutoGenPage__IntegralTypeList' */'/Users/mtianyan/tyRepos/Python/OnlineMooc/tyadmin/src/pages/AutoGenPage/IntegralTypeList'), loading: require('@/components/PageLoading/index').default}),
            "exact": true
          },
          {
            "name": "积分商品",
            "icon": "smile",
            "path": "/xadmin/integral",
            "component": dynamic({ loader: () => import(/* webpackChunkName: 'p__AutoGenPage__IntegralList' */'/Users/mtianyan/tyRepos/Python/OnlineMooc/tyadmin/src/pages/AutoGenPage/IntegralList'), loading: require('@/components/PageLoading/index').default}),
            "exact": true
          },
          {
            "name": "通知",
            "icon": "smile",
            "path": "/xadmin/notice",
            "component": dynamic({ loader: () => import(/* webpackChunkName: 'p__AutoGenPage__NoticeList' */'/Users/mtianyan/tyRepos/Python/OnlineMooc/tyadmin/src/pages/AutoGenPage/NoticeList'), loading: require('@/components/PageLoading/index').default}),
            "exact": true
          },
          {
            "name": "课程角标类型",
            "icon": "smile",
            "path": "/xadmin/lesson_script",
            "component": dynamic({ loader: () => import(/* webpackChunkName: 'p__AutoGenPage__LessonScriptList' */'/Users/mtianyan/tyRepos/Python/OnlineMooc/tyadmin/src/pages/AutoGenPage/LessonScriptList'), loading: require('@/components/PageLoading/index').default}),
            "exact": true
          },
          {
            "name": "课程",
            "icon": "smile",
            "path": "/xadmin/lesson",
            "component": dynamic({ loader: () => import(/* webpackChunkName: 'p__AutoGenPage__LessonList' */'/Users/mtianyan/tyRepos/Python/OnlineMooc/tyadmin/src/pages/AutoGenPage/LessonList'), loading: require('@/components/PageLoading/index').default}),
            "exact": true
          },
          {
            "name": "问题",
            "icon": "smile",
            "path": "/xadmin/question",
            "component": dynamic({ loader: () => import(/* webpackChunkName: 'p__AutoGenPage__QuestionList' */'/Users/mtianyan/tyRepos/Python/OnlineMooc/tyadmin/src/pages/AutoGenPage/QuestionList'), loading: require('@/components/PageLoading/index').default}),
            "exact": true
          },
          {
            "name": "购物车",
            "icon": "smile",
            "path": "/xadmin/cart",
            "component": dynamic({ loader: () => import(/* webpackChunkName: 'p__AutoGenPage__CartList' */'/Users/mtianyan/tyRepos/Python/OnlineMooc/tyadmin/src/pages/AutoGenPage/CartList'), loading: require('@/components/PageLoading/index').default}),
            "exact": true
          },
          {
            "name": "用户咨询",
            "icon": "smile",
            "path": "/xadmin/consult",
            "component": dynamic({ loader: () => import(/* webpackChunkName: 'p__AutoGenPage__ConsultList' */'/Users/mtianyan/tyRepos/Python/OnlineMooc/tyadmin/src/pages/AutoGenPage/ConsultList'), loading: require('@/components/PageLoading/index').default}),
            "exact": true
          },
          {
            "name": "用户",
            "icon": "smile",
            "path": "/xadmin/user",
            "component": dynamic({ loader: () => import(/* webpackChunkName: 'p__AutoGenPage__UserList' */'/Users/mtianyan/tyRepos/Python/OnlineMooc/tyadmin/src/pages/AutoGenPage/UserList'), loading: require('@/components/PageLoading/index').default}),
            "exact": true
          },
          {
            "name": "Bill",
            "icon": "smile",
            "path": "/xadmin/bill",
            "component": dynamic({ loader: () => import(/* webpackChunkName: 'p__AutoGenPage__BillList' */'/Users/mtianyan/tyRepos/Python/OnlineMooc/tyadmin/src/pages/AutoGenPage/BillList'), loading: require('@/components/PageLoading/index').default}),
            "exact": true
          },
          {
            "name": "地址信息",
            "icon": "smile",
            "path": "/xadmin/address",
            "component": dynamic({ loader: () => import(/* webpackChunkName: 'p__AutoGenPage__AddressList' */'/Users/mtianyan/tyRepos/Python/OnlineMooc/tyadmin/src/pages/AutoGenPage/AddressList'), loading: require('@/components/PageLoading/index').default}),
            "exact": true
          },
          {
            "name": "课程目录信息",
            "icon": "smile",
            "path": "/xadmin/catalog",
            "component": dynamic({ loader: () => import(/* webpackChunkName: 'p__AutoGenPage__CatalogList' */'/Users/mtianyan/tyRepos/Python/OnlineMooc/tyadmin/src/pages/AutoGenPage/CatalogList'), loading: require('@/components/PageLoading/index').default}),
            "exact": true
          },
          {
            "name": "登录类型",
            "icon": "smile",
            "path": "/xadmin/log_type",
            "component": dynamic({ loader: () => import(/* webpackChunkName: 'p__AutoGenPage__LogTypeList' */'/Users/mtianyan/tyRepos/Python/OnlineMooc/tyadmin/src/pages/AutoGenPage/LogTypeList'), loading: require('@/components/PageLoading/index').default}),
            "exact": true
          },
          {
            "name": "访问日志",
            "icon": "smile",
            "path": "/xadmin/log",
            "component": dynamic({ loader: () => import(/* webpackChunkName: 'p__AutoGenPage__LogList' */'/Users/mtianyan/tyRepos/Python/OnlineMooc/tyadmin/src/pages/AutoGenPage/LogList'), loading: require('@/components/PageLoading/index').default}),
            "exact": true
          },
          {
            "name": "专栏分类",
            "icon": "smile",
            "path": "/xadmin/read_type",
            "component": dynamic({ loader: () => import(/* webpackChunkName: 'p__AutoGenPage__ReadTypeList' */'/Users/mtianyan/tyRepos/Python/OnlineMooc/tyadmin/src/pages/AutoGenPage/ReadTypeList'), loading: require('@/components/PageLoading/index').default}),
            "exact": true
          },
          {
            "name": "专栏章节",
            "icon": "smile",
            "path": "/xadmin/read_chapter",
            "component": dynamic({ loader: () => import(/* webpackChunkName: 'p__AutoGenPage__ReadChapterList' */'/Users/mtianyan/tyRepos/Python/OnlineMooc/tyadmin/src/pages/AutoGenPage/ReadChapterList'), loading: require('@/components/PageLoading/index').default}),
            "exact": true
          },
          {
            "name": "专栏章节小节",
            "icon": "smile",
            "path": "/xadmin/read_chapter_item",
            "component": dynamic({ loader: () => import(/* webpackChunkName: 'p__AutoGenPage__ReadChapterItemList' */'/Users/mtianyan/tyRepos/Python/OnlineMooc/tyadmin/src/pages/AutoGenPage/ReadChapterItemList'), loading: require('@/components/PageLoading/index').default}),
            "exact": true
          },
          {
            "name": "讲师",
            "icon": "smile",
            "path": "/xadmin/teacher",
            "component": dynamic({ loader: () => import(/* webpackChunkName: 'p__AutoGenPage__TeacherList' */'/Users/mtianyan/tyRepos/Python/OnlineMooc/tyadmin/src/pages/AutoGenPage/TeacherList'), loading: require('@/components/PageLoading/index').default}),
            "exact": true
          },
          {
            "name": "评论",
            "icon": "smile",
            "path": "/xadmin/comment",
            "component": dynamic({ loader: () => import(/* webpackChunkName: 'p__AutoGenPage__CommentList' */'/Users/mtianyan/tyRepos/Python/OnlineMooc/tyadmin/src/pages/AutoGenPage/CommentList'), loading: require('@/components/PageLoading/index').default}),
            "exact": true
          },
          {
            "name": "热搜",
            "icon": "smile",
            "path": "/xadmin/hot",
            "component": dynamic({ loader: () => import(/* webpackChunkName: 'p__AutoGenPage__HotList' */'/Users/mtianyan/tyRepos/Python/OnlineMooc/tyadmin/src/pages/AutoGenPage/HotList'), loading: require('@/components/PageLoading/index').default}),
            "exact": true
          },
          {
            "name": "充值类型",
            "icon": "smile",
            "path": "/xadmin/recharge_action",
            "component": dynamic({ loader: () => import(/* webpackChunkName: 'p__AutoGenPage__RechargeActionList' */'/Users/mtianyan/tyRepos/Python/OnlineMooc/tyadmin/src/pages/AutoGenPage/RechargeActionList'), loading: require('@/components/PageLoading/index').default}),
            "exact": true
          },
          {
            "name": "充值方式",
            "icon": "smile",
            "path": "/xadmin/recharge_pay",
            "component": dynamic({ loader: () => import(/* webpackChunkName: 'p__AutoGenPage__RechargePayList' */'/Users/mtianyan/tyRepos/Python/OnlineMooc/tyadmin/src/pages/AutoGenPage/RechargePayList'), loading: require('@/components/PageLoading/index').default}),
            "exact": true
          },
          {
            "name": "充值记录",
            "icon": "smile",
            "path": "/xadmin/recharge",
            "component": dynamic({ loader: () => import(/* webpackChunkName: 'p__AutoGenPage__RechargeList' */'/Users/mtianyan/tyRepos/Python/OnlineMooc/tyadmin/src/pages/AutoGenPage/RechargeList'), loading: require('@/components/PageLoading/index').default}),
            "exact": true
          },
          {
            "name": "关注Label",
            "icon": "smile",
            "path": "/xadmin/label_follow",
            "component": dynamic({ loader: () => import(/* webpackChunkName: 'p__AutoGenPage__LabelFollowList' */'/Users/mtianyan/tyRepos/Python/OnlineMooc/tyadmin/src/pages/AutoGenPage/LabelFollowList'), loading: require('@/components/PageLoading/index').default}),
            "exact": true
          },
          {
            "name": "学生",
            "icon": "smile",
            "path": "/xadmin/student",
            "component": dynamic({ loader: () => import(/* webpackChunkName: 'p__AutoGenPage__StudentList' */'/Users/mtianyan/tyRepos/Python/OnlineMooc/tyadmin/src/pages/AutoGenPage/StudentList'), loading: require('@/components/PageLoading/index').default}),
            "exact": true
          },
          {
            "name": "学生类型",
            "icon": "smile",
            "path": "/xadmin/student_type",
            "component": dynamic({ loader: () => import(/* webpackChunkName: 'p__AutoGenPage__StudentTypeList' */'/Users/mtianyan/tyRepos/Python/OnlineMooc/tyadmin/src/pages/AutoGenPage/StudentTypeList'), loading: require('@/components/PageLoading/index').default}),
            "exact": true
          },
          {
            "name": "首页左侧菜单",
            "icon": "smile",
            "path": "/xadmin/navigation",
            "component": dynamic({ loader: () => import(/* webpackChunkName: 'p__AutoGenPage__NavigationList' */'/Users/mtianyan/tyRepos/Python/OnlineMooc/tyadmin/src/pages/AutoGenPage/NavigationList'), loading: require('@/components/PageLoading/index').default}),
            "exact": true
          },
          {
            "name": "专栏",
            "icon": "smile",
            "path": "/xadmin/read",
            "component": dynamic({ loader: () => import(/* webpackChunkName: 'p__AutoGenPage__ReadList' */'/Users/mtianyan/tyRepos/Python/OnlineMooc/tyadmin/src/pages/AutoGenPage/ReadList'), loading: require('@/components/PageLoading/index').default}),
            "exact": true
          },
          {
            "name": "文章",
            "icon": "smile",
            "path": "/xadmin/article",
            "component": dynamic({ loader: () => import(/* webpackChunkName: 'p__AutoGenPage__ArticleList' */'/Users/mtianyan/tyRepos/Python/OnlineMooc/tyadmin/src/pages/AutoGenPage/ArticleList'), loading: require('@/components/PageLoading/index').default}),
            "exact": true
          },
          {
            "name": "搜索历史",
            "icon": "smile",
            "path": "/xadmin/history",
            "component": dynamic({ loader: () => import(/* webpackChunkName: 'p__AutoGenPage__HistoryList' */'/Users/mtianyan/tyRepos/Python/OnlineMooc/tyadmin/src/pages/AutoGenPage/HistoryList'), loading: require('@/components/PageLoading/index').default}),
            "exact": true
          },
          {
            "name": "文章类型",
            "icon": "smile",
            "path": "/xadmin/qa_type",
            "component": dynamic({ loader: () => import(/* webpackChunkName: 'p__AutoGenPage__QaTypeList' */'/Users/mtianyan/tyRepos/Python/OnlineMooc/tyadmin/src/pages/AutoGenPage/QaTypeList'), loading: require('@/components/PageLoading/index').default}),
            "exact": true
          },
          {
            "name": "回答",
            "icon": "smile",
            "path": "/xadmin/answer",
            "component": dynamic({ loader: () => import(/* webpackChunkName: 'p__AutoGenPage__AnswerList' */'/Users/mtianyan/tyRepos/Python/OnlineMooc/tyadmin/src/pages/AutoGenPage/AnswerList'), loading: require('@/components/PageLoading/index').default}),
            "exact": true
          },
          {
            "name": "Qa",
            "icon": "smile",
            "path": "/xadmin/qa",
            "component": dynamic({ loader: () => import(/* webpackChunkName: 'p__AutoGenPage__QaList' */'/Users/mtianyan/tyRepos/Python/OnlineMooc/tyadmin/src/pages/AutoGenPage/QaList'), loading: require('@/components/PageLoading/index').default}),
            "exact": true
          },
          {
            "name": "文章类型",
            "icon": "smile",
            "path": "/xadmin/article_type",
            "component": dynamic({ loader: () => import(/* webpackChunkName: 'p__AutoGenPage__ArticleTypeList' */'/Users/mtianyan/tyRepos/Python/OnlineMooc/tyadmin/src/pages/AutoGenPage/ArticleTypeList'), loading: require('@/components/PageLoading/index').default}),
            "exact": true
          },
          {
            "name": "用户通知",
            "icon": "smile",
            "path": "/xadmin/user_notice",
            "component": dynamic({ loader: () => import(/* webpackChunkName: 'p__AutoGenPage__UserNoticeList' */'/Users/mtianyan/tyRepos/Python/OnlineMooc/tyadmin/src/pages/AutoGenPage/UserNoticeList'), loading: require('@/components/PageLoading/index').default}),
            "exact": true
          },
          {
            "name": "首页Banner",
            "icon": "smile",
            "path": "/xadmin/slider",
            "component": dynamic({ loader: () => import(/* webpackChunkName: 'p__AutoGenPage__SliderList' */'/Users/mtianyan/tyRepos/Python/OnlineMooc/tyadmin/src/pages/AutoGenPage/SliderList'), loading: require('@/components/PageLoading/index').default}),
            "exact": true
          },
          {
            "name": "用户学习的课程",
            "icon": "smile",
            "path": "/xadmin/user_lesson",
            "component": dynamic({ loader: () => import(/* webpackChunkName: 'p__AutoGenPage__UserLessonList' */'/Users/mtianyan/tyRepos/Python/OnlineMooc/tyadmin/src/pages/AutoGenPage/UserLessonList'), loading: require('@/components/PageLoading/index').default}),
            "exact": true
          },
          {
            "name": "首页左侧菜单",
            "icon": "smile",
            "path": "/xadmin/nav",
            "component": dynamic({ loader: () => import(/* webpackChunkName: 'p__AutoGenPage__NavList' */'/Users/mtianyan/tyRepos/Python/OnlineMooc/tyadmin/src/pages/AutoGenPage/NavList'), loading: require('@/components/PageLoading/index').default}),
            "exact": true
          },
          {
            "name": "Label类型",
            "icon": "smile",
            "path": "/xadmin/label_type",
            "component": dynamic({ loader: () => import(/* webpackChunkName: 'p__AutoGenPage__LabelTypeList' */'/Users/mtianyan/tyRepos/Python/OnlineMooc/tyadmin/src/pages/AutoGenPage/LabelTypeList'), loading: require('@/components/PageLoading/index').default}),
            "exact": true
          },
          {
            "name": "课程类型",
            "icon": "smile",
            "path": "/xadmin/lesson_type",
            "component": dynamic({ loader: () => import(/* webpackChunkName: 'p__AutoGenPage__LessonTypeList' */'/Users/mtianyan/tyRepos/Python/OnlineMooc/tyadmin/src/pages/AutoGenPage/LessonTypeList'), loading: require('@/components/PageLoading/index').default}),
            "exact": true
          },
          {
            "name": "课程难度类型",
            "icon": "smile",
            "path": "/xadmin/lesson_hard_type",
            "component": dynamic({ loader: () => import(/* webpackChunkName: 'p__AutoGenPage__LessonHardTypeList' */'/Users/mtianyan/tyRepos/Python/OnlineMooc/tyadmin/src/pages/AutoGenPage/LessonHardTypeList'), loading: require('@/components/PageLoading/index').default}),
            "exact": true
          },
          {
            "name": "Label小项",
            "icon": "smile",
            "path": "/xadmin/label",
            "component": dynamic({ loader: () => import(/* webpackChunkName: 'p__AutoGenPage__LabelList' */'/Users/mtianyan/tyRepos/Python/OnlineMooc/tyadmin/src/pages/AutoGenPage/LabelList'), loading: require('@/components/PageLoading/index').default}),
            "exact": true
          },
          {
            "name": "底部配置",
            "icon": "smile",
            "path": "/xadmin/footer",
            "component": dynamic({ loader: () => import(/* webpackChunkName: 'p__AutoGenPage__FooterList' */'/Users/mtianyan/tyRepos/Python/OnlineMooc/tyadmin/src/pages/AutoGenPage/FooterList'), loading: require('@/components/PageLoading/index').default}),
            "exact": true
          },
          {
            "name": "公共头部脚部配置",
            "icon": "smile",
            "path": "/xadmin/common_path_config",
            "component": dynamic({ loader: () => import(/* webpackChunkName: 'p__AutoGenPage__CommonPathConfigList' */'/Users/mtianyan/tyRepos/Python/OnlineMooc/tyadmin/src/pages/AutoGenPage/CommonPathConfigList'), loading: require('@/components/PageLoading/index').default}),
            "exact": true
          },
          {
            "name": "章节",
            "icon": "smile",
            "path": "/xadmin/chapter",
            "component": dynamic({ loader: () => import(/* webpackChunkName: 'p__AutoGenPage__ChapterList' */'/Users/mtianyan/tyRepos/Python/OnlineMooc/tyadmin/src/pages/AutoGenPage/ChapterList'), loading: require('@/components/PageLoading/index').default}),
            "exact": true
          },
          {
            "name": "小节",
            "icon": "smile",
            "path": "/xadmin/term",
            "component": dynamic({ loader: () => import(/* webpackChunkName: 'p__AutoGenPage__TermList' */'/Users/mtianyan/tyRepos/Python/OnlineMooc/tyadmin/src/pages/AutoGenPage/TermList'), loading: require('@/components/PageLoading/index').default}),
            "exact": true
          },
          {
            "name": "系统日志",
            "icon": "smile",
            "path": "/xadmin/sys_log",
            "component": dynamic({ loader: () => import(/* webpackChunkName: 'p__AutoGenPage__SysLogList' */'/Users/mtianyan/tyRepos/Python/OnlineMooc/tyadmin/src/pages/AutoGenPage/SysLogList'), loading: require('@/components/PageLoading/index').default}),
            "exact": true
          },
          {
            "name": "Tyadmin内置",
            "icon": "VideoCamera",
            "path": "/xadmin/sys",
            "routes": [
              {
                "name": "TyAdmin日志",
                "icon": "smile",
                "path": "/xadmin/sys/ty_admin_sys_log",
                "component": dynamic({ loader: () => import(/* webpackChunkName: 'p__TyAdminBuiltIn__TyAdminSysLogList' */'/Users/mtianyan/tyRepos/Python/OnlineMooc/tyadmin/src/pages/TyAdminBuiltIn/TyAdminSysLogList'), loading: require('@/components/PageLoading/index').default}),
                "exact": true
              },
              {
                "name": "TyAdmin验证",
                "icon": "smile",
                "path": "/xadmin/sys/ty_admin_email_verify_record",
                "component": dynamic({ loader: () => import(/* webpackChunkName: 'p__TyAdminBuiltIn__TyAdminEmailVerifyRecordList' */'/Users/mtianyan/tyRepos/Python/OnlineMooc/tyadmin/src/pages/TyAdminBuiltIn/TyAdminEmailVerifyRecordList'), loading: require('@/components/PageLoading/index').default}),
                "exact": true
              }
            ]
          },
          {
            "path": "/xadmin/account/change_password",
            "name": "修改密码",
            "hideInMenu": true,
            "icon": "dashboard",
            "component": dynamic({ loader: () => import(/* webpackChunkName: 'p__TyAdminBuiltIn__ChangePassword' */'/Users/mtianyan/tyRepos/Python/OnlineMooc/tyadmin/src/pages/TyAdminBuiltIn/ChangePassword'), loading: require('@/components/PageLoading/index').default}),
            "exact": true
          },
          {
            "name": "Tyadmin内置",
            "icon": "VideoCamera",
            "path": "/xadmin/sys",
            "routes": [
              {
                "name": "TyAdmin日志",
                "icon": "smile",
                "path": "/xadmin/sys/ty_admin_sys_log",
                "component": dynamic({ loader: () => import(/* webpackChunkName: 'p__TyAdminBuiltIn__TyAdminSysLogList' */'/Users/mtianyan/tyRepos/Python/OnlineMooc/tyadmin/src/pages/TyAdminBuiltIn/TyAdminSysLogList'), loading: require('@/components/PageLoading/index').default}),
                "exact": true
              },
              {
                "name": "TyAdmin验证",
                "icon": "smile",
                "path": "/xadmin/sys/ty_admin_email_verify_record",
                "component": dynamic({ loader: () => import(/* webpackChunkName: 'p__TyAdminBuiltIn__TyAdminEmailVerifyRecordList' */'/Users/mtianyan/tyRepos/Python/OnlineMooc/tyadmin/src/pages/TyAdminBuiltIn/TyAdminEmailVerifyRecordList'), loading: require('@/components/PageLoading/index').default}),
                "exact": true
              }
            ]
          },
          {
            "component": dynamic({ loader: () => import(/* webpackChunkName: 'p__404' */'/Users/mtianyan/tyRepos/Python/OnlineMooc/tyadmin/src/pages/404'), loading: require('@/components/PageLoading/index').default}),
            "exact": true
          }
        ]
      },
      {
        "component": dynamic({ loader: () => import(/* webpackChunkName: 'p__404' */'/Users/mtianyan/tyRepos/Python/OnlineMooc/tyadmin/src/pages/404'), loading: require('@/components/PageLoading/index').default}),
        "exact": true
      }
    ]
  },
  {
    "component": dynamic({ loader: () => import(/* webpackChunkName: 'p__404' */'/Users/mtianyan/tyRepos/Python/OnlineMooc/tyadmin/src/pages/404'), loading: require('@/components/PageLoading/index').default}),
    "exact": true
  }
];

// allow user to extend routes
plugin.applyPlugins({
  key: 'patchRoutes',
  type: ApplyPluginsType.event,
  args: { routes },
});

export { routes };
