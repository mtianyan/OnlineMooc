// @ts-nocheck
import { ApplyPluginsType, dynamic } from '/Users/mtianyan/Desktop/Github/OnlineMooc/xadmin/node_modules/@umijs/runtime';
import { plugin } from './plugin';

const routes = [
  {
    "path": "/xadmin/login",
    "component": dynamic({ loader: () => import(/* webpackChunkName: 'layouts__UserLayout' */'/Users/mtianyan/Desktop/Github/OnlineMooc/xadmin/src/layouts/UserLayout'), loading: require('@/components/PageLoading/index').default}),
    "routes": [
      {
        "name": "login",
        "path": "/xadmin/login",
        "component": dynamic({ loader: () => import(/* webpackChunkName: 'p__UserLogin' */'/Users/mtianyan/Desktop/Github/OnlineMooc/xadmin/src/pages/UserLogin'), loading: require('@/components/PageLoading/index').default}),
        "exact": true
      }
    ]
  },
  {
    "path": "/xadmin/",
    "component": dynamic({ loader: () => import(/* webpackChunkName: 'layouts__SecurityLayout' */'/Users/mtianyan/Desktop/Github/OnlineMooc/xadmin/src/layouts/SecurityLayout'), loading: require('@/components/PageLoading/index').default}),
    "routes": [
      {
        "path": "/xadmin/",
        "component": dynamic({ loader: () => import(/* webpackChunkName: 'layouts__BasicLayout' */'/Users/mtianyan/Desktop/Github/OnlineMooc/xadmin/src/layouts/BasicLayout'), loading: require('@/components/PageLoading/index').default}),
        "authority": [
          "admin",
          "user"
        ],
        "routes": [
          {
            "path": "/xadmin/",
            "redirect": "/xadmin/index",
            "exact": true
          },
          {
            "name": "首页",
            "path": "/xadmin/index",
            "icon": "dashboard",
            "component": dynamic({ loader: () => import(/* webpackChunkName: 'p__DashBoard' */'/Users/mtianyan/Desktop/Github/OnlineMooc/xadmin/src/pages/DashBoard'), loading: require('@/components/PageLoading/index').default}),
            "exact": true
          },
          {
            "name": "课程管理",
            "icon": "VideoCamera",
            "path": "/xadmin/lessson",
            "routes": [
              {
                "name": "课程方向",
                "icon": "smile",
                "path": "/xadmin/lessson/label_type",
                "component": dynamic({ loader: () => import(/* webpackChunkName: 'p__LabelTypeList' */'/Users/mtianyan/Desktop/Github/OnlineMooc/xadmin/src/pages/LabelTypeList'), loading: require('@/components/PageLoading/index').default}),
                "exact": true
              },
              {
                "name": "课程分类",
                "icon": "smile",
                "path": "/xadmin/lessson/label",
                "component": dynamic({ loader: () => import(/* webpackChunkName: 'p__LabelList' */'/Users/mtianyan/Desktop/Github/OnlineMooc/xadmin/src/pages/LabelList'), loading: require('@/components/PageLoading/index').default}),
                "exact": true
              },
              {
                "name": "课程类型",
                "icon": "smile",
                "path": "/xadmin/lessson/lesson_type",
                "component": dynamic({ loader: () => import(/* webpackChunkName: 'p__LessonTypeList' */'/Users/mtianyan/Desktop/Github/OnlineMooc/xadmin/src/pages/LessonTypeList'), loading: require('@/components/PageLoading/index').default}),
                "exact": true
              },
              {
                "name": "课程本课",
                "icon": "smile",
                "path": "/xadmin/lessson/lesson",
                "component": dynamic({ loader: () => import(/* webpackChunkName: 'p__LessonList' */'/Users/mtianyan/Desktop/Github/OnlineMooc/xadmin/src/pages/LessonList'), loading: require('@/components/PageLoading/index').default}),
                "exact": true
              },
              {
                "name": "课程章节",
                "icon": "smile",
                "path": "/xadmin/lessson/chapter",
                "component": dynamic({ loader: () => import(/* webpackChunkName: 'p__ChapterList' */'/Users/mtianyan/Desktop/Github/OnlineMooc/xadmin/src/pages/ChapterList'), loading: require('@/components/PageLoading/index').default}),
                "exact": true
              },
              {
                "name": "章节小节",
                "icon": "smile",
                "path": "/xadmin/lessson/term",
                "component": dynamic({ loader: () => import(/* webpackChunkName: 'p__TermList' */'/Users/mtianyan/Desktop/Github/OnlineMooc/xadmin/src/pages/TermList'), loading: require('@/components/PageLoading/index').default}),
                "exact": true
              },
              {
                "name": "课程简介",
                "icon": "smile",
                "path": "/xadmin/lessson/catalog",
                "component": dynamic({ loader: () => import(/* webpackChunkName: 'p__CatalogList' */'/Users/mtianyan/Desktop/Github/OnlineMooc/xadmin/src/pages/CatalogList'), loading: require('@/components/PageLoading/index').default}),
                "exact": true
              },
              {
                "name": "课程评论",
                "icon": "smile",
                "path": "/xadmin/lessson/comment",
                "component": dynamic({ loader: () => import(/* webpackChunkName: 'p__CommentList' */'/Users/mtianyan/Desktop/Github/OnlineMooc/xadmin/src/pages/CommentList'), loading: require('@/components/PageLoading/index').default}),
                "exact": true
              },
              {
                "name": "课程提问",
                "icon": "smile",
                "path": "/xadmin/lessson/qa",
                "component": dynamic({ loader: () => import(/* webpackChunkName: 'p__QaList' */'/Users/mtianyan/Desktop/Github/OnlineMooc/xadmin/src/pages/QaList'), loading: require('@/components/PageLoading/index').default}),
                "exact": true
              },
              {
                "name": "问题状态",
                "icon": "smile",
                "path": "/xadmin/lessson/qa_type",
                "component": dynamic({ loader: () => import(/* webpackChunkName: 'p__QaTypeList' */'/Users/mtianyan/Desktop/Github/OnlineMooc/xadmin/src/pages/QaTypeList'), loading: require('@/components/PageLoading/index').default}),
                "exact": true
              },
              {
                "name": "课程难度",
                "icon": "smile",
                "path": "/xadmin/lessson/lesson_hard_type",
                "component": dynamic({ loader: () => import(/* webpackChunkName: 'p__LessonHardTypeList' */'/Users/mtianyan/Desktop/Github/OnlineMooc/xadmin/src/pages/LessonHardTypeList'), loading: require('@/components/PageLoading/index').default}),
                "exact": true
              },
              {
                "name": "课程角标",
                "icon": "smile",
                "path": "/xadmin/lessson/lesson_script",
                "component": dynamic({ loader: () => import(/* webpackChunkName: 'p__LessonScriptList' */'/Users/mtianyan/Desktop/Github/OnlineMooc/xadmin/src/pages/LessonScriptList'), loading: require('@/components/PageLoading/index').default}),
                "exact": true
              }
            ]
          },
          {
            "name": "专栏管理",
            "icon": "book",
            "path": "/xadmin/read",
            "routes": [
              {
                "name": "专栏分类",
                "icon": "smile",
                "path": "/xadmin/read/read_type",
                "component": dynamic({ loader: () => import(/* webpackChunkName: 'p__ReadTypeList' */'/Users/mtianyan/Desktop/Github/OnlineMooc/xadmin/src/pages/ReadTypeList'), loading: require('@/components/PageLoading/index').default}),
                "exact": true
              },
              {
                "name": "专栏章节",
                "icon": "smile",
                "path": "/xadmin/read/read_chapter",
                "component": dynamic({ loader: () => import(/* webpackChunkName: 'p__ReadChapterList' */'/Users/mtianyan/Desktop/Github/OnlineMooc/xadmin/src/pages/ReadChapterList'), loading: require('@/components/PageLoading/index').default}),
                "exact": true
              },
              {
                "name": "章节子节",
                "icon": "smile",
                "path": "/xadmin/read/read_chapter_item",
                "component": dynamic({ loader: () => import(/* webpackChunkName: 'p__ReadChapterItemList' */'/Users/mtianyan/Desktop/Github/OnlineMooc/xadmin/src/pages/ReadChapterItemList'), loading: require('@/components/PageLoading/index').default}),
                "exact": true
              }
            ]
          },
          {
            "name": "猿问管理",
            "icon": "QuestionCircle",
            "path": "/xadmin/qa",
            "routes": [
              {
                "name": "问题列表",
                "icon": "smile",
                "path": "/xadmin/qa/question",
                "component": dynamic({ loader: () => import(/* webpackChunkName: 'p__QuestionList' */'/Users/mtianyan/Desktop/Github/OnlineMooc/xadmin/src/pages/QuestionList'), loading: require('@/components/PageLoading/index').default}),
                "exact": true
              },
              {
                "name": "关注标签",
                "icon": "smile",
                "path": "/xadmin/qa/label_follow",
                "component": dynamic({ loader: () => import(/* webpackChunkName: 'p__LabelFollowList' */'/Users/mtianyan/Desktop/Github/OnlineMooc/xadmin/src/pages/LabelFollowList'), loading: require('@/components/PageLoading/index').default}),
                "exact": true
              },
              {
                "name": "回答列表",
                "icon": "smile",
                "path": "/xadmin/qa/answer",
                "component": dynamic({ loader: () => import(/* webpackChunkName: 'p__AnswerList' */'/Users/mtianyan/Desktop/Github/OnlineMooc/xadmin/src/pages/AnswerList'), loading: require('@/components/PageLoading/index').default}),
                "exact": true
              }
            ]
          },
          {
            "name": "手记管理",
            "icon": "PaperClip",
            "path": "/xadmin/article",
            "routes": [
              {
                "name": "文章列表",
                "icon": "smile",
                "path": "/xadmin/article/article",
                "component": dynamic({ loader: () => import(/* webpackChunkName: 'p__ArticleList' */'/Users/mtianyan/Desktop/Github/OnlineMooc/xadmin/src/pages/ArticleList'), loading: require('@/components/PageLoading/index').default}),
                "exact": true
              },
              {
                "name": "文章类型",
                "icon": "smile",
                "path": "/xadmin/article/article_type",
                "component": dynamic({ loader: () => import(/* webpackChunkName: 'p__ArticleTypeList' */'/Users/mtianyan/Desktop/Github/OnlineMooc/xadmin/src/pages/ArticleTypeList'), loading: require('@/components/PageLoading/index').default}),
                "exact": true
              }
            ]
          },
          {
            "name": "优惠管理",
            "icon": "MoneyCollect",
            "path": "/xadmin/coupon",
            "routes": [
              {
                "name": "优惠券码",
                "icon": "smile",
                "path": "/xadmin/coupon/coupon",
                "component": dynamic({ loader: () => import(/* webpackChunkName: 'p__CouponList' */'/Users/mtianyan/Desktop/Github/OnlineMooc/xadmin/src/pages/CouponList'), loading: require('@/components/PageLoading/index').default}),
                "exact": true
              },
              {
                "name": "优惠状态",
                "icon": "smile",
                "path": "/xadmin/coupon/coupon_status",
                "component": dynamic({ loader: () => import(/* webpackChunkName: 'p__CouponStatusList' */'/Users/mtianyan/Desktop/Github/OnlineMooc/xadmin/src/pages/CouponStatusList'), loading: require('@/components/PageLoading/index').default}),
                "exact": true
              },
              {
                "name": "优惠范围",
                "icon": "smile",
                "path": "/xadmin/coupon/coupon_range",
                "component": dynamic({ loader: () => import(/* webpackChunkName: 'p__CouponRangeList' */'/Users/mtianyan/Desktop/Github/OnlineMooc/xadmin/src/pages/CouponRangeList'), loading: require('@/components/PageLoading/index').default}),
                "exact": true
              }
            ]
          },
          {
            "name": "订单管理",
            "icon": "OrderedList",
            "path": "/xadmin/order",
            "routes": [
              {
                "name": "购物车车",
                "icon": "smile",
                "path": "/xadmin/order/cart",
                "component": dynamic({ loader: () => import(/* webpackChunkName: 'p__CartList' */'/Users/mtianyan/Desktop/Github/OnlineMooc/xadmin/src/pages/CartList'), loading: require('@/components/PageLoading/index').default}),
                "exact": true
              },
              {
                "name": "订单列表",
                "icon": "smile",
                "path": "/xadmin/order/order",
                "component": dynamic({ loader: () => import(/* webpackChunkName: 'p__OrderList' */'/Users/mtianyan/Desktop/Github/OnlineMooc/xadmin/src/pages/OrderList'), loading: require('@/components/PageLoading/index').default}),
                "exact": true
              },
              {
                "name": "订单子项",
                "icon": "smile",
                "path": "/xadmin/order/order_item",
                "component": dynamic({ loader: () => import(/* webpackChunkName: 'p__OrderItemList' */'/Users/mtianyan/Desktop/Github/OnlineMooc/xadmin/src/pages/OrderItemList'), loading: require('@/components/PageLoading/index').default}),
                "exact": true
              },
              {
                "name": "订单状态",
                "icon": "smile",
                "path": "/xadmin/order/order_status",
                "component": dynamic({ loader: () => import(/* webpackChunkName: 'p__OrderStatusList' */'/Users/mtianyan/Desktop/Github/OnlineMooc/xadmin/src/pages/OrderStatusList'), loading: require('@/components/PageLoading/index').default}),
                "exact": true
              }
            ]
          },
          {
            "name": "充值管理",
            "icon": "PayCircle",
            "path": "/xadmin/pay",
            "routes": [
              {
                "name": "充值记录",
                "icon": "smile",
                "path": "/xadmin/pay/recharge",
                "component": dynamic({ loader: () => import(/* webpackChunkName: 'p__RechargeList' */'/Users/mtianyan/Desktop/Github/OnlineMooc/xadmin/src/pages/RechargeList'), loading: require('@/components/PageLoading/index').default}),
                "exact": true
              },
              {
                "name": "充值类型",
                "icon": "smile",
                "path": "/xadmin/pay/recharge_action",
                "component": dynamic({ loader: () => import(/* webpackChunkName: 'p__RechargeActionList' */'/Users/mtianyan/Desktop/Github/OnlineMooc/xadmin/src/pages/RechargeActionList'), loading: require('@/components/PageLoading/index').default}),
                "exact": true
              },
              {
                "name": "充值方式",
                "icon": "smile",
                "path": "/xadmin/pay/recharge_pay",
                "component": dynamic({ loader: () => import(/* webpackChunkName: 'p__RechargePayList' */'/Users/mtianyan/Desktop/Github/OnlineMooc/xadmin/src/pages/RechargePayList'), loading: require('@/components/PageLoading/index').default}),
                "exact": true
              }
            ]
          },
          {
            "name": "用户管理",
            "icon": "UsergroupAdd",
            "path": "/xadmin/user",
            "routes": [
              {
                "name": "课程讲师",
                "icon": "smile",
                "path": "/xadmin/user/teacher",
                "component": dynamic({ loader: () => import(/* webpackChunkName: 'p__TeacherList' */'/Users/mtianyan/Desktop/Github/OnlineMooc/xadmin/src/pages/TeacherList'), loading: require('@/components/PageLoading/index').default}),
                "exact": true
              },
              {
                "name": "学生类型",
                "icon": "smile",
                "path": "/xadmin/user/student_type",
                "component": dynamic({ loader: () => import(/* webpackChunkName: 'p__StudentTypeList' */'/Users/mtianyan/Desktop/Github/OnlineMooc/xadmin/src/pages/StudentTypeList'), loading: require('@/components/PageLoading/index').default}),
                "exact": true
              },
              {
                "name": "学生列表",
                "icon": "smile",
                "path": "/xadmin/user/student",
                "component": dynamic({ loader: () => import(/* webpackChunkName: 'p__StudentList' */'/Users/mtianyan/Desktop/Github/OnlineMooc/xadmin/src/pages/StudentList'), loading: require('@/components/PageLoading/index').default}),
                "exact": true
              }
            ]
          },
          {
            "name": "积分商城",
            "icon": "Shop",
            "path": "/xadmin/integral/",
            "routes": [
              {
                "name": "商品类别",
                "icon": "smile",
                "path": "/xadmin/integral/integral_type",
                "component": dynamic({ loader: () => import(/* webpackChunkName: 'p__IntegralTypeList' */'/Users/mtianyan/Desktop/Github/OnlineMooc/xadmin/src/pages/IntegralTypeList'), loading: require('@/components/PageLoading/index').default}),
                "exact": true
              },
              {
                "name": "积分商品",
                "icon": "smile",
                "path": "/xadmin/integral/integral",
                "component": dynamic({ loader: () => import(/* webpackChunkName: 'p__IntegralList' */'/Users/mtianyan/Desktop/Github/OnlineMooc/xadmin/src/pages/IntegralList'), loading: require('@/components/PageLoading/index').default}),
                "exact": true
              }
            ]
          },
          {
            "name": "用户中心",
            "icon": "user",
            "path": "/xadmin/user_info",
            "routes": [
              {
                "name": "学习课程",
                "icon": "smile",
                "path": "/xadmin/user_info/user_lesson",
                "component": dynamic({ loader: () => import(/* webpackChunkName: 'p__UserLessonList' */'/Users/mtianyan/Desktop/Github/OnlineMooc/xadmin/src/pages/UserLessonList'), loading: require('@/components/PageLoading/index').default}),
                "exact": true
              },
              {
                "name": "用户通知",
                "icon": "smile",
                "path": "/xadmin/user_info/user_notice",
                "component": dynamic({ loader: () => import(/* webpackChunkName: 'p__UserNoticeList' */'/Users/mtianyan/Desktop/Github/OnlineMooc/xadmin/src/pages/UserNoticeList'), loading: require('@/components/PageLoading/index').default}),
                "exact": true
              },
              {
                "name": "搜索历史",
                "icon": "smile",
                "path": "/xadmin/user_info/history",
                "component": dynamic({ loader: () => import(/* webpackChunkName: 'p__HistoryList' */'/Users/mtianyan/Desktop/Github/OnlineMooc/xadmin/src/pages/HistoryList'), loading: require('@/components/PageLoading/index').default}),
                "exact": true
              },
              {
                "name": "用户咨询",
                "icon": "smile",
                "path": "/xadmin/user_info/consult",
                "component": dynamic({ loader: () => import(/* webpackChunkName: 'p__ConsultList' */'/Users/mtianyan/Desktop/Github/OnlineMooc/xadmin/src/pages/ConsultList'), loading: require('@/components/PageLoading/index').default}),
                "exact": true
              },
              {
                "name": "购买账单",
                "icon": "smile",
                "path": "/xadmin/user_info/bill",
                "component": dynamic({ loader: () => import(/* webpackChunkName: 'p__BillList' */'/Users/mtianyan/Desktop/Github/OnlineMooc/xadmin/src/pages/BillList'), loading: require('@/components/PageLoading/index').default}),
                "exact": true
              },
              {
                "name": "地址信息",
                "icon": "smile",
                "path": "/xadmin/user_info/address",
                "component": dynamic({ loader: () => import(/* webpackChunkName: 'p__AddressList' */'/Users/mtianyan/Desktop/Github/OnlineMooc/xadmin/src/pages/AddressList'), loading: require('@/components/PageLoading/index').default}),
                "exact": true
              },
              {
                "name": "登录类型",
                "icon": "smile",
                "path": "/xadmin/user_info/log_type",
                "component": dynamic({ loader: () => import(/* webpackChunkName: 'p__LogTypeList' */'/Users/mtianyan/Desktop/Github/OnlineMooc/xadmin/src/pages/LogTypeList'), loading: require('@/components/PageLoading/index').default}),
                "exact": true
              },
              {
                "name": "登录日志",
                "icon": "smile",
                "path": "/xadmin/user_info/log",
                "component": dynamic({ loader: () => import(/* webpackChunkName: 'p__LogList' */'/Users/mtianyan/Desktop/Github/OnlineMooc/xadmin/src/pages/LogList'), loading: require('@/components/PageLoading/index').default}),
                "exact": true
              }
            ]
          },
          {
            "name": "首页管理",
            "icon": "setting",
            "path": "/xadmin/home",
            "routes": [
              {
                "name": "首页大图",
                "icon": "smile",
                "path": "/xadmin/home/slider",
                "component": dynamic({ loader: () => import(/* webpackChunkName: 'p__SliderList' */'/Users/mtianyan/Desktop/Github/OnlineMooc/xadmin/src/pages/SliderList'), loading: require('@/components/PageLoading/index').default}),
                "exact": true
              },
              {
                "name": "首页菜单",
                "icon": "smile",
                "path": "/xadmin/home/navigation",
                "component": dynamic({ loader: () => import(/* webpackChunkName: 'p__NavigationList' */'/Users/mtianyan/Desktop/Github/OnlineMooc/xadmin/src/pages/NavigationList'), loading: require('@/components/PageLoading/index').default}),
                "exact": true
              },
              {
                "name": "公共配置",
                "icon": "smile",
                "path": "/xadmin/home/common_path_config",
                "component": dynamic({ loader: () => import(/* webpackChunkName: 'p__CommonPathConfigList' */'/Users/mtianyan/Desktop/Github/OnlineMooc/xadmin/src/pages/CommonPathConfigList'), loading: require('@/components/PageLoading/index').default}),
                "exact": true
              },
              {
                "name": "首页导航",
                "icon": "smile",
                "path": "/xadmin/home/nav",
                "component": dynamic({ loader: () => import(/* webpackChunkName: 'p__NavList' */'/Users/mtianyan/Desktop/Github/OnlineMooc/xadmin/src/pages/NavList'), loading: require('@/components/PageLoading/index').default}),
                "exact": true
              },
              {
                "name": "底部配置",
                "icon": "smile",
                "path": "/xadmin/home/footer",
                "component": dynamic({ loader: () => import(/* webpackChunkName: 'p__FooterList' */'/Users/mtianyan/Desktop/Github/OnlineMooc/xadmin/src/pages/FooterList'), loading: require('@/components/PageLoading/index').default}),
                "exact": true
              }
            ]
          },
          {
            "name": "系统管理",
            "icon": "setting",
            "path": "/xadmin/sys",
            "routes": [
              {
                "name": "系统日志",
                "icon": "smile",
                "path": "/xadmin/sys/sys_log",
                "component": dynamic({ loader: () => import(/* webpackChunkName: 'p__SysLogList' */'/Users/mtianyan/Desktop/Github/OnlineMooc/xadmin/src/pages/SysLogList'), loading: require('@/components/PageLoading/index').default}),
                "exact": true
              },
              {
                "name": "热搜榜单",
                "icon": "smile",
                "path": "/xadmin/sys/hot",
                "component": dynamic({ loader: () => import(/* webpackChunkName: 'p__HotList' */'/Users/mtianyan/Desktop/Github/OnlineMooc/xadmin/src/pages/HotList'), loading: require('@/components/PageLoading/index').default}),
                "exact": true
              },
              {
                "name": "系统通知",
                "icon": "smile",
                "path": "/xadmin/sys/notice",
                "component": dynamic({ loader: () => import(/* webpackChunkName: 'p__NoticeList' */'/Users/mtianyan/Desktop/Github/OnlineMooc/xadmin/src/pages/NoticeList'), loading: require('@/components/PageLoading/index').default}),
                "exact": true
              },
              {
                "name": "系统用户",
                "icon": "smile",
                "path": "/xadmin/sys/user",
                "component": dynamic({ loader: () => import(/* webpackChunkName: 'p__UserList' */'/Users/mtianyan/Desktop/Github/OnlineMooc/xadmin/src/pages/UserList'), loading: require('@/components/PageLoading/index').default}),
                "exact": true
              }
            ]
          },
          {
            "component": dynamic({ loader: () => import(/* webpackChunkName: 'p__404' */'/Users/mtianyan/Desktop/Github/OnlineMooc/xadmin/src/pages/404'), loading: require('@/components/PageLoading/index').default}),
            "exact": true
          }
        ]
      },
      {
        "component": dynamic({ loader: () => import(/* webpackChunkName: 'p__404' */'/Users/mtianyan/Desktop/Github/OnlineMooc/xadmin/src/pages/404'), loading: require('@/components/PageLoading/index').default}),
        "exact": true
      }
    ]
  },
  {
    "component": dynamic({ loader: () => import(/* webpackChunkName: 'p__404' */'/Users/mtianyan/Desktop/Github/OnlineMooc/xadmin/src/pages/404'), loading: require('@/components/PageLoading/index').default}),
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
