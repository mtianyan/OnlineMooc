// @ts-nocheck
import { ApplyPluginsType, dynamic } from '/Users/mtianyan/tyRepos/Python/Mxonline3/xadmin/node_modules/@umijs/runtime';
import { plugin } from './plugin';

const routes = [
  {
    "path": "/xadmin/login",
    "component": dynamic({ loader: () => import(/* webpackChunkName: 'layouts__UserLayout' */'/Users/mtianyan/tyRepos/Python/Mxonline3/xadmin/src/layouts/UserLayout'), loading: require('@/components/PageLoading/index').default}),
    "routes": [
      {
        "name": "login",
        "path": "/xadmin/login",
        "component": dynamic({ loader: () => import(/* webpackChunkName: 'p__UserLogin' */'/Users/mtianyan/tyRepos/Python/Mxonline3/xadmin/src/pages/UserLogin'), loading: require('@/components/PageLoading/index').default}),
        "exact": true
      }
    ]
  },
  {
    "path": "/xadmin/",
    "component": dynamic({ loader: () => import(/* webpackChunkName: 'layouts__SecurityLayout' */'/Users/mtianyan/tyRepos/Python/Mxonline3/xadmin/src/layouts/SecurityLayout'), loading: require('@/components/PageLoading/index').default}),
    "routes": [
      {
        "path": "/xadmin/",
        "component": dynamic({ loader: () => import(/* webpackChunkName: 'layouts__BasicLayout' */'/Users/mtianyan/tyRepos/Python/Mxonline3/xadmin/src/layouts/BasicLayout'), loading: require('@/components/PageLoading/index').default}),
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
            "component": dynamic({ loader: () => import(/* webpackChunkName: 'p__DashBoard' */'/Users/mtianyan/tyRepos/Python/Mxonline3/xadmin/src/pages/DashBoard'), loading: require('@/components/PageLoading/index').default}),
            "exact": true
          },
          {
            "name": "所在城市",
            "icon": "smile",
            "path": "/xadmin/city_dict",
            "component": dynamic({ loader: () => import(/* webpackChunkName: 'p__CityDictList' */'/Users/mtianyan/tyRepos/Python/Mxonline3/xadmin/src/pages/CityDictList'), loading: require('@/components/PageLoading/index').default}),
            "exact": true
          },
          {
            "name": "课程机构",
            "icon": "smile",
            "path": "/xadmin/course_org",
            "component": dynamic({ loader: () => import(/* webpackChunkName: 'p__CourseOrgList' */'/Users/mtianyan/tyRepos/Python/Mxonline3/xadmin/src/pages/CourseOrgList'), loading: require('@/components/PageLoading/index').default}),
            "authority": [
              "admin",
              "user"
            ],
            "exact": true
          },
          {
            "name": "机构讲师",
            "icon": "smile",
            "path": "/xadmin/teacher",
            "component": dynamic({ loader: () => import(/* webpackChunkName: 'p__TeacherList' */'/Users/mtianyan/tyRepos/Python/Mxonline3/xadmin/src/pages/TeacherList'), loading: require('@/components/PageLoading/index').default}),
            "exact": true
          },
          {
            "name": "课程信息",
            "icon": "smile",
            "path": "/xadmin/course",
            "component": dynamic({ loader: () => import(/* webpackChunkName: 'p__CourseList' */'/Users/mtianyan/tyRepos/Python/Mxonline3/xadmin/src/pages/CourseList'), loading: require('@/components/PageLoading/index').default}),
            "exact": true
          },
          {
            "name": "章节信息",
            "icon": "smile",
            "path": "/xadmin/lesson",
            "component": dynamic({ loader: () => import(/* webpackChunkName: 'p__LessonList' */'/Users/mtianyan/tyRepos/Python/Mxonline3/xadmin/src/pages/LessonList'), loading: require('@/components/PageLoading/index').default}),
            "exact": true
          },
          {
            "name": "视频信息",
            "icon": "smile",
            "path": "/xadmin/video",
            "component": dynamic({ loader: () => import(/* webpackChunkName: 'p__VideoList' */'/Users/mtianyan/tyRepos/Python/Mxonline3/xadmin/src/pages/VideoList'), loading: require('@/components/PageLoading/index').default}),
            "exact": true
          },
          {
            "name": "课程资源",
            "icon": "smile",
            "path": "/xadmin/course_resource",
            "component": dynamic({ loader: () => import(/* webpackChunkName: 'p__CourseResourceList' */'/Users/mtianyan/tyRepos/Python/Mxonline3/xadmin/src/pages/CourseResourceList'), loading: require('@/components/PageLoading/index').default}),
            "exact": true
          },
          {
            "name": "课程评论",
            "icon": "smile",
            "path": "/xadmin/course_comments",
            "component": dynamic({ loader: () => import(/* webpackChunkName: 'p__CourseCommentsList' */'/Users/mtianyan/tyRepos/Python/Mxonline3/xadmin/src/pages/CourseCommentsList'), loading: require('@/components/PageLoading/index').default}),
            "exact": true
          },
          {
            "name": "用户信息",
            "icon": "smile",
            "path": "/xadmin/user_profile",
            "component": dynamic({ loader: () => import(/* webpackChunkName: 'p__UserProfileList' */'/Users/mtianyan/tyRepos/Python/Mxonline3/xadmin/src/pages/UserProfileList'), loading: require('@/components/PageLoading/index').default}),
            "exact": true
          },
          {
            "name": "邮箱验证",
            "icon": "smile",
            "path": "/xadmin/email_verify_record",
            "component": dynamic({ loader: () => import(/* webpackChunkName: 'p__EmailVerifyRecordList' */'/Users/mtianyan/tyRepos/Python/Mxonline3/xadmin/src/pages/EmailVerifyRecordList'), loading: require('@/components/PageLoading/index').default}),
            "exact": true
          },
          {
            "name": "首页轮播",
            "icon": "smile",
            "path": "/xadmin/banner",
            "component": dynamic({ loader: () => import(/* webpackChunkName: 'p__BannerList' */'/Users/mtianyan/tyRepos/Python/Mxonline3/xadmin/src/pages/BannerList'), loading: require('@/components/PageLoading/index').default}),
            "exact": true
          },
          {
            "name": "用户咨询",
            "icon": "smile",
            "path": "/xadmin/user_ask",
            "component": dynamic({ loader: () => import(/* webpackChunkName: 'p__UserAskList' */'/Users/mtianyan/tyRepos/Python/Mxonline3/xadmin/src/pages/UserAskList'), loading: require('@/components/PageLoading/index').default}),
            "exact": true
          },
          {
            "name": "用户收藏",
            "icon": "smile",
            "path": "/xadmin/user_favorite",
            "component": dynamic({ loader: () => import(/* webpackChunkName: 'p__UserFavoriteList' */'/Users/mtianyan/tyRepos/Python/Mxonline3/xadmin/src/pages/UserFavoriteList'), loading: require('@/components/PageLoading/index').default}),
            "exact": true
          },
          {
            "name": "用户消息",
            "icon": "smile",
            "path": "/xadmin/user_message",
            "component": dynamic({ loader: () => import(/* webpackChunkName: 'p__UserMessageList' */'/Users/mtianyan/tyRepos/Python/Mxonline3/xadmin/src/pages/UserMessageList'), loading: require('@/components/PageLoading/index').default}),
            "exact": true
          },
          {
            "name": "用户课程",
            "icon": "smile",
            "path": "/xadmin/user_course",
            "component": dynamic({ loader: () => import(/* webpackChunkName: 'p__UserCourseList' */'/Users/mtianyan/tyRepos/Python/Mxonline3/xadmin/src/pages/UserCourseList'), loading: require('@/components/PageLoading/index').default}),
            "exact": true
          },
          {
            "name": "TyAdmin日志",
            "icon": "smile",
            "path": "/xadmin/ty_admin_sys_log",
            "component": dynamic({ loader: () => import(/* webpackChunkName: 'p__TyAdminSysLogList' */'/Users/mtianyan/tyRepos/Python/Mxonline3/xadmin/src/pages/TyAdminSysLogList'), loading: require('@/components/PageLoading/index').default}),
            "exact": true
          },
          {
            "name": "TyAdmin验证",
            "icon": "smile",
            "path": "/xadmin/ty_admin_email_verify_record",
            "component": dynamic({ loader: () => import(/* webpackChunkName: 'p__TyAdminEmailVerifyRecordList' */'/Users/mtianyan/tyRepos/Python/Mxonline3/xadmin/src/pages/TyAdminEmailVerifyRecordList'), loading: require('@/components/PageLoading/index').default}),
            "exact": true
          },
          {
            "component": dynamic({ loader: () => import(/* webpackChunkName: 'p__404' */'/Users/mtianyan/tyRepos/Python/Mxonline3/xadmin/src/pages/404'), loading: require('@/components/PageLoading/index').default}),
            "exact": true
          }
        ]
      },
      {
        "component": dynamic({ loader: () => import(/* webpackChunkName: 'p__404' */'/Users/mtianyan/tyRepos/Python/Mxonline3/xadmin/src/pages/404'), loading: require('@/components/PageLoading/index').default}),
        "exact": true
      }
    ]
  },
  {
    "component": dynamic({ loader: () => import(/* webpackChunkName: 'p__404' */'/Users/mtianyan/tyRepos/Python/Mxonline3/xadmin/src/pages/404'), loading: require('@/components/PageLoading/index').default}),
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
