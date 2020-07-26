// @ts-nocheck
import { ApplyPluginsType, dynamic } from '/Users/mtianyan/Desktop/Github/Mxonline3/front_end/node_modules/@umijs/runtime';
import { plugin } from './plugin';

const routes = [
  {
    "path": "/xadmin/login",
    "component": dynamic({ loader: () => import(/* webpackChunkName: 'layouts__UserLayout' */'/Users/mtianyan/Desktop/Github/Mxonline3/front_end/src/layouts/UserLayout'), loading: require('@/components/PageLoading/index').default}),
    "routes": [
      {
        "name": "login",
        "path": "/xadmin/login",
        "component": dynamic({ loader: () => import(/* webpackChunkName: 'p__UserLogin' */'/Users/mtianyan/Desktop/Github/Mxonline3/front_end/src/pages/UserLogin'), loading: require('@/components/PageLoading/index').default}),
        "exact": true
      }
    ]
  },
  {
    "path": "/",
    "component": dynamic({ loader: () => import(/* webpackChunkName: 'layouts__SecurityLayout' */'/Users/mtianyan/Desktop/Github/Mxonline3/front_end/src/layouts/SecurityLayout'), loading: require('@/components/PageLoading/index').default}),
    "routes": [
      {
        "path": "/",
        "component": dynamic({ loader: () => import(/* webpackChunkName: 'layouts__BasicLayout' */'/Users/mtianyan/Desktop/Github/Mxonline3/front_end/src/layouts/BasicLayout'), loading: require('@/components/PageLoading/index').default}),
        "routes": [
          {
            "path": "/",
            "redirect": "/xadmin",
            "exact": true
          },
          {
            "name": "首页",
            "path": "/xadmin",
            "icon": "smile",
            "component": dynamic({ loader: () => import(/* webpackChunkName: 'p__DashBoard' */'/Users/mtianyan/Desktop/Github/Mxonline3/front_end/src/pages/DashBoard'), loading: require('@/components/PageLoading/index').default}),
            "exact": true
          },
          {
            "name": "所在城市",
            "icon": "smile",
            "path": "/xadmin/city/list",
            "component": dynamic({ loader: () => import(/* webpackChunkName: 'p__CityList' */'/Users/mtianyan/Desktop/Github/Mxonline3/front_end/src/pages/CityList'), loading: require('@/components/PageLoading/index').default}),
            "exact": true
          },
          {
            "name": "机构信息",
            "icon": "smile",
            "path": "/xadmin/org/list",
            "component": dynamic({ loader: () => import(/* webpackChunkName: 'p__OrgList' */'/Users/mtianyan/Desktop/Github/Mxonline3/front_end/src/pages/OrgList'), loading: require('@/components/PageLoading/index').default}),
            "exact": true
          },
          {
            "name": "机构讲师",
            "icon": "smile",
            "path": "/xadmin/teacher/list",
            "component": dynamic({ loader: () => import(/* webpackChunkName: 'p__TeacherList' */'/Users/mtianyan/Desktop/Github/Mxonline3/front_end/src/pages/TeacherList'), loading: require('@/components/PageLoading/index').default}),
            "exact": true
          },
          {
            "name": "课程信息",
            "icon": "user",
            "path": "/xadmin/course/list",
            "component": dynamic({ loader: () => import(/* webpackChunkName: 'p__CourseList' */'/Users/mtianyan/Desktop/Github/Mxonline3/front_end/src/pages/CourseList'), loading: require('@/components/PageLoading/index').default}),
            "exact": true
          },
          {
            "name": "章节信息",
            "icon": "user",
            "path": "/xadmin/lesson/list",
            "component": dynamic({ loader: () => import(/* webpackChunkName: 'p__LessonList' */'/Users/mtianyan/Desktop/Github/Mxonline3/front_end/src/pages/LessonList'), loading: require('@/components/PageLoading/index').default}),
            "exact": true
          },
          {
            "name": "视频信息",
            "icon": "user",
            "path": "/xadmin/video/list",
            "component": dynamic({ loader: () => import(/* webpackChunkName: 'p__VideoList' */'/Users/mtianyan/Desktop/Github/Mxonline3/front_end/src/pages/VideoList'), loading: require('@/components/PageLoading/index').default}),
            "exact": true
          },
          {
            "name": "课程资源",
            "icon": "user",
            "path": "/xadmin/resource/list",
            "component": dynamic({ loader: () => import(/* webpackChunkName: 'p__ResourceList' */'/Users/mtianyan/Desktop/Github/Mxonline3/front_end/src/pages/ResourceList'), loading: require('@/components/PageLoading/index').default}),
            "exact": true
          },
          {
            "name": "课程评论",
            "icon": "user",
            "path": "/xadmin/comment/list",
            "component": dynamic({ loader: () => import(/* webpackChunkName: 'p__CommentList' */'/Users/mtianyan/Desktop/Github/Mxonline3/front_end/src/pages/CommentList'), loading: require('@/components/PageLoading/index').default}),
            "exact": true
          },
          {
            "name": "用户信息",
            "icon": "user",
            "path": "/xadmin/users/list",
            "component": dynamic({ loader: () => import(/* webpackChunkName: 'p__UserList' */'/Users/mtianyan/Desktop/Github/Mxonline3/front_end/src/pages/UserList'), loading: require('@/components/PageLoading/index').default}),
            "exact": true
          },
          {
            "path": "/xadmin/code/list",
            "name": "用户验证",
            "icon": "ApartmentOutlined",
            "component": dynamic({ loader: () => import(/* webpackChunkName: 'p__CodeList' */'/Users/mtianyan/Desktop/Github/Mxonline3/front_end/src/pages/CodeList'), loading: require('@/components/PageLoading/index').default}),
            "exact": true
          },
          {
            "path": "/xadmin/users/course",
            "name": "用户课程",
            "icon": "ApartmentOutlined",
            "component": dynamic({ loader: () => import(/* webpackChunkName: 'p__UserCourseList' */'/Users/mtianyan/Desktop/Github/Mxonline3/front_end/src/pages/UserCourseList'), loading: require('@/components/PageLoading/index').default}),
            "exact": true
          },
          {
            "path": "/xadmin/users/fav",
            "name": "用户收藏",
            "icon": "ApartmentOutlined",
            "component": dynamic({ loader: () => import(/* webpackChunkName: 'p__UserFav' */'/Users/mtianyan/Desktop/Github/Mxonline3/front_end/src/pages/UserFav'), loading: require('@/components/PageLoading/index').default}),
            "exact": true
          },
          {
            "path": "/xadmin/users/message",
            "name": "用户消息",
            "icon": "ApartmentOutlined",
            "component": dynamic({ loader: () => import(/* webpackChunkName: 'p__UserMessage' */'/Users/mtianyan/Desktop/Github/Mxonline3/front_end/src/pages/UserMessage'), loading: require('@/components/PageLoading/index').default}),
            "exact": true
          },
          {
            "path": "/xadmin/users/ask",
            "name": "用户咨询",
            "icon": "ApartmentOutlined",
            "component": dynamic({ loader: () => import(/* webpackChunkName: 'p__UserAskList' */'/Users/mtianyan/Desktop/Github/Mxonline3/front_end/src/pages/UserAskList'), loading: require('@/components/PageLoading/index').default}),
            "exact": true
          },
          {
            "path": "/xadmin/banner/ask",
            "name": "首页轮播",
            "icon": "ApartmentOutlined",
            "component": dynamic({ loader: () => import(/* webpackChunkName: 'p__BannerList' */'/Users/mtianyan/Desktop/Github/Mxonline3/front_end/src/pages/BannerList'), loading: require('@/components/PageLoading/index').default}),
            "exact": true
          },
          {
            "component": dynamic({ loader: () => import(/* webpackChunkName: 'p__404' */'/Users/mtianyan/Desktop/Github/Mxonline3/front_end/src/pages/404'), loading: require('@/components/PageLoading/index').default}),
            "exact": true
          }
        ]
      },
      {
        "component": dynamic({ loader: () => import(/* webpackChunkName: 'p__404' */'/Users/mtianyan/Desktop/Github/Mxonline3/front_end/src/pages/404'), loading: require('@/components/PageLoading/index').default}),
        "exact": true
      }
    ]
  },
  {
    "component": dynamic({ loader: () => import(/* webpackChunkName: 'p__404' */'/Users/mtianyan/Desktop/Github/Mxonline3/front_end/src/pages/404'), loading: require('@/components/PageLoading/index').default}),
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
