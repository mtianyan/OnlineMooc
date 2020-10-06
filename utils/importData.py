import demjson

from xadmin_api_cli.utils import init_django_env

name = input("请输入项目settings位置:")
init_django_env(name)
from app_api.models import *
import django
from django.contrib.auth.hashers import make_password


def import_header():
    txt = """
    [
      {
        title: "免费课程",
        path: "/course",
        icon: ""
      },
      {
        title: "实战课程",
        path: "/lesson",
        icon: ""
      },
      {
        title: "专栏",
        path: "/read",
        icon: "https://www.imooc.com/static/img/common/new.png"
      },
      {
        title: "猿问",
        path: "/question",
        icon: ""
      },
      {
        title: "手记",
        path: "/article",
        icon: ""
      }
    ]
    """
    txt = demjson.decode(txt)
    for one in txt:
        item = CommonPathConfig(title=one["title"], path=one["path"], icon=one["icon"], type="h")
        item.save()


def import_footer():
    txt = """[
  {
    title: "企业合作",
    url: ""
  },
  {
    title: "人才招聘",
    url: ""
  },
  {
    title: "联系我们",
    url: ""
  },
  {
    title: "讲师招募",
    url: ""
  },
  {
    title: "帮助中心",
    url: ""
  },
  {
    title: "意见反馈",
    url: ""
  },
  {
    title: "慕课大学",
    url: ""
  },
  {
    title: "代码托管",
    url: ""
  },
  {
    title: "友情链接",
    url: ""
  }
]"""
    txt = demjson.decode(txt)
    for one in txt:
        item = CommonPathConfig(title=one["title"], path=one["url"], type="f")
        item.save()


def import_hot():
    txt = """
    [
      { value: 'React' },
  { value: '面试' },
  { value: '算法' },
  { value: 'Vue.js' },
  { value: 'Python' },
  { value: 'GO语言' },
  { value: '小程序' },
  { value: '毕设' }
]
    """
    txt = demjson.decode(txt)
    for one in txt:
        item = Hot(value=one["value"])
        item.save()


def import_slider():
    txt = """
   [
  {
    img: "https://img.mukewang.com/5d1e0a1800013ca916000540.jpg",
    sort: 1
  },
  { 
    img: "https://img.mukewang.com/5d1c5aec00011c1016000540.jpg",
    sort: 2
  },
  {
    img: "https://img.mukewang.com/5d108b1500010bfe18720632.jpg",
    sort: 3
  },
  {
    img: "https://img.mukewang.com/5d1466c5000172a516000540.jpg",
    sort: 4
  },
  {
    img: "https://img.mukewang.com/5cb833cf0001efb716000540.jpg",
    sort: 5
  },
  {
    img: "https://img.mukewang.com/5c0fd2630001ef2118720632.jpg",
    sort: 6
  }
]
    """
    txt = demjson.decode(txt)
    for one in txt:
        item = Slider(img=one["img"], sort=one["sort"])
        item.save()


def import_navigation():
    txt = """
  [
  {
    title: '前沿 / 区块链 / 人工智能',
    code: '4'
  },
  {
    title: '前端 / 小程序 / JS',
    code: '0'
  },
  {
    title: '后端 / JAVA / Python',
    code: '1'
  },
  {
    title: '移动 / Android / iOS',
    code: '2'
  },
  {
    title: '云计算 / 大数据 / 容器',
    code: '3,5'
  },
  {
    title: '运维 / 测试 / 数据库',
    code: '6,7'
  },
  {
    title: 'UI设计 / 3D动画 / 游戏',
    code: '8'
  }
]
    """
    txt = demjson.decode(txt)
    for one in txt:
        item = Navigation(title=one["title"], code=one["code"])
        item.save()


def import_label_type():
    txt = """
  [
  {
    title: '前端开发',
    code: 0,
    sort: 0
  },
  {
    title: '后端开发',
    code: 1,
    sort: 1
  },
  {
    title: '移动端开发',
    code: 2,
    sort: 2
  },
  {
    title: '计算机基础',
    code: 3,
    sort: 3
  },
  {
    title: '前沿技术',
    code: 4,
    sort: 4
  },
  {
    title: '云计算&大数据',
    code: 5,
    sort: 5
  },
  {
    title: '运维&测试',
    code: 6,
    sort: 6
  },
  {
    title: '数据库',
    code: 7,
    sort: 7
  },
  {
    title: 'UI设计&多媒体',
    code: 8,
    sort: 8
  }
]
    """
    txt = demjson.decode(txt)
    for one in txt:
        item = LabelType(title=one["title"], code=one["code"], sort=one["sort"])
        item.save()


def import_label():
    txt = """ [
  {
    type: {
      text: '前端开发',
      code: 0
    },
    title: 'HTML/CSS',
    sort: 0
  },
  {
    type: {
      text: '前端开发',
      code: 0
    },
    title: 'JavaScript',
    sort: 1
  },
  {
    type: {
      text: '前端开发',
      code: 0
    },
    title: 'TypeScript',
    sort: 2
  },
  {
    type: {
      text: '前端开发',
      code: 0
    },
    title: 'Vue.js',
    sort: 2
  },
  {
    type: {
      text: '前端开发',
      code: 0
    },
    title: 'React.js',
    sort: 3
  },
  {
    type: {
      text: '前端开发',
      code: 0
    },
    title: 'Angular',
    sort: 4
  },
  {
    type: {
      text: '前端开发',
      code: 0
    },
    title: 'Node.js',
    sort: 5
  },
  {
    type: {
      text: '前端开发',
      code: 0
    },
    title: 'jQuery',
    sort: 6
  },
  {
    type: {
      text: '前端开发',
      code: 0
    },
    title: 'Sass/Less',
    sort: 7
  },
  {
    type: {
      text: '前端开发',
      code: 0
    },
    title: 'WebApp',
    sort: 8
  },
  {
    type: {
      text: '前端开发',
      code: 0
    },
    title: '小程序',
    sort: 9
  },
  {
    type: {
      text: '前端开发',
      code: 0
    },
    title: '前端工具',
    sort: 10
  },
  {
    type: {
      text: '后端开发',
      code: 1
    },
    title: 'Java',
    sort: 0
  },
  {
    type: {
      text: '后端开发',
      code: 1
    },
    title: 'SpringBoot',
    sort: 1
  },
  {
    type: {
      text: '后端开发',
      code: 1
    },
    title: 'Spring Cloud',
    sort: 2
  },
  {
    type: {
      text: '后端开发',
      code: 1
    },
    title: 'SSM',
    sort: 3
  },
  {
    type: {
      text: '后端开发',
      code: 1
    },
    title: 'Python',
    sort: 4
  },
  {
    type: {
      text: '后端开发',
      code: 1
    },
    title: '爬虫',
    sort: 5
  },
  {
    type: {
      text: '后端开发',
      code: 1
    },
    title: 'Django',
    sort: 6
  },
  {
    type: {
      text: '后端开发',
      code: 1
    },
    title: 'Flask',
    sort: 7
  },
  {
    type: {
      text: '后端开发',
      code: 1
    },
    title: 'Tornado',
    sort: 8
  },
  {
    type: {
      text: '后端开发',
      code: 1
    },
    title: 'Go',
    sort: 9
  },
  {
    type: {
      text: '后端开发',
      code: 1
    },
    title: 'PHP',
    sort: 10
  },
  {
    type: {
      text: '后端开发',
      code: 1
    },
    title: 'Swoole',
    sort: 11
  },
  {
    type: {
      text: '后端开发',
      code: 1
    },
    title: 'C',
    sort: 12
  },
  {
    type: {
      text: '后端开发',
      code: 1
    },
    title: 'C++',
    sort: 13
  },
  {
    type: {
      text: '移动端开发',
      code: 2
    },
    title: 'Android',
    sort: 0
  },
  {
    type: {
      text: '移动端开发',
      code: 2
    },
    title: 'iOS',
    sort: 1
  },
  {
    type: {
      text: '移动端开发',
      code: 2
    },
    title: 'React native',
    sort: 2
  },
  {
    type: {
      text: '移动端开发',
      code: 2
    },
    title: 'Ionic',
    sort: 3
  },
  {
    type: {
      text: '移动端开发',
      code: 2
    },
    title: 'Flutter',
    sort: 4
  },
  {
    type: {
      text: '移动端开发',
      code: 2
    },
    title: 'Weex',
    sort: 5
  },
  {
    type: {
      text: '计算机基础',
      code: 3
    },
    title: '计算机网络',
    sort: 0
  },
  {
    type: {
      text: '计算机基础',
      code: 3
    },
    title: '算法与数据结构',
    sort: 1
  },
  {
    type: {
      text: '计算机基础',
      code: 3
    },
    title: '数学',
    sort: 2
  },
  {
    type: {
      text: '前沿技术',
      code: 4
    },
    title: '微服务',
    sort: 0
  },
  {
    type: {
      text: '前沿技术',
      code: 4
    },
    title: '区块链',
    sort: 1
  },
  {
    type: {
      text: '前沿技术',
      code: 4
    },
    title: '机器学习',
    sort: 2
  },
  {
    type: {
      text: '前沿技术',
      code: 4
    },
    title: '深度学习',
    sort: 3
  },
  {
    type: {
      text: '前沿技术',
      code: 4
    },
    title: '计算机视觉',
    sort: 5
  },
  {
    type: {
      text: '前沿技术',
      code: 4
    },
    title: '自然语言处理',
    sort: 6
  },
  {
    type: {
      text: '前沿技术',
      code: 4
    },
    title: '数据分析&挖掘',
    sort: 7
  },
  {
    type: {
      text: '云计算&大数据',
      code: 5
    },
    title: '大数据',
    sort: 0
  },
  {
    type: {
      text: '云计算&大数据',
      code: 5
    },
    title: 'Hadoop',
    sort: 1
  },
  {
    type: {
      text: '云计算&大数据',
      code: 5
    },
    title: 'Spark',
    sort: 2
  },
  {
    type: {
      text: '云计算&大数据',
      code: 5
    },
    title: 'Hbase',
    sort: 3
  },
  {
    type: {
      text: '云计算&大数据',
      code: 5
    },
    title: 'Flink',
    sort: 4
  },
  {
    type: {
      text: '云计算&大数据',
      code: 5
    },
    title: 'Storm',
    sort: 5
  },
  {
    type: {
      text: '云计算&大数据',
      code: 5
    },
    title: '阿里云',
    sort: 6
  },
  {
    type: {
      text: '云计算&大数据',
      code: 5
    },
    title: 'Docker',
    sort: 7
  },
  {
    type: {
      text: '云计算&大数据',
      code: 5
    },
    title: 'Kubernetes',
    sort: 8
  },
  {
    type: {
      text: '运维&测试',
      code: 6
    },
    title: '运维',
    sort: 0
  },
  {
    type: {
      text: '运维&测试',
      code: 6
    },
    title: '自动化运维',
    sort: 1
  },
  {
    type: {
      text: '运维&测试',
      code: 6
    },
    title: '中间件',
    sort: 2
  },
  {
    type: {
      text: '运维&测试',
      code: 6
    },
    title: 'Linux',
    sort: 3
  },
  {
    type: {
      text: '运维&测试',
      code: 6
    },
    title: '测试',
    sort: 4
  },
  {
    type: {
      text: '运维&测试',
      code: 6
    },
    title: '功能测试',
    sort: 5
  },
  {
    type: {
      text: '运维&测试',
      code: 6
    },
    title: '性能测试',
    sort: 6
  },
  {
    type: {
      text: '运维&测试',
      code: 6
    },
    title: '自动化测试',
    sort: 7
  },
  {
    type: {
      text: '运维&测试',
      code: 6
    },
    title: '接口测试',
    sort: 8
  },
  {
    type: {
      text: '数据库',
      code: 7
    },
    title: 'MySQL',
    sort: 0
  },
  {
    type: {
      text: '数据库',
      code: 7
    },
    title: 'Redis',
    sort: 1
  },
  {
    type: {
      text: '数据库',
      code: 7
    },
    title: 'MongoDB',
    sort: 2
  },
  {
    type: {
      text: 'UI设计&多媒体',
      code: 8
    },
    title: '动效动画',
    sort: 0
  },
  {
    type: {
      text: 'UI设计&多媒体',
      code: 8
    },
    title: '设计基础',
    sort: 1
  },
  {
    type: {
      text: 'UI设计&多媒体',
      code: 8
    },
    title: '设计工具',
    sort: 2
  },
  {
    type: {
      text: 'UI设计&多媒体',
      code: 8
    },
    title: 'APPUI设计',
    sort: 3
  },
  {
    type: {
      text: 'UI设计&多媒体',
      code: 8
    },
    title: '产品交互',
    sort: 4
  }
]"""
    txt = demjson.decode(txt)
    for one in txt:
        item = Label(title=one["title"], sort=one["sort"], type=LabelType.objects.get(code=one["type"]["code"]))
        item.save()


def import_address():
    txt = """[{
        name: '汪图南',
        phone: '18277776666',
        area: '广东省广州市',
        address: '天河区xxx路xxx号xxx公司',
        postcode: '000000'
      }]"""
    txt = demjson.decode(txt)
    for one in txt:
        item = Address(**one)
        item.save()


def import_article_type():
    txt = """[
  '推荐', '资讯', '最新文章', '区块链', '人工智能', '云计算/大数据', 
  '前端开发', '后端开发', '移动端开发', '工具资源', '职场生活', '幽默段子',
  '其它'
]"""
    txt = demjson.decode(txt)
    for index, one in enumerate(txt):
        item = ArticleType(title=one, code=index)
        item.save()


def import_article():
    txt = """[
  {
    type:{ text: "推荐", code: 0 },
    title: "怎样学习 SpringBoot",
    img: "https://img1.mukewang.com/5bf3a0670001160b02720272-200-200.jpg",
    views: 3537,
    author: "张勤一",
    tag: "Java",
    time: "07.31"
  },
  {
    type:{ text: "推荐", code: 0 },
    title: "【干货合辑】都2019年下半年了， 抓紧上车 ，今年新热技术都在这里！",
    img: "https://img3.mukewang.com/5d006f600001620802500250-200-200.jpg",
    views: 12400,
    author: "慕课网官方_运营中心",
    tag: "Node.js",
    time: "06.12"
  },
  {
    type:{ text: "推荐", code: 0 },
    title: "Go高并发秒杀实践",
    img: "https://www.imooc.com/static/img/article/cover/pic28.jpg",
    views: 2210,
    author: "Cap",
    tag: "Go",
    time: "08.26"
  },
  {
    type:{ text: "推荐", code: 0 },
    title: "Python进阶量化交易专栏场外篇13-TA-Lib库量价指标分析",
    img: "https://www.imooc.com/static/img/article/cover/pic8.jpg",
    views: 261,
    author: "袁霄",
    tag: "python",
    time: "08.25"
  },
  {
    type: { text: "推荐", code: 0 },
    title: "怎样学习 SpringBoot",
    img: "https://img1.mukewang.com/5bf3a0670001160b02720272-200-200.jpg",
    views: 3537,
    author: "张勤一",
    tag: "Java",
    time: "07.31"
  },
  {
    type: { text: "推荐", code: 0 },
    title: "【干货合辑】都2019年下半年了， 抓紧上车 ，今年新热技术都在这里！",
    img: "https://img3.mukewang.com/5d006f600001620802500250-200-200.jpg",
    views: 12400,
    author: "慕课网官方_运营中心",
    tag: "Node.js",
    time: "06.12"
  },
  {
    type: { text: "推荐", code: 0 },
    title: "Go高并发秒杀实践",
    img: "https://www.imooc.com/static/img/article/cover/pic28.jpg",
    views: 2210,
    author: "Cap",
    tag: "Go",
    time: "08.26"
  },
  {
    type: { text: "推荐", code: 0 },
    title: "Python进阶量化交易专栏场外篇13-TA-Lib库量价指标分析",
    img: "https://www.imooc.com/static/img/article/cover/pic8.jpg",
    views: 261,
    author: "袁霄",
    tag: "python",
    time: "08.25"
  },
  {
    type: { text: "推荐", code: 0 },
    title: "怎样学习 SpringBoot",
    img: "https://img1.mukewang.com/5bf3a0670001160b02720272-200-200.jpg",
    views: 3537,
    author: "张勤一",
    tag: "Java",
    time: "07.31"
  },
  {
    type: { text: "推荐", code: 0 },
    title: "【干货合辑】都2019年下半年了， 抓紧上车 ，今年新热技术都在这里！",
    img: "https://img3.mukewang.com/5d006f600001620802500250-200-200.jpg",
    views: 12400,
    author: "慕课网官方_运营中心",
    tag: "Node.js",
    time: "06.12"
  },
  {
    type: { text: "推荐", code: 0 },
    title: "Go高并发秒杀实践",
    img: "https://www.imooc.com/static/img/article/cover/pic28.jpg",
    views: 2210,
    author: "Cap",
    tag: "Go",
    time: "08.26"
  },
  {
    type: { text: "推荐", code: 0 },
    title: "Python进阶量化交易专栏场外篇13-TA-Lib库量价指标分析",
    img: "https://www.imooc.com/static/img/article/cover/pic8.jpg",
    views: 261,
    author: "袁霄",
    tag: "python",
    time: "08.25"
  },
  {
    type: { text: "资讯", code: 1 },
    title: "首届清华智班30人名单公布：贵校第一批AI本科生，状元金牌云集，与姚班",
    img: "https://img.mukewang.com/5d6125c800011ebe06880155-200-200.jpg",
    views: 105,
    author: "量子位",
    tag: "人工智能",
    time: "08.24"
  },
  {
    type: { text: "资讯", code: 1 },
    title: "百度Q2扭亏为盈，市值一夜大涨300亿，李彦宏：呼唤猛将雄兵，要再上行",
    img: "https://img3.mukewang.com/5d006f600001620802500250-200-200.jpg",
    views: 12400,
    author: "量子位",
    tag: "资讯",
    time: "08.21"
  },
  {
    type: { text: "资讯", code: 1 },
    title: "国产AI框架再进化！百度Paddle Lite发布：率先支持华为NPU",
    img: "https://img3.mukewang.com/5bf3a0670001160b02720272-200-200.jpg",
    views: 199,
    author: "量子位",
    tag: "人工智能",
    time: "08.20"
  },
  {
    type: { text: "资讯", code: 1 },
    title: "首届清华智班30人名单公布：贵校第一批AI本科生，状元金牌云集，与姚班",
    img: "https://img.mukewang.com/5d6125c800011ebe06880155-200-200.jpg",
    views: 105,
    author: "量子位",
    tag: "人工智能",
    time: "08.24"
  },
  {
    type: { text: "资讯", code: 1 },
    title: "百度Q2扭亏为盈，市值一夜大涨300亿，李彦宏：呼唤猛将雄兵，要再上行",
    img: "https://img3.mukewang.com/5d006f600001620802500250-200-200.jpg",
    views: 12400,
    author: "量子位",
    tag: "资讯",
    time: "08.21"
  },
  {
    type: { text: "资讯", code: 1 },
    title: "国产AI框架再进化！百度Paddle Lite发布：率先支持华为NPU",
    img: "https://img3.mukewang.com/5bf3a0670001160b02720272-200-200.jpg",
    views: 199,
    author: "量子位",
    tag: "人工智能",
    time: "08.20"
  },
  {
    type: { text: "资讯", code: 1 },
    title: "首届清华智班30人名单公布：贵校第一批AI本科生，状元金牌云集，与姚班",
    img: "https://img.mukewang.com/5d6125c800011ebe06880155-200-200.jpg",
    views: 105,
    author: "量子位",
    tag: "人工智能",
    time: "08.24"
  },
  {
    type: { text: "资讯", code: 1 },
    title: "百度Q2扭亏为盈，市值一夜大涨300亿，李彦宏：呼唤猛将雄兵，要再上行",
    img: "https://img3.mukewang.com/5d006f600001620802500250-200-200.jpg",
    views: 12400,
    author: "量子位",
    tag: "资讯",
    time: "08.21"
  },
  {
    type: { text: "资讯", code: 1 },
    title: "国产AI框架再进化！百度Paddle Lite发布：率先支持华为NPU",
    img: "https://img3.mukewang.com/5bf3a0670001160b02720272-200-200.jpg",
    views: 199,
    author: "量子位",
    tag: "人工智能",
    time: "08.20"
  },
  {
    type: { text: "资讯", code: 1 },
    title: "首届清华智班30人名单公布：贵校第一批AI本科生，状元金牌云集，与姚班",
    img: "https://img.mukewang.com/5d6125c800011ebe06880155-200-200.jpg",
    views: 105,
    author: "量子位",
    tag: "人工智能",
    time: "08.24"
  },
  {
    type: { text: "资讯", code: 1 },
    title: "百度Q2扭亏为盈，市值一夜大涨300亿，李彦宏：呼唤猛将雄兵，要再上行",
    img: "https://img3.mukewang.com/5d006f600001620802500250-200-200.jpg",
    views: 12400,
    author: "量子位",
    tag: "资讯",
    time: "08.21"
  },
  {
    type: { text: "资讯", code: 1 },
    title: "国产AI框架再进化！百度Paddle Lite发布：率先支持华为NPU",
    img: "https://img3.mukewang.com/5bf3a0670001160b02720272-200-200.jpg",
    views: 199,
    author: "量子位",
    tag: "人工智能",
    time: "08.20"
  },
  {
    type: { text: "最新文章", code: 2 },
    title: "微服务架构之分布式数据管理",
    img: "https://img3.mukewang.com/5bf3a0b100015d1e02720272-200-200.jpg",
    views: 105,
    author: "量子位",
    tag: "人工智能",
    time: "08.24"
  },
  {
    type: { text: "最新文章", code: 2 },
    title: "数说成龙电影|数据告诉你，成龙大哥真的老了吗",
    img: "https://img1.mukewang.com/5d65243c0001629506000440-200-200.jpg",
    views: 12400,
    author: "量子位",
    tag: "资讯",
    time: "08.21"
  },
  {
    type: { text: "最新文章", code: 2 },
    title: "脑门贴张纸，骗过最强人脸识别系统！华为莫斯科研究院出品，FaceID已",
    img: "https://img3.mukewang.com/5bf39fdb0001ba0702720272-200-200.jpg",
    views: 199,
    author: "量子位",
    tag: "人工智能",
    time: "08.20"
  },
  {
    type: { text: "最新文章", code: 2 },
    title: "微服务架构之分布式数据管理",
    img: "https://img3.mukewang.com/5bf3a0b100015d1e02720272-200-200.jpg",
    views: 105,
    author: "量子位",
    tag: "人工智能",
    time: "08.24"
  },
  {
    type: { text: "最新文章", code: 2 },
    title: "数说成龙电影|数据告诉你，成龙大哥真的老了吗",
    img: "https://img1.mukewang.com/5d65243c0001629506000440-200-200.jpg",
    views: 12400,
    author: "量子位",
    tag: "资讯",
    time: "08.21"
  },
  {
    type: { text: "最新文章", code: 2 },
    title: "脑门贴张纸，骗过最强人脸识别系统！华为莫斯科研究院出品，FaceID已",
    img: "https://img3.mukewang.com/5bf39fdb0001ba0702720272-200-200.jpg",
    views: 199,
    author: "量子位",
    tag: "人工智能",
    time: "08.20"
  },
  {
    type: { text: "最新文章", code: 2 },
    title: "微服务架构之分布式数据管理",
    img: "https://img3.mukewang.com/5bf3a0b100015d1e02720272-200-200.jpg",
    views: 105,
    author: "量子位",
    tag: "人工智能",
    time: "08.24"
  },
  {
    type: { text: "最新文章", code: 2 },
    title: "数说成龙电影|数据告诉你，成龙大哥真的老了吗",
    img: "https://img1.mukewang.com/5d65243c0001629506000440-200-200.jpg",
    views: 12400,
    author: "量子位",
    tag: "资讯",
    time: "08.21"
  },
  {
    type: { text: "最新文章", code: 2 },
    title: "脑门贴张纸，骗过最强人脸识别系统！华为莫斯科研究院出品，FaceID已",
    img: "https://img3.mukewang.com/5bf39fdb0001ba0702720272-200-200.jpg",
    views: 199,
    author: "量子位",
    tag: "人工智能",
    time: "08.20"
  },
  {
    type: { text: "最新文章", code: 2 },
    title: "微服务架构之分布式数据管理",
    img: "https://img3.mukewang.com/5bf3a0b100015d1e02720272-200-200.jpg",
    views: 105,
    author: "量子位",
    tag: "人工智能",
    time: "08.24"
  },
  {
    type: { text: "最新文章", code: 2 },
    title: "数说成龙电影|数据告诉你，成龙大哥真的老了吗",
    img: "https://img1.mukewang.com/5d65243c0001629506000440-200-200.jpg",
    views: 12400,
    author: "量子位",
    tag: "资讯",
    time: "08.21"
  },
  {
    type: { text: "最新文章", code: 2 },
    title: "脑门贴张纸，骗过最强人脸识别系统！华为莫斯科研究院出品，FaceID已",
    img: "https://img3.mukewang.com/5bf39fdb0001ba0702720272-200-200.jpg",
    views: 199,
    author: "量子位",
    tag: "人工智能",
    time: "08.20"
  },
  {
    type: { text: "区块链", code: 3 },
    title: "遇到洋妞不敢搭讪，程序员的羞涩你不懂",
    img: "https://img1.mukewang.com/5d540db20001227105530311-200-200.jpg",
    views: 105,
    author: "量子位",
    tag: "人工智能",
    time: "08.24"
  },
  {
    type: { text: "区块链", code: 3 },
    title: "学习Filecoin开发一个自己的公链（一）共识 - LearnDap",
    img: "https://img4.mukewang.com/5d3d2f880001946802000200-200-200.jpg",
    views: 12400,
    author: "量子位",
    tag: "资讯",
    time: "08.21"
  },
  {
    type: { text: "区块链", code: 3 },
    title: "一入币圈深似海，浮浮沉沉走人生",
    img: "https://www.imooc.com/static/img/article/cover/pic5.jpg",
    views: 199,
    author: "量子位",
    tag: "人工智能",
    time: "08.20"
  },
  {
    type: { text: "区块链", code: 3 },
    title: "遇到洋妞不敢搭讪，程序员的羞涩你不懂",
    img: "https://img1.mukewang.com/5d540db20001227105530311-200-200.jpg",
    views: 105,
    author: "量子位",
    tag: "人工智能",
    time: "08.24"
  },
  {
    type: { text: "区块链", code: 3 },
    title: "学习Filecoin开发一个自己的公链（一）共识 - LearnDap",
    img: "https://img4.mukewang.com/5d3d2f880001946802000200-200-200.jpg",
    views: 12400,
    author: "量子位",
    tag: "资讯",
    time: "08.21"
  },
  {
    type: { text: "区块链", code: 3 },
    title: "一入币圈深似海，浮浮沉沉走人生",
    img: "https://www.imooc.com/static/img/article/cover/pic5.jpg",
    views: 199,
    author: "量子位",
    tag: "人工智能",
    time: "08.20"
  },
  {
    type: { text: "区块链", code: 3 },
    title: "遇到洋妞不敢搭讪，程序员的羞涩你不懂",
    img: "https://img1.mukewang.com/5d540db20001227105530311-200-200.jpg",
    views: 105,
    author: "量子位",
    tag: "人工智能",
    time: "08.24"
  },
  {
    type: { text: "区块链", code: 3 },
    title: "学习Filecoin开发一个自己的公链（一）共识 - LearnDap",
    img: "https://img4.mukewang.com/5d3d2f880001946802000200-200-200.jpg",
    views: 12400,
    author: "量子位",
    tag: "资讯",
    time: "08.21"
  },
  {
    type: { text: "区块链", code: 3 },
    title: "一入币圈深似海，浮浮沉沉走人生",
    img: "https://www.imooc.com/static/img/article/cover/pic5.jpg",
    views: 199,
    author: "量子位",
    tag: "人工智能",
    time: "08.20"
  },
  {
    type: { text: "区块链", code: 3 },
    title: "遇到洋妞不敢搭讪，程序员的羞涩你不懂",
    img: "https://img1.mukewang.com/5d540db20001227105530311-200-200.jpg",
    views: 105,
    author: "量子位",
    tag: "人工智能",
    time: "08.24"
  },
  {
    type: { text: "区块链", code: 3 },
    title: "学习Filecoin开发一个自己的公链（一）共识 - LearnDap",
    img: "https://img4.mukewang.com/5d3d2f880001946802000200-200-200.jpg",
    views: 12400,
    author: "量子位",
    tag: "资讯",
    time: "08.21"
  },
  {
    type: { text: "区块链", code: 3 },
    title: "一入币圈深似海，浮浮沉沉走人生",
    img: "https://www.imooc.com/static/img/article/cover/pic5.jpg",
    views: 199,
    author: "量子位",
    tag: "人工智能",
    time: "08.20"
  },
  {
    type: { text: "人工智能", code: 4 },
    title: "华为算力最强AI芯片商用：2倍于英伟达V100！开源AI框架，对标Te",
    img: "https://img1.mukewang.com/5bf3a0570001e5fb02720272-200-200.jpg",
    views: 105,
    author: "量子位",
    tag: "人工智能",
    time: "08.24"
  },
  {
    type: { text: "人工智能", code: 4 },
    title: "项目说明文档编写规范",
    img: "https://img3.mukewang.com/5d5bea3e0001300005000333-200-200.jpg",
    views: 12400,
    author: "量子位",
    tag: "资讯",
    time: "08.21"
  },
  {
    type: { text: "人工智能", code: 4 },
    title: "Huffman编码使用介绍",
    img: "https://img1.mukewang.com/5d63a46c000136ef08450715-200-200.jpg",
    views: 199,
    author: "量子位",
    tag: "人工智能",
    time: "08.20"
  },
  {
    type: { text: "人工智能", code: 4 },
    title: "华为算力最强AI芯片商用：2倍于英伟达V100！开源AI框架，对标Te",
    img: "https://img1.mukewang.com/5bf3a0570001e5fb02720272-200-200.jpg",
    views: 105,
    author: "量子位",
    tag: "人工智能",
    time: "08.24"
  },
  {
    type: { text: "人工智能", code: 4 },
    title: "项目说明文档编写规范",
    img: "https://img3.mukewang.com/5d5bea3e0001300005000333-200-200.jpg",
    views: 12400,
    author: "量子位",
    tag: "资讯",
    time: "08.21"
  },
  {
    type: { text: "人工智能", code: 4 },
    title: "Huffman编码使用介绍",
    img: "https://img1.mukewang.com/5d63a46c000136ef08450715-200-200.jpg",
    views: 199,
    author: "量子位",
    tag: "人工智能",
    time: "08.20"
  },
  {
    type: { text: "人工智能", code: 4 },
    title: "华为算力最强AI芯片商用：2倍于英伟达V100！开源AI框架，对标Te",
    img: "https://img1.mukewang.com/5bf3a0570001e5fb02720272-200-200.jpg",
    views: 105,
    author: "量子位",
    tag: "人工智能",
    time: "08.24"
  },
  {
    type: { text: "人工智能", code: 4 },
    title: "项目说明文档编写规范",
    img: "https://img3.mukewang.com/5d5bea3e0001300005000333-200-200.jpg",
    views: 12400,
    author: "量子位",
    tag: "资讯",
    time: "08.21"
  },
  {
    type: { text: "人工智能", code: 4 },
    title: "Huffman编码使用介绍",
    img: "https://img1.mukewang.com/5d63a46c000136ef08450715-200-200.jpg",
    views: 199,
    author: "量子位",
    tag: "人工智能",
    time: "08.20"
  },
  {
    type: { text: "人工智能", code: 4 },
    title: "华为算力最强AI芯片商用：2倍于英伟达V100！开源AI框架，对标Te",
    img: "https://img1.mukewang.com/5bf3a0570001e5fb02720272-200-200.jpg",
    views: 105,
    author: "量子位",
    tag: "人工智能",
    time: "08.24"
  },
  {
    type: { text: "人工智能", code: 4 },
    title: "项目说明文档编写规范",
    img: "https://img3.mukewang.com/5d5bea3e0001300005000333-200-200.jpg",
    views: 12400,
    author: "量子位",
    tag: "资讯",
    time: "08.21"
  },
  {
    type: { text: "人工智能", code: 4 },
    title: "Huffman编码使用介绍",
    img: "https://img1.mukewang.com/5d63a46c000136ef08450715-200-200.jpg",
    views: 199,
    author: "量子位",
    tag: "人工智能",
    time: "08.20"
  },
  {
    type: { text: "云计算/大数据", code: 5 },
    title: "Python进阶量化交易专栏场外篇13-TA-Lib库量价指标分析",
    img: "https://www.imooc.com/static/img/article/cover/pic8.jpg",
    views: 105,
    author: "量子位",
    tag: "人工智能",
    time: "08.24"
  },
  {
    type: { text: "云计算/大数据", code: 5 },
    title: "微服务架构之服务注册中心",
    img: "https://img1.mukewang.com/5bf3a0870001f33c02720272-200-200.jpg",
    views: 12400,
    author: "量子位",
    tag: "资讯",
    time: "08.21"
  },
  {
    type: { text: "云计算/大数据", code: 5 },
    title: "Kafka实战(四) -Kafka门派知多少",
    img: "https://img.mukewang.com/5d641d5a000139f106000390-200-200.jpg",
    views: 199,
    author: "量子位",
    tag: "人工智能",
    time: "08.20"
  },
  {
    type: { text: "云计算/大数据", code: 5 },
    title: "Python进阶量化交易专栏场外篇13-TA-Lib库量价指标分析",
    img: "https://www.imooc.com/static/img/article/cover/pic8.jpg",
    views: 105,
    author: "量子位",
    tag: "人工智能",
    time: "08.24"
  },
  {
    type: { text: "云计算/大数据", code: 5 },
    title: "微服务架构之服务注册中心",
    img: "https://img1.mukewang.com/5bf3a0870001f33c02720272-200-200.jpg",
    views: 12400,
    author: "量子位",
    tag: "资讯",
    time: "08.21"
  },
  {
    type: { text: "云计算/大数据", code: 5 },
    title: "Kafka实战(四) -Kafka门派知多少",
    img: "https://img.mukewang.com/5d641d5a000139f106000390-200-200.jpg",
    views: 199,
    author: "量子位",
    tag: "人工智能",
    time: "08.20"
  },
  {
    type: { text: "云计算/大数据", code: 5 },
    title: "Python进阶量化交易专栏场外篇13-TA-Lib库量价指标分析",
    img: "https://www.imooc.com/static/img/article/cover/pic8.jpg",
    views: 105,
    author: "量子位",
    tag: "人工智能",
    time: "08.24"
  },
  {
    type: { text: "云计算/大数据", code: 5 },
    title: "微服务架构之服务注册中心",
    img: "https://img1.mukewang.com/5bf3a0870001f33c02720272-200-200.jpg",
    views: 12400,
    author: "量子位",
    tag: "资讯",
    time: "08.21"
  },
  {
    type: { text: "云计算/大数据", code: 5 },
    title: "Kafka实战(四) -Kafka门派知多少",
    img: "https://img.mukewang.com/5d641d5a000139f106000390-200-200.jpg",
    views: 199,
    author: "量子位",
    tag: "人工智能",
    time: "08.20"
  },
  {
    type: { text: "云计算/大数据", code: 5 },
    title: "Python进阶量化交易专栏场外篇13-TA-Lib库量价指标分析",
    img: "https://www.imooc.com/static/img/article/cover/pic8.jpg",
    views: 105,
    author: "量子位",
    tag: "人工智能",
    time: "08.24"
  },
  {
    type: { text: "云计算/大数据", code: 5 },
    title: "微服务架构之服务注册中心",
    img: "https://img1.mukewang.com/5bf3a0870001f33c02720272-200-200.jpg",
    views: 12400,
    author: "量子位",
    tag: "资讯",
    time: "08.21"
  },
  {
    type: { text: "云计算/大数据", code: 5 },
    title: "Kafka实战(四) -Kafka门派知多少",
    img: "https://img.mukewang.com/5d641d5a000139f106000390-200-200.jpg",
    views: 199,
    author: "量子位",
    tag: "人工智能",
    time: "08.20"
  },
  {
    type: { text: "前端开发", code: 6 },
    title: "怎么理清自己的编程思路",
    img: "https://img4.mukewang.com/5bf39fdb0001ba0702720272-200-200.jpg",
    views: 105,
    author: "量子位",
    tag: "人工智能",
    time: "08.24"
  },
  {
    type: { text: "前端开发", code: 6 },
    title: "从零开始配置React全家桶",
    img: "https://img4.mukewang.com/5bf3a0b100015d1e02720272-200-200.jpg",
    views: 12400,
    author: "量子位",
    tag: "资讯",
    time: "08.21"
  },
  {
    type: { text: "前端开发", code: 6 },
    title: "你必须要掌握的微信小程序云开发",
    img: "https://img3.mukewang.com/5bf3a0570001e5fb02720272-200-200.jpg",
    views: 199,
    author: "量子位",
    tag: "人工智能",
    time: "08.20"
  },
  {
    type: { text: "前端开发", code: 6 },
    title: "怎么理清自己的编程思路",
    img: "https://img4.mukewang.com/5bf39fdb0001ba0702720272-200-200.jpg",
    views: 105,
    author: "量子位",
    tag: "人工智能",
    time: "08.24"
  },
  {
    type: { text: "前端开发", code: 6 },
    title: "从零开始配置React全家桶",
    img: "https://img4.mukewang.com/5bf3a0b100015d1e02720272-200-200.jpg",
    views: 12400,
    author: "量子位",
    tag: "资讯",
    time: "08.21"
  },
  {
    type: { text: "前端开发", code: 6 },
    title: "你必须要掌握的微信小程序云开发",
    img: "https://img3.mukewang.com/5bf3a0570001e5fb02720272-200-200.jpg",
    views: 199,
    author: "量子位",
    tag: "人工智能",
    time: "08.20"
  },
  {
    type: { text: "前端开发", code: 6 },
    title: "怎么理清自己的编程思路",
    img: "https://img4.mukewang.com/5bf39fdb0001ba0702720272-200-200.jpg",
    views: 105,
    author: "量子位",
    tag: "人工智能",
    time: "08.24"
  },
  {
    type: { text: "前端开发", code: 6 },
    title: "从零开始配置React全家桶",
    img: "https://img4.mukewang.com/5bf3a0b100015d1e02720272-200-200.jpg",
    views: 12400,
    author: "量子位",
    tag: "资讯",
    time: "08.21"
  },
  {
    type: { text: "前端开发", code: 6 },
    title: "你必须要掌握的微信小程序云开发",
    img: "https://img3.mukewang.com/5bf3a0570001e5fb02720272-200-200.jpg",
    views: 199,
    author: "量子位",
    tag: "人工智能",
    time: "08.20"
  },
  {
    type: { text: "前端开发", code: 6 },
    title: "怎么理清自己的编程思路",
    img: "https://img4.mukewang.com/5bf39fdb0001ba0702720272-200-200.jpg",
    views: 105,
    author: "量子位",
    tag: "人工智能",
    time: "08.24"
  },
  {
    type: { text: "前端开发", code: 6 },
    title: "从零开始配置React全家桶",
    img: "https://img4.mukewang.com/5bf3a0b100015d1e02720272-200-200.jpg",
    views: 12400,
    author: "量子位",
    tag: "资讯",
    time: "08.21"
  },
  {
    type: { text: "前端开发", code: 6 },
    title: "你必须要掌握的微信小程序云开发",
    img: "https://img3.mukewang.com/5bf3a0570001e5fb02720272-200-200.jpg",
    views: 199,
    author: "量子位",
    tag: "人工智能",
    time: "08.20"
  },
  {
    type: { text: "前端开发", code: 6 },
    title: "怎么理清自己的编程思路",
    img: "https://img4.mukewang.com/5bf39fdb0001ba0702720272-200-200.jpg",
    views: 105,
    author: "量子位",
    tag: "人工智能",
    time: "08.24"
  },
  {
    type: { text: "前端开发", code: 6 },
    title: "从零开始配置React全家桶",
    img: "https://img4.mukewang.com/5bf3a0b100015d1e02720272-200-200.jpg",
    views: 12400,
    author: "量子位",
    tag: "资讯",
    time: "08.21"
  },
  {
    type: { text: "前端开发", code: 6 },
    title: "你必须要掌握的微信小程序云开发",
    img: "https://img3.mukewang.com/5bf3a0570001e5fb02720272-200-200.jpg",
    views: 199,
    author: "量子位",
    tag: "人工智能",
    time: "08.20"
  },
  {
    type: { text: "前端开发", code: 6 },
    title: "怎么理清自己的编程思路",
    img: "https://img4.mukewang.com/5bf39fdb0001ba0702720272-200-200.jpg",
    views: 105,
    author: "量子位",
    tag: "人工智能",
    time: "08.24"
  },
  {
    type: { text: "前端开发", code: 6 },
    title: "从零开始配置React全家桶",
    img: "https://img4.mukewang.com/5bf3a0b100015d1e02720272-200-200.jpg",
    views: 12400,
    author: "量子位",
    tag: "资讯",
    time: "08.21"
  },
  {
    type: { text: "前端开发", code: 6 },
    title: "你必须要掌握的微信小程序云开发",
    img: "https://img3.mukewang.com/5bf3a0570001e5fb02720272-200-200.jpg",
    views: 199,
    author: "量子位",
    tag: "人工智能",
    time: "08.20"
  },
  {
    type: { text: "后端开发", code: 7 },
    title: "Go高并发秒杀实践",
    img: "https://www.imooc.com/static/img/article/cover/pic28.jpg",
    views: 105,
    author: "量子位",
    tag: "人工智能",
    time: "08.24"
  },
  {
    type: { text: "后端开发", code: 7 },
    title: "学完这100多技术，能当架构师么？（非广告）",
    img: "https://www.imooc.com/static/img/article/cover/pic18.jpg",
    views: 12400,
    author: "量子位",
    tag: "资讯",
    time: "08.21"
  },
  {
    type: { text: "后端开发", code: 7 },
    title: "如何写优雅的SQL原生语句？",
    img: "https://img3.mukewang.com/5bf3a1460001f88002720272-200-200.jpg",
    views: 199,
    author: "量子位",
    tag: "人工智能",
    time: "08.20"
  },
  {
    type: { text: "后端开发", code: 7 },
    title: "Go高并发秒杀实践",
    img: "https://www.imooc.com/static/img/article/cover/pic28.jpg",
    views: 105,
    author: "量子位",
    tag: "人工智能",
    time: "08.24"
  },
  {
    type: { text: "后端开发", code: 7 },
    title: "学完这100多技术，能当架构师么？（非广告）",
    img: "https://www.imooc.com/static/img/article/cover/pic18.jpg",
    views: 12400,
    author: "量子位",
    tag: "资讯",
    time: "08.21"
  },
  {
    type: { text: "后端开发", code: 7 },
    title: "如何写优雅的SQL原生语句？",
    img: "https://img3.mukewang.com/5bf3a1460001f88002720272-200-200.jpg",
    views: 199,
    author: "量子位",
    tag: "人工智能",
    time: "08.20"
  },
  {
    type: { text: "后端开发", code: 7 },
    title: "Go高并发秒杀实践",
    img: "https://www.imooc.com/static/img/article/cover/pic28.jpg",
    views: 105,
    author: "量子位",
    tag: "人工智能",
    time: "08.24"
  },
  {
    type: { text: "后端开发", code: 7 },
    title: "学完这100多技术，能当架构师么？（非广告）",
    img: "https://www.imooc.com/static/img/article/cover/pic18.jpg",
    views: 12400,
    author: "量子位",
    tag: "资讯",
    time: "08.21"
  },
  {
    type: { text: "后端开发", code: 7 },
    title: "如何写优雅的SQL原生语句？",
    img: "https://img3.mukewang.com/5bf3a1460001f88002720272-200-200.jpg",
    views: 199,
    author: "量子位",
    tag: "人工智能",
    time: "08.20"
  },
  {
    type: { text: "后端开发", code: 7 },
    title: "Go高并发秒杀实践",
    img: "https://www.imooc.com/static/img/article/cover/pic28.jpg",
    views: 105,
    author: "量子位",
    tag: "人工智能",
    time: "08.24"
  },
  {
    type: { text: "后端开发", code: 7 },
    title: "学完这100多技术，能当架构师么？（非广告）",
    img: "https://www.imooc.com/static/img/article/cover/pic18.jpg",
    views: 12400,
    author: "量子位",
    tag: "资讯",
    time: "08.21"
  },
  {
    type: { text: "后端开发", code: 7 },
    title: "如何写优雅的SQL原生语句？",
    img: "https://img3.mukewang.com/5bf3a1460001f88002720272-200-200.jpg",
    views: 199,
    author: "量子位",
    tag: "人工智能",
    time: "08.20"
  },
  {
    type: { text: "后端开发", code: 7 },
    title: "Go高并发秒杀实践",
    img: "https://www.imooc.com/static/img/article/cover/pic28.jpg",
    views: 105,
    author: "量子位",
    tag: "人工智能",
    time: "08.24"
  },
  {
    type: { text: "后端开发", code: 7 },
    title: "学完这100多技术，能当架构师么？（非广告）",
    img: "https://www.imooc.com/static/img/article/cover/pic18.jpg",
    views: 12400,
    author: "量子位",
    tag: "资讯",
    time: "08.21"
  },
  {
    type: { text: "后端开发", code: 7 },
    title: "如何写优雅的SQL原生语句？",
    img: "https://img3.mukewang.com/5bf3a1460001f88002720272-200-200.jpg",
    views: 199,
    author: "量子位",
    tag: "人工智能",
    time: "08.20"
  },
  {
    type: { text: "后端开发", code: 7 },
    title: "Go高并发秒杀实践",
    img: "https://www.imooc.com/static/img/article/cover/pic28.jpg",
    views: 105,
    author: "量子位",
    tag: "人工智能",
    time: "08.24"
  },
  {
    type: { text: "后端开发", code: 7 },
    title: "学完这100多技术，能当架构师么？（非广告）",
    img: "https://www.imooc.com/static/img/article/cover/pic18.jpg",
    views: 12400,
    author: "量子位",
    tag: "资讯",
    time: "08.21"
  },
  {
    type: { text: "后端开发", code: 7 },
    title: "如何写优雅的SQL原生语句？",
    img: "https://img3.mukewang.com/5bf3a1460001f88002720272-200-200.jpg",
    views: 199,
    author: "量子位",
    tag: "人工智能",
    time: "08.20"
  },
  {
    type: { text: "移动端开发", code: 8 },
    title: "你从未见过的EditText属性详解",
    img: "https://www.imooc.com/static/img/article/cover/pic24.jpg",
    views: 105,
    author: "量子位",
    tag: "人工智能",
    time: "08.24"
  },
  {
    type: { text: "移动端开发", code: 8 },
    title: "让你的布局滚动起来—ScrollView",
    img: "https://www.imooc.com/static/img/article/cover/pic10.jpg",
    views: 12400,
    author: "量子位",
    tag: "资讯",
    time: "08.21"
  },
  {
    type: { text: "移动端开发", code: 8 },
    title: "你不能错过的RadioButton实践",
    img: "https://www.imooc.com/static/img/article/cover/pic20.jpg",
    views: 199,
    author: "量子位",
    tag: "人工智能",
    time: "08.20"
  },
  {
    type: { text: "移动端开发", code: 8 },
    title: "你从未见过的EditText属性详解",
    img: "https://www.imooc.com/static/img/article/cover/pic24.jpg",
    views: 105,
    author: "量子位",
    tag: "人工智能",
    time: "08.24"
  },
  {
    type: { text: "移动端开发", code: 8 },
    title: "让你的布局滚动起来—ScrollView",
    img: "https://www.imooc.com/static/img/article/cover/pic10.jpg",
    views: 12400,
    author: "量子位",
    tag: "资讯",
    time: "08.21"
  },
  {
    type: { text: "移动端开发", code: 8 },
    title: "你不能错过的RadioButton实践",
    img: "https://www.imooc.com/static/img/article/cover/pic20.jpg",
    views: 199,
    author: "量子位",
    tag: "人工智能",
    time: "08.20"
  },
  {
    type: { text: "移动端开发", code: 8 },
    title: "你从未见过的EditText属性详解",
    img: "https://www.imooc.com/static/img/article/cover/pic24.jpg",
    views: 105,
    author: "量子位",
    tag: "人工智能",
    time: "08.24"
  },
  {
    type: { text: "移动端开发", code: 8 },
    title: "让你的布局滚动起来—ScrollView",
    img: "https://www.imooc.com/static/img/article/cover/pic10.jpg",
    views: 12400,
    author: "量子位",
    tag: "资讯",
    time: "08.21"
  },
  {
    type: { text: "移动端开发", code: 8 },
    title: "你不能错过的RadioButton实践",
    img: "https://www.imooc.com/static/img/article/cover/pic20.jpg",
    views: 199,
    author: "量子位",
    tag: "人工智能",
    time: "08.20"
  },
  {
    type: { text: "移动端开发", code: 8 },
    title: "你从未见过的EditText属性详解",
    img: "https://www.imooc.com/static/img/article/cover/pic24.jpg",
    views: 105,
    author: "量子位",
    tag: "人工智能",
    time: "08.24"
  },
  {
    type: { text: "移动端开发", code: 8 },
    title: "让你的布局滚动起来—ScrollView",
    img: "https://www.imooc.com/static/img/article/cover/pic10.jpg",
    views: 12400,
    author: "量子位",
    tag: "资讯",
    time: "08.21"
  },
  {
    type: { text: "移动端开发", code: 8 },
    title: "你不能错过的RadioButton实践",
    img: "https://www.imooc.com/static/img/article/cover/pic20.jpg",
    views: 199,
    author: "量子位",
    tag: "人工智能",
    time: "08.20"
  },
  {
    type: { text: "移动端开发", code: 8 },
    title: "你从未见过的EditText属性详解",
    img: "https://www.imooc.com/static/img/article/cover/pic24.jpg",
    views: 105,
    author: "量子位",
    tag: "人工智能",
    time: "08.24"
  },
  {
    type: { text: "移动端开发", code: 8 },
    title: "让你的布局滚动起来—ScrollView",
    img: "https://www.imooc.com/static/img/article/cover/pic10.jpg",
    views: 12400,
    author: "量子位",
    tag: "资讯",
    time: "08.21"
  },
  {
    type: { text: "移动端开发", code: 8 },
    title: "你不能错过的RadioButton实践",
    img: "https://www.imooc.com/static/img/article/cover/pic20.jpg",
    views: 199,
    author: "量子位",
    tag: "人工智能",
    time: "08.20"
  },
  {
    type: { text: "工具资源", code: 9 },
    title: "如何选择一个性能测试工具（LoadRunner和Locust的一次对比",
    img: "https://www.imooc.com/static/img/article/cover/pic9.jpg",
    views: 105,
    author: "量子位",
    tag: "人工智能",
    time: "08.24"
  },
  {
    type: { text: "工具资源", code: 9 },
    title: "Spread.NET 表格控件 V12.0 Update2 发布更新",
    img: "https://img4.mukewang.com/5bf3a0ce0001f11102720272-200-200.jpg",
    views: 12400,
    author: "量子位",
    tag: "资讯",
    time: "08.21"
  },
  {
    type: { text: "工具资源", code: 9 },
    title: "使用Typora+docsify+GitHub Pages搭建团队知识",
    img: "https://www.imooc.com/static/img/article/cover/pic5.jpg",
    views: 199,
    author: "量子位",
    tag: "人工智能",
    time: "08.20"
  },
  {
    type: { text: "职场生活", code: 10 },
    title: "培训班出身如何构建自己的知识体系？",
    img: "https://www.imooc.com/static/img/article/cover/pic28.jpg",
    views: 105,
    author: "量子位",
    tag: "人工智能",
    time: "08.24"
  },
  {
    type: { text: "职场生活", code: 10 },
    title: "【一元福利】程序员的高数入门课",
    img: "https://www.imooc.com/static/img/article/cover/pic4.jpg",
    views: 12400,
    author: "量子位",
    tag: "资讯",
    time: "08.21"
  },
  {
    type: { text: "职场生活", code: 10 },
    title: "程序员是最好的产品经理",
    img: "https://img3.mukewang.com/5d5dff6600017e9711990674-200-200.jpg",
    views: 199,
    author: "量子位",
    tag: "人工智能",
    time: "08.20"
  },
  {
    type: { text: "搞笑段子", code: 11 },
    title: "牛郎决定去学编程",
    img: "https://img4.mukewang.com/5d5411e00001007e05190300-200-200.jpg",
    views: 105,
    author: "量子位",
    tag: "人工智能",
    time: "08.24"
  },
  {
    type: { text: "搞笑段子", code: 11 },
    title: "程序员在理发时悟出的真理",
    img: "https://img1.mukewang.com/5d20841a0001118d05000375-200-200.jpg",
    views: 12400,
    author: "量子位",
    tag: "资讯",
    time: "08.21"
  },
  {
    type: { text: "搞笑段子", code: 11 },
    title: "程序员的江湖梦",
    img: "https://img4.mukewang.com/5d2082170001e05105000336-200-200.jpg",
    views: 199,
    author: "量子位",
    tag: "人工智能",
    time: "08.20"
  },
  {
    type: { text: "其他", code: 12 },
    title: "Jmeter如何设置线程数，ramp-up period，循环次数",
    img: "https://www.imooc.com/static/img/article/cover/pic8.jpg",
    views: 105,
    author: "量子位",
    tag: "人工智能",
    time: "08.24"
  },
  {
    type: { text: "其他", code: 12 },
    title: "长安十二时辰大结局一段时间了",
    img: "https://img3.mukewang.com/5bf3a1620001b65902720272-200-200.jpg",
    views: 12400,
    author: "量子位",
    tag: "资讯",
    time: "08.21"
  },
  {
    type: { text: "其他", code: 12 },
    title: "开发电商购物直播系统是直播公会的出路吗？我个人这么觉得",
    img: "https://www.imooc.com/static/img/article/cover/pic12.jpg",
    views: 199,
    author: "量子位",
    tag: "人工智能",
    time: "08.20"
  },
  {
    type: { text: "工具资源", code: 9 },
    title: "如何选择一个性能测试工具（LoadRunner和Locust的一次对比",
    img: "https://www.imooc.com/static/img/article/cover/pic9.jpg",
    views: 105,
    author: "量子位",
    tag: "人工智能",
    time: "08.24"
  },
  {
    type: { text: "工具资源", code: 9 },
    title: "Spread.NET 表格控件 V12.0 Update2 发布更新",
    img: "https://img4.mukewang.com/5bf3a0ce0001f11102720272-200-200.jpg",
    views: 12400,
    author: "量子位",
    tag: "资讯",
    time: "08.21"
  },
  {
    type: { text: "工具资源", code: 9 },
    title: "使用Typora+docsify+GitHub Pages搭建团队知识",
    img: "https://www.imooc.com/static/img/article/cover/pic5.jpg",
    views: 199,
    author: "量子位",
    tag: "人工智能",
    time: "08.20"
  },
  {
    type: { text: "职场生活", code: 10 },
    title: "培训班出身如何构建自己的知识体系？",
    img: "https://www.imooc.com/static/img/article/cover/pic28.jpg",
    views: 105,
    author: "量子位",
    tag: "人工智能",
    time: "08.24"
  },
  {
    type: { text: "职场生活", code: 10 },
    title: "【一元福利】程序员的高数入门课",
    img: "https://www.imooc.com/static/img/article/cover/pic4.jpg",
    views: 12400,
    author: "量子位",
    tag: "资讯",
    time: "08.21"
  },
  {
    type: { text: "职场生活", code: 10 },
    title: "程序员是最好的产品经理",
    img: "https://img3.mukewang.com/5d5dff6600017e9711990674-200-200.jpg",
    views: 199,
    author: "量子位",
    tag: "人工智能",
    time: "08.20"
  },
  {
    type: { text: "搞笑段子", code: 11 },
    title: "牛郎决定去学编程",
    img: "https://img4.mukewang.com/5d5411e00001007e05190300-200-200.jpg",
    views: 105,
    author: "量子位",
    tag: "人工智能",
    time: "08.24"
  },
  {
    type: { text: "搞笑段子", code: 11 },
    title: "程序员在理发时悟出的真理",
    img: "https://img1.mukewang.com/5d20841a0001118d05000375-200-200.jpg",
    views: 12400,
    author: "量子位",
    tag: "资讯",
    time: "08.21"
  },
  {
    type: { text: "搞笑段子", code: 11 },
    title: "程序员的江湖梦",
    img: "https://img4.mukewang.com/5d2082170001e05105000336-200-200.jpg",
    views: 199,
    author: "量子位",
    tag: "人工智能",
    time: "08.20"
  },
  {
    type: { text: "其他", code: 12 },
    title: "Jmeter如何设置线程数，ramp-up period，循环次数",
    img: "https://www.imooc.com/static/img/article/cover/pic8.jpg",
    views: 105,
    author: "量子位",
    tag: "人工智能",
    time: "08.24"
  },
  {
    type: { text: "其他", code: 12 },
    title: "长安十二时辰大结局一段时间了",
    img: "https://img3.mukewang.com/5bf3a1620001b65902720272-200-200.jpg",
    views: 12400,
    author: "量子位",
    tag: "资讯",
    time: "08.21"
  },
  {
    type: { text: "其他", code: 12 },
    title: "开发电商购物直播系统是直播公会的出路吗？我个人这么觉得",
    img: "https://www.imooc.com/static/img/article/cover/pic12.jpg",
    views: 199,
    author: "量子位",
    tag: "人工智能",
    time: "08.20"
  },
  {
    type: { text: "工具资源", code: 9 },
    title: "如何选择一个性能测试工具（LoadRunner和Locust的一次对比",
    img: "https://www.imooc.com/static/img/article/cover/pic9.jpg",
    views: 105,
    author: "量子位",
    tag: "人工智能",
    time: "08.24"
  },
  {
    type: { text: "工具资源", code: 9 },
    title: "Spread.NET 表格控件 V12.0 Update2 发布更新",
    img: "https://img4.mukewang.com/5bf3a0ce0001f11102720272-200-200.jpg",
    views: 12400,
    author: "量子位",
    tag: "资讯",
    time: "08.21"
  },
  {
    type: { text: "工具资源", code: 9 },
    title: "使用Typora+docsify+GitHub Pages搭建团队知识",
    img: "https://www.imooc.com/static/img/article/cover/pic5.jpg",
    views: 199,
    author: "量子位",
    tag: "人工智能",
    time: "08.20"
  },
  {
    type: { text: "职场生活", code: 10 },
    title: "培训班出身如何构建自己的知识体系？",
    img: "https://www.imooc.com/static/img/article/cover/pic28.jpg",
    views: 105,
    author: "量子位",
    tag: "人工智能",
    time: "08.24"
  },
  {
    type: { text: "职场生活", code: 10 },
    title: "【一元福利】程序员的高数入门课",
    img: "https://www.imooc.com/static/img/article/cover/pic4.jpg",
    views: 12400,
    author: "量子位",
    tag: "资讯",
    time: "08.21"
  },
  {
    type: { text: "职场生活", code: 10 },
    title: "程序员是最好的产品经理",
    img: "https://img3.mukewang.com/5d5dff6600017e9711990674-200-200.jpg",
    views: 199,
    author: "量子位",
    tag: "人工智能",
    time: "08.20"
  },
  {
    type: { text: "搞笑段子", code: 11 },
    title: "牛郎决定去学编程",
    img: "https://img4.mukewang.com/5d5411e00001007e05190300-200-200.jpg",
    views: 105,
    author: "量子位",
    tag: "人工智能",
    time: "08.24"
  },
  {
    type: { text: "搞笑段子", code: 11 },
    title: "程序员在理发时悟出的真理",
    img: "https://img1.mukewang.com/5d20841a0001118d05000375-200-200.jpg",
    views: 12400,
    author: "量子位",
    tag: "资讯",
    time: "08.21"
  },
  {
    type: { text: "搞笑段子", code: 11 },
    title: "程序员的江湖梦",
    img: "https://img4.mukewang.com/5d2082170001e05105000336-200-200.jpg",
    views: 199,
    author: "量子位",
    tag: "人工智能",
    time: "08.20"
  },
  {
    type: { text: "其他", code: 12 },
    title: "Jmeter如何设置线程数，ramp-up period，循环次数",
    img: "https://www.imooc.com/static/img/article/cover/pic8.jpg",
    views: 105,
    author: "量子位",
    tag: "人工智能",
    time: "08.24"
  },
  {
    type: { text: "其他", code: 12 },
    title: "长安十二时辰大结局一段时间了",
    img: "https://img3.mukewang.com/5bf3a1620001b65902720272-200-200.jpg",
    views: 12400,
    author: "量子位",
    tag: "资讯",
    time: "08.21"
  },
  {
    type: { text: "其他", code: 12 },
    title: "开发电商购物直播系统是直播公会的出路吗？我个人这么觉得",
    img: "https://www.imooc.com/static/img/article/cover/pic12.jpg",
    views: 199,
    author: "量子位",
    tag: "人工智能",
    time: "08.20"
  }
]"""
    txt = demjson.decode(txt)
    for index, one in enumerate(txt):
        type_code = one["type"]["code"]
        del one["type"]
        item = Article(**one, type=ArticleType.objects.get(code=type_code))
        item.save()


def import_history():
    txt = """ [
  { value: 'canvas' },
  { value: '去哪儿网' },
  { value: 'webpack' }, 
  { value: 'flutter' },
  { value: 'rn' }
]
"""
    txt = demjson.decode(txt)
    for index, one in enumerate(txt):
        item = History(**one)
        item.save()


def import_teacher():
    txt = """
    [
  {
    name: "七月",
    avatar: "https://img1.mukewang.com/54584e2c00010a2c02200220-100-100.jpg",
    job: "全栈工程师",
    introduction: "十年研发及团队管理经验，对程序员面临的各种问题深有体会；精通Python、Java、Node.js、JavaScript等语言，对Web的基础研发、高并发处理与分布式有非常深入的理解。课程讲解深入浅出，极为擅长培养学生的编程思维。"
  },
  {
    name: "liuyubobobo",
    avatar: "https://img1.mukewang.com/5347593e00010cfb01400140-100-100.jpg",
    job: "全栈工程师",
    introduction: "创业者，全栈工程师，持续学习者。对技术开发，产品设计、前后端，ios，html5，智能算法等领域均有接触；拥有多款独立App作品；对一切可编程的东西有浓厚兴趣，对游戏编程格外感兴趣。相信编程改变一切。"
  },
  {
    name: "ustbhuangyi",
    avatar: "https://img2.mukewang.com/577baef700019c4501400140-100-100.jpg",
    job: "前端架构师",
    introduction: "北京科技大学毕业，计算机专业硕士。对前端工程化，前后端性能优化有丰富的经验。曾任职百度、滴滴，现担任Zoom前端架构师。慕课网明星讲师，Vue.js 布道者，《Vue.js 技术揭秘》独立作者，《Vue.js 权威指南》主要作者。开源项目 better-scroll 作者，并主导滴滴开源项目 cube-ui，建立团队技术博客。"
  },
  {
    name: "慕课官方号",
    avatar: "https://img.mukewang.com/5b88f1f50001688401500150-100-100.jpg",
    job: "页面重构设计",
    introduction: "慕课，Massive（大规模）Open（开放）Online（在线）Course（课程）。专注做好IT技能教育的MOOC，符合互联网发展潮流接地气儿的MOOC。我们有更多免费资源，我们只教有用的，我们专心做教育。"
  },
  {
    name: "Oeasy",
    avatar: "https://img3.mukewang.com/53855e6f0001034501400140-100-100.jpg",
    job: "页面重构设计",
    introduction: "他，授课风趣幽默，激情四射，自称屌丝青年，中国传媒大学计算机教师；他，专注于网页制作、平面设计、多媒体等多个领域的软件以及应用的挖掘与创新，热爱分享，是新鲜热门软件和应用的导航标，他就是众粉丝心中的“Oeasy老湿”"
  },
  {
    name: "城南大师兄",
    avatar: "https://img2.mukewang.com/5cac7e810001fe7705270698-100-100.jpg",
    job: "JAVA开发工程师",
    introduction: "目前主要负责后端架构设计，具有十多年一线开发和架构经验，拥有丰富的高性能、高并发处理以及大型服务器软件设计架构经验。深谙各种源码。工作中常常和千万级高并发的问题“正面硬钢” ，因此在高并发调优等方面积累了丰富的实战经验。十几年的架构经验，让讲师早已将理论和实践锻造的炉火纯青。如果你想学习他密不外传的工作‘渡劫’经验，讲师等你打Call~"
  },
  {
    name: "bobby",
    avatar: "https://img4.mukewang.com/58d9c48f0001ad0304070270-100-100.jpg",
    job: "全栈工程师",
    introduction: "python全栈工程师，五年工作经验，喜欢钻研python技术，对爬虫、web开发以及机器学习有浓厚的兴趣，关注前沿技术以及发展趋势。"
  },
  {
    name: "大目",
    avatar: "https://img1.mukewang.com/5d142f090804929712361209-100-100.jpg",
    job: "JAVA开发工程师",
    introduction: "阿里技术专家，9年软件系统开发经验，多年系统架构经验。参与开发/架构多个大型项目，Spring Cloud、微服务、持续集成、持续交付、Cloud Native生态均有涉猎。热爱技术交流，代表公司参加全球微服务架构高峰论坛、QCon等技术沙龙。拥抱开源，多个项目开源在Github与Gitee上，也是多个项目的Contributor，为多个开源项目提交PR。"
  },
  {
    name: "hyman",
    avatar: "https://img.mukewang.com/54169c430001face18403264-100-100.jpg",
    job: "移动开发工程师",
    introduction: "同大千攻城狮般无异，本狮有着巨大的火热的不灭的技术热情，痴迷于Android开发。乐于分享，善于将技术生活化，唯愿与大千男女攻城狮共同进步"
  },
  {
    name: "PegasusWang",
    avatar: "https://img3.mukewang.com/5bfba2490001457005750575-100-100.jpg",
    job: "Python工程师",
    introduction: "从事web开发4年，工作中以 Python 作为主力语言，代码控，实践经验丰富，乐于分享技术知识，知乎专栏作者。"
  }
] 
    """
    txt = demjson.decode(txt)
    for index, one in enumerate(txt):
        try:
            item = Teacher(**one)
            item.save()
        except django.db.utils.IntegrityError:
            pass


def import_student_type():
    txt = """[
  {
    avatar: "https://img1.sycdn.imooc.com/5d0d7a6c0001aa9a09760976-100-100.jpg",
    name: "梨不开的桃子",
    type: {
      text: "风骚课程学霸",
      code: 1
    },
    number: 0
  },
  {
    avatar: "https://img2.sycdn.imooc.com/545850200001359c02200220-100-100.jpg",
    name: "EnchantF",
    type: {
      text: "神秘解疑大神",
      code: 2
    },
    number: 0
  },
  {
    avatar: "https://img2.sycdn.imooc.com/5bd113ec00019d0003000300-100-100.jpg",
    name: "安晓辉",
    type: {
      text: "智慧文章王者",
      code: 3
    },
    number: 0
  },
  {
    avatar: "https://www.imooc.com/static/img/index/tuhao.png",
    name: "ml320",
    type: {
      text: "慕课第一土豪",
      code: 4
    },
    number: 0
  },
  {
    avatar: "https://img3.sycdn.imooc.com/5b60202f000159e305330300-100-100.jpg",
    name: "灰灰520",
    type: {
      text: "风骚课程学霸",
      code: 1
    },
    number: 72
  },
  {
    avatar: "https://img2.sycdn.imooc.com/59f190ea00018f9101000100-100-100.jpg",
    name: "qq_花开花落又是雨季_2",
    type: {
      text: "风骚课程学霸",
      code: 1
    },
    number: 75
  },
  {
    avatar: "https://img3.sycdn.imooc.com/5d121c7f00014baf02190218-100-100.jpg",
    name: "码农故事汇",
    type: {
      text: "智慧文章王者",
      code: 3
    },
    number: 7
  },
  {
    avatar: "https://img3.sycdn.imooc.com/5cbbfae10001ce5d14402560-100-100.jpg",
    name: "JavaEdge",
    type: {
      text: "智慧文章王者",
      code: 3
    },
    number: 14
  },
  {
    avatar: "https://img2.sycdn.imooc.com/5b7ec6890001625a09700970-100-100.jpg",
    name: "橋本奈奈未",
    type: {
      text: "神秘解疑大神",
      code: 2
    },
    number: 1
  },
  {
    avatar: "https://img3.sycdn.imooc.com/533e4ca50001117901990200-100-100.jpg",
    name: "pardon110",
    type: {
      text: "神秘解疑大神",
      code: 2
    },
    number: 7
  },
  {
    avatar: "https://img2.sycdn.imooc.com/5d19c00b0001843208000800-100-100.jpg",
    name: "爱写bug",
    type: {
      text: "智慧文章王者",
      code: 3
    },
    number: 16
  },
  {
    avatar: "https://img3.sycdn.imooc.com/5cc9bb2c00018e8709600960-100-100.jpg",
    name: "猪哥66",
    type: {
      text: "智慧文章王者",
      code: 3
    },
    number: 18
  },

  {
    avatar: "https://img3.sycdn.imooc.com/5d0c3944000142ec10241024-100-100.jpg",
    name: "慕课网官方_运营中心",
    type: {
      text: "智慧文章王者",
      code: 3
    },
    number: 7
  },
  {
    avatar: "https://img2.sycdn.imooc.com/5a4ae8860001f12903260326-100-100.jpg",
    name: "猪哥66",
    type: {
      text: "风骚课程学霸",
      code: 1
    },
    number: 75
  },
  {
    avatar: "https://img1.sycdn.imooc.com/5d1eaf680001576f07000722-100-100.jpg",
    name: "唐唐师傅",
    type: {
      text: "神秘解疑大神",
      code: 2
    },
    number: 1
  },
  {
    avatar: "https://img1.sycdn.imooc.com/533e4cf4000151f602000200-100-100.jpg",
    name: "柯南一号呀",
    type: {
      text: "风骚课程学霸",
      code: 1
    },
    number: 72
  },
  {
    avatar: "https://img3.sycdn.imooc.com/545862b90001ab4c02200220-100-100.jpg",
    name: "妹妹的姐姐",
    type: {
      text: "风骚课程学霸",
      code: 1
    },
    number: 78
  },
  {
    avatar: "https://img3.sycdn.imooc.com/5cee919c000182b504400440-100-100.jpg",
    name: "李红红",
    type: {
      text: "智慧文章王者",
      code: 3
    },
    number: 7
  },

  {
    avatar: "https://img1.sycdn.imooc.com/5c53bb070001ba6804000400-100-100.jpg",
    name: "慕猿梦",
    type: {
      text: "风骚课程学霸",
      code: 1
    },
    number: 75
  },
  {
    avatar: "https://img2.sycdn.imooc.com/545867340001101702200220-100-100.jpg",
    name: "xyr0601",
    type: {
      text: "风骚课程学霸",
      code: 1
    },
    number: 75
  },
  {
    avatar: "https://img3.sycdn.imooc.com/5b4e66620001dd4703500350-100-100.jpg",
    name: "侠客岛的含笑",
    type: {
      text: "智慧文章王者",
      code: 3
    },
    number: 9
  },
  {
    avatar: "https://img2.sycdn.imooc.com/5b8cede40001b96c02000198-100-100.jpg",
    name: "南山搬瓦工",
    type: {
      text: "神秘解疑大神",
      code: 2
    },
    number: 1
  }
]"""
    txt = demjson.decode(txt)
    for index, one in enumerate(txt):
        try:
            item = StudentType(text=one["type"]["text"], code=one["type"]["code"])
            item.save()
        except django.db.utils.IntegrityError:
            pass


def import_student():
    txt = """[
  {
    avatar: "https://img1.sycdn.imooc.com/5d0d7a6c0001aa9a09760976-100-100.jpg",
    name: "梨不开的桃子",
    type: {
      text: "风骚课程学霸",
      code: 1
    },
    number: 0
  },
  {
    avatar: "https://img2.sycdn.imooc.com/545850200001359c02200220-100-100.jpg",
    name: "EnchantF",
    type: {
      text: "神秘解疑大神",
      code: 2
    },
    number: 0
  },
  {
    avatar: "https://img2.sycdn.imooc.com/5bd113ec00019d0003000300-100-100.jpg",
    name: "安晓辉",
    type: {
      text: "智慧文章王者",
      code: 3
    },
    number: 0
  },
  {
    avatar: "https://www.imooc.com/static/img/index/tuhao.png",
    name: "ml320",
    type: {
      text: "慕课第一土豪",
      code: 4
    },
    number: 0
  },
  {
    avatar: "https://img3.sycdn.imooc.com/5b60202f000159e305330300-100-100.jpg",
    name: "灰灰520",
    type: {
      text: "风骚课程学霸",
      code: 1
    },
    number: 72
  },
  {
    avatar: "https://img2.sycdn.imooc.com/59f190ea00018f9101000100-100-100.jpg",
    name: "qq_花开花落又是雨季_2",
    type: {
      text: "风骚课程学霸",
      code: 1
    },
    number: 75
  },
  {
    avatar: "https://img3.sycdn.imooc.com/5d121c7f00014baf02190218-100-100.jpg",
    name: "码农故事汇",
    type: {
      text: "智慧文章王者",
      code: 3
    },
    number: 7
  },
  {
    avatar: "https://img3.sycdn.imooc.com/5cbbfae10001ce5d14402560-100-100.jpg",
    name: "JavaEdge",
    type: {
      text: "智慧文章王者",
      code: 3
    },
    number: 14
  },
  {
    avatar: "https://img2.sycdn.imooc.com/5b7ec6890001625a09700970-100-100.jpg",
    name: "橋本奈奈未",
    type: {
      text: "神秘解疑大神",
      code: 2
    },
    number: 1
  },
  {
    avatar: "https://img3.sycdn.imooc.com/533e4ca50001117901990200-100-100.jpg",
    name: "pardon110",
    type: {
      text: "神秘解疑大神",
      code: 2
    },
    number: 7
  },
  {
    avatar: "https://img2.sycdn.imooc.com/5d19c00b0001843208000800-100-100.jpg",
    name: "爱写bug",
    type: {
      text: "智慧文章王者",
      code: 3
    },
    number: 16
  },
  {
    avatar: "https://img3.sycdn.imooc.com/5cc9bb2c00018e8709600960-100-100.jpg",
    name: "猪哥66",
    type: {
      text: "智慧文章王者",
      code: 3
    },
    number: 18
  },

  {
    avatar: "https://img3.sycdn.imooc.com/5d0c3944000142ec10241024-100-100.jpg",
    name: "慕课网官方_运营中心",
    type: {
      text: "智慧文章王者",
      code: 3
    },
    number: 7
  },
  {
    avatar: "https://img2.sycdn.imooc.com/5a4ae8860001f12903260326-100-100.jpg",
    name: "猪哥66",
    type: {
      text: "风骚课程学霸",
      code: 1
    },
    number: 75
  },
  {
    avatar: "https://img1.sycdn.imooc.com/5d1eaf680001576f07000722-100-100.jpg",
    name: "唐唐师傅",
    type: {
      text: "神秘解疑大神",
      code: 2
    },
    number: 1
  },
  {
    avatar: "https://img1.sycdn.imooc.com/533e4cf4000151f602000200-100-100.jpg",
    name: "柯南一号呀",
    type: {
      text: "风骚课程学霸",
      code: 1
    },
    number: 72
  },
  {
    avatar: "https://img3.sycdn.imooc.com/545862b90001ab4c02200220-100-100.jpg",
    name: "妹妹的姐姐",
    type: {
      text: "风骚课程学霸",
      code: 1
    },
    number: 78
  },
  {
    avatar: "https://img3.sycdn.imooc.com/5cee919c000182b504400440-100-100.jpg",
    name: "李红红",
    type: {
      text: "智慧文章王者",
      code: 3
    },
    number: 7
  },

  {
    avatar: "https://img1.sycdn.imooc.com/5c53bb070001ba6804000400-100-100.jpg",
    name: "慕猿梦",
    type: {
      text: "风骚课程学霸",
      code: 1
    },
    number: 75
  },
  {
    avatar: "https://img2.sycdn.imooc.com/545867340001101702200220-100-100.jpg",
    name: "xyr0601",
    type: {
      text: "风骚课程学霸",
      code: 1
    },
    number: 75
  },
  {
    avatar: "https://img3.sycdn.imooc.com/5b4e66620001dd4703500350-100-100.jpg",
    name: "侠客岛的含笑",
    type: {
      text: "智慧文章王者",
      code: 3
    },
    number: 9
  },
  {
    avatar: "https://img2.sycdn.imooc.com/5b8cede40001b96c02000198-100-100.jpg",
    name: "南山搬瓦工",
    type: {
      text: "神秘解疑大神",
      code: 2
    },
    number: 1
  }
]"""
    txt = demjson.decode(txt)
    for index, one in enumerate(txt):
        type_code = one["type"]["code"]
        del one["type"]
        item = Student(**one, type=StudentType.objects.get(code=type_code))
        item.save()


def import_integral_type():
    txt = """[
  {
    code: 0,
    text: '虚拟商品'
  },
  {
    code: 1,
    text: '实体商品'
  }
]"""
    txt = demjson.decode(txt)
    for index, one in enumerate(txt):
        item = IntegralType(**one)
        item.save()


def import_integral():
    txt = """[
  {
    type: 0,
    title: '15元全站课程优惠券',
    img: 'https://img3.sycdn.imooc.com/5d312ea3000161d102820282-200-200.jpg',
    integral: 50
  },
  {
    type: 0,
    title: '30元全站课程优惠券',
    img: 'https://img1.sycdn.imooc.com/5d312f7d00018c3c02820282-200-200.jpg',
    integral: 100
  },
  {
    type: 0,
    title: '50元全站课程优惠券',
    img: 'https://img3.sycdn.imooc.com/5d312f8700019e4b02820282-200-200.jpg',
    integral: 150
  },
  {
    type: 0,
    title: '魔性贪吃蛇小游戏',
    img: 'https://img3.sycdn.imooc.com/5d312f8700019e4b02820282-200-200.jpg',
    integral: 1
  },
  {
    type: 0,
    title: '2048技术人生定制版',
    img: 'https://img1.sycdn.imooc.com/5678c7e600019c8303600360-200-200.jpg',
    integral: 1
  },
  {
    type: 0,
    title: '慕烟花',
    img: 'https://img3.sycdn.imooc.com/565d1a920001244403600360-200-200.jpg',
    integral: 1
  },
  {
    type: 1,
    title: '基于iOS8正式版全面修订 Swift开发指南',
    img: 'https://img3.sycdn.imooc.com/5bd0410f0001524703440400-200-200.jpg',
    integral: 395
  },
  {
    type: 1,
    title: 'Scala与Clojure函数式编程模式',
    img: 'https://img3.sycdn.imooc.com/5bd0402e000132bd04300430-200-200.jpg',
    integral: 295
  },
  {
    type: 1,
    title: 'Druid实时大数据分析原理与实践',
    img: 'https://img4.sycdn.imooc.com/5bd03ee40001539304300430-200-200.jpg',
    integral: 445
  },
  {
    type: 1,
    title: 'POSTGRESQL 9',
    img: 'https://img1.sycdn.imooc.com/5bd03db700012a7403500350-200-200.jpg',
    integral: 445
  },
  {
    type: 1,
    title: 'Kotlin程序开发入门精要',
    img: 'https://img3.sycdn.imooc.com/5bd03cd70001db9503500350-200-200.jpg',
    integral: 395
  },
  {
    type: 1,
    title: '创世学说 游戏系统设计指南',
    img: 'https://img3.sycdn.imooc.com/5bd03c890001e77602730304-200-200.jpg',
    integral: 545
  },
  {
    type: 1,
    title: 'Elixir 程序设计',
    img: 'https://img1.sycdn.imooc.com/5bd03db700012a7403500350-200-200.jpg',
    integral: 425
  },
  {
    type: 1,
    title: '疯狂Java讲义 第4版 附光盘',
    img: 'https://img3.sycdn.imooc.com/5bd03cd70001db9503500350-200-200.jpg',
    integral: 545
  },
  {
    type: 1,
    title: '创世学说 MySQL管理之道 性能调优、高可用与监控',
    img: 'https://img3.sycdn.imooc.com/5bd03c890001e77602730304-200-200.jpg',
    integral: 395
  },
  {
    type: 1,
    title: '基于iOS8正式版全面修订 Swift开发指南',
    img: 'https://img3.sycdn.imooc.com/5bd0410f0001524703440400-200-200.jpg',
    integral: 395
  },
  {
    type: 1,
    title: 'Scala与Clojure函数式编程模式',
    img: 'https://img3.sycdn.imooc.com/5bd0402e000132bd04300430-200-200.jpg',
    integral: 295
  },
  {
    type: 1,
    title: 'Druid实时大数据分析原理与实践',
    img: 'https://img4.sycdn.imooc.com/5bd03ee40001539304300430-200-200.jpg',
    integral: 445
  },
  {
    type: 1,
    title: 'POSTGRESQL 9',
    img: 'https://img1.sycdn.imooc.com/5bd03db700012a7403500350-200-200.jpg',
    integral: 445
  },
  {
    type: 1,
    title: 'Kotlin程序开发入门精要',
    img: 'https://img3.sycdn.imooc.com/5bd03cd70001db9503500350-200-200.jpg',
    integral: 395
  },
  {
    type: 1,
    title: '创世学说 游戏系统设计指南',
    img: 'https://img3.sycdn.imooc.com/5bd03c890001e77602730304-200-200.jpg',
    integral: 545
  },
  {
    type: 1,
    title: 'Elixir 程序设计',
    img: 'https://img1.sycdn.imooc.com/5bd03db700012a7403500350-200-200.jpg',
    integral: 425
  },
  {
    type: 1,
    title: '疯狂Java讲义 第4版 附光盘',
    img: 'https://img3.sycdn.imooc.com/5bd03cd70001db9503500350-200-200.jpg',
    integral: 545
  },
  {
    type: 1,
    title: '创世学说 MySQL管理之道 性能调优、高可用与监控',
    img: 'https://img3.sycdn.imooc.com/5bd03c890001e77602730304-200-200.jpg',
    integral: 395
  }
]
"""
    txt = demjson.decode(txt)
    for index, one in enumerate(txt):
        type_code = one["type"]
        del one["type"]
        item = Integral(**one, type=IntegralType.objects.get(code=type_code))
        item.save()


def import_lesson_type():
    txt = """[
  {
    category: {
      text: '前端开发',
      code: 0,
    },
    title: 'TypeScript  系统入门到项目实战 趁早学习提高职场竞争力',
    introduction: 'Dell老师专为TypeScript小白打造的，全栈式教学TS入门课程',
    img: 'https://img.mukewang.com/szimg/5e1d990f0885d97306000338-360-202.jpg',
    banner: 'https://img1.sycdn.imooc.com/szimg/5e1d991809c5318e40000800.jpg',
    type: {
      text: '实战',
      code: 1
    },
    hard: {
      text: '中级',
      code: 2,
    },
    price: 266,
    isDiscount: true,
    discountPrice: 216,
    teacher: {
      name: 'Dell',
      avatar: 'https://img1.sycdn.imooc.com/user/5abe468b0001664107390741-100-100.jpg',
      job: 'Web前端工程师',
      introduction: 'BAT资深前端工程师，负责数据平台技术研发。曾任去哪儿网高级前端工程师，主导去哪儿网内部前端监控系统设计，负责去哪儿网门票用户端的前端设计开发。曾任国内知名培训机构高级前端讲师，负责React，Angular，Vue，Hybrid，RN的课程讲授，具备丰富前端授课经验。对优雅编程及工程化有深度思考及见解，教会你写代码，同时帮助你把代码写的更漂亮！'
    },
    labels: ['TypeScript']
  },
  {
    category: {
      text: '前端开发',
      code: 0,
    },
    title: '前端要学的测试课 从Jest入门到 TDD/BDD双实战',
    introduction: '以Vue/React项目进行自动化测试实战，让你技术水平和架构思维双提升',
    img: 'https://img.mukewang.com/szimg/5d36a6000837a91d06000338-360-202.jpg',
    banner: 'https://img.mukewang.com/szimg/5d36a60709f5666320000400.jpg',
    type: {
      text: '实战',
      code: 1
    },
    hard: {
      text: '中级',
      code: 2,
    },
    price: 299,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: 'Dell',
      avatar: 'https://img1.sycdn.imooc.com/user/5abe468b0001664107390741-100-100.jpg',
      job: 'Web前端工程师',
      introduction: 'BAT资深前端工程师，负责数据平台技术研发。曾任去哪儿网高级前端工程师，主导去哪儿网内部前端监控系统设计，负责去哪儿网门票用户端的前端设计开发。曾任国内知名培训机构高级前端讲师，负责React，Angular，Vue，Hybrid，RN的课程讲授，具备丰富前端授课经验。对优雅编程及工程化有深度思考及见解，教会你写代码，同时帮助你把代码写的更漂亮！'
    },
    labels: ['Vue.js', 'React.js']
  },
  {
    category: {
      text: '前端开发',
      code: 0,
    },
    title: '从基础到实战 手把手带你掌握新版Webpack4.0',
    introduction: '知识点+项目实例+原理讲解 全方位解析Webpack4最新版本',
    img: 'https://img.mukewang.com/szimg/5c6bdb3e08e4674a06000338-360-202.jpg',
    banner: 'https://img.mukewang.com/szimg/5c6bdb4f09c2401020000400.jpg',
    type: {
      text: '实战',
      code: 1
    },
    hard: {
      text: '中级',
      code: 2,
    },
    price: 299,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: 'Dell',
      avatar: 'https://img1.sycdn.imooc.com/user/5abe468b0001664107390741-100-100.jpg',
      job: 'Web前端工程师',
      introduction: 'BAT资深前端工程师，负责数据平台技术研发。曾任去哪儿网高级前端工程师，主导去哪儿网内部前端监控系统设计，负责去哪儿网门票用户端的前端设计开发。曾任国内知名培训机构高级前端讲师，负责React，Angular，Vue，Hybrid，RN的课程讲授，具备丰富前端授课经验。对优雅编程及工程化有深度思考及见解，教会你写代码，同时帮助你把代码写的更漂亮！'
    },
    labels: ['Vue.js', 'React.js']
  },
  {
    category: {
      text: '前端开发',
      code: 0,
    },
    title: 'React服务器渲染原理解析与实践',
    introduction: '从零开始，带你搭建属于自己的React SSR框架，从根本上解决客户端渲染问题 。',
    img: 'https://img.mukewang.com/szimg/5ba07190000135b505400300-360-202.jpg',
    banner: 'https://img.mukewang.com/szimg/5c6bdb4f09c2401020000400.jpg',
    type: {
      text: '实战',
      code: 1
    },
    hard: {
      text: '中级',
      code: 2,
    },
    price: 299,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: 'Dell',
      avatar: 'https://img1.sycdn.imooc.com/user/5abe468b0001664107390741-100-100.jpg',
      job: 'Web前端工程师',
      introduction: 'BAT资深前端工程师，负责数据平台技术研发。曾任去哪儿网高级前端工程师，主导去哪儿网内部前端监控系统设计，负责去哪儿网门票用户端的前端设计开发。曾任国内知名培训机构高级前端讲师，负责React，Angular，Vue，Hybrid，RN的课程讲授，具备丰富前端授课经验。对优雅编程及工程化有深度思考及见解，教会你写代码，同时帮助你把代码写的更漂亮！'
    },
    labels: ['React.js']
  },
  {
    category: {
      text: '前端开发',
      code: 0,
    },
    title: 'React开发简书项目 从零基础入门到实战 ',
    introduction: '主流新技术 React-redux，React-router4，贯穿基础语法及项目实战。',
    img: 'https://img.mukewang.com/szimg/5b3082da0001d7e905400300-360-202.jpg',
    banner: 'https://img.mukewang.com/szimg/5b508ba90001116220000560.jpg',
    type: {
      text: '实战',
      code: 1
    },
    hard: {
      text: '中级',
      code: 2,
    },
    price: 299,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: 'Dell',
      avatar: 'https://img1.sycdn.imooc.com/user/5abe468b0001664107390741-100-100.jpg',
      job: 'Web前端工程师',
      introduction: 'BAT资深前端工程师，负责数据平台技术研发。曾任去哪儿网高级前端工程师，主导去哪儿网内部前端监控系统设计，负责去哪儿网门票用户端的前端设计开发。曾任国内知名培训机构高级前端讲师，负责React，Angular，Vue，Hybrid，RN的课程讲授，具备丰富前端授课经验。对优雅编程及工程化有深度思考及见解，教会你写代码，同时帮助你把代码写的更漂亮！'
    },
    labels: ['React.js']
  },
  {
    category: {
      text: '前端开发',
      code: 0,
    },
    title: '经典再升级-新版Vue2.6开发去哪儿网App 从零基础入门到实战项目',
    introduction: '基于Vue最新版本，从基础语法到完整项目，一课掌握Vue基础知识点',
    img: 'https://img.mukewang.com/szimg/5b3082da0001d7e905400300-360-202.jpg',
    banner: 'https://img.mukewang.com/szimg/5b50858100011b9220000560.jpg',
    type: {
      text: '实战',
      code: 1
    },
    hard: {
      text: '中级',
      code: 2,
    },
    price: 266,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: 'Dell',
      avatar: 'https://img1.sycdn.imooc.com/user/5abe468b0001664107390741-100-100.jpg',
      job: 'Web前端工程师',
      introduction: 'BAT资深前端工程师，负责数据平台技术研发。曾任去哪儿网高级前端工程师，主导去哪儿网内部前端监控系统设计，负责去哪儿网门票用户端的前端设计开发。曾任国内知名培训机构高级前端讲师，负责React，Angular，Vue，Hybrid，RN的课程讲授，具备丰富前端授课经验。对优雅编程及工程化有深度思考及见解，教会你写代码，同时帮助你把代码写的更漂亮！'
    },
    labels: ['Vue.js']
  },
  {
    category: {
      text: '前端开发',
      code: 0,
    },
    title: '下一代前端开发语言 TypeScript从零重构axios',
    introduction: '掌握TS，学习vue3.0源码必备基础！课程从零开始重构功能完整的JS库，是学习造轮子的不二之选！',
    img: 'https://img.mukewang.com/szimg/5cbf00c608f52a3b06000338-360-202.jpg',
    banner: 'https://img.mukewang.com/szimg/5cbf00cb092626c820000400.jpg',
    type: {
      text: '实战',
      code: 1
    },
    hard: {
      text: '中级',
      code: 2,
    },
    price: 388,
    isDiscount: true,
    discountPrice: 348,
    teacher: {
      name: 'ustbhuangyi',
      avatar: 'https://img.mukewang.com/user/577baef700019c4501400140-100-100.jpg',
      job: 'Web前端工程师',
      introduction: '曾任职百度、滴滴，现担任Zoom前端架构师，推进前后端分离架构方案，同时负责 Zoom 自研组件库。公众号《老黄的前端私房菜》，《Vue.js 技术揭秘》独立作者，《Vue.js 权威指南》主要作者，开源项目 better-scroll 作者。曾主导滴滴开源项目 cube-ui，建立团队技术博客。'
    },
    labels: ['TypeScript']
  },
  {
    category: {
      text: '前端开发',
      code: 0,
    },
    title: 'Vue.js2.5+cube-ui重构饿了么App（经典再升级）',
    introduction: '掌握Vue1.0到2.0再到2.5最全版本应用与迭代，打造极致流畅的WebApp',
    img: 'https://img.mukewang.com/szimg/5becd5ad0001b89306000338-360-202.jpg',
    banner: 'https://img1.sycdn.imooc.com/szimg/5becd5bc0001d45120000560.jpg',
    type: {
      text: '实战',
      code: 1
    },
    hard: {
      text: '中级',
      code: 2,
    },
    price: 198,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: 'ustbhuangyi',
      avatar: 'https://img.mukewang.com/user/577baef700019c4501400140-100-100.jpg',
      job: 'Web前端工程师',
      introduction: '曾任职百度、滴滴，现担任Zoom前端架构师，推进前后端分离架构方案，同时负责 Zoom 自研组件库。公众号《老黄的前端私房菜》，《Vue.js 技术揭秘》独立作者，《Vue.js 权威指南》主要作者，开源项目 better-scroll 作者。曾主导滴滴开源项目 cube-ui，建立团队技术博客。'
    },
    labels: ['Vue.js']
  },
  {
    category: {
      text: '前端开发',
      code: 0,
    },
    title: 'Vue.js源码全方位深入解析 （含Vue3.0源码分析）',
    introduction: '全方位讲解 Vue.js 源码，学精学透 Vue 原理实现，进阶高级工程师',
    img: 'https://img.mukewang.com/szimg/5b17bad10001535305400300-360-202.jpg',
    banner: 'https://img1.sycdn.imooc.com/szimg/5b508b4200014f8a20000560.jpg',
    type: {
      text: '实战',
      code: 1
    },
    hard: {
      text: '高级',
      code: 3,
    },
    price: 488,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: 'ustbhuangyi',
      avatar: 'https://img.mukewang.com/user/577baef700019c4501400140-100-100.jpg',
      job: 'Web前端工程师',
      introduction: '曾任职百度、滴滴，现担任Zoom前端架构师，推进前后端分离架构方案，同时负责 Zoom 自研组件库。公众号《老黄的前端私房菜》，《Vue.js 技术揭秘》独立作者，《Vue.js 权威指南》主要作者，开源项目 better-scroll 作者。曾主导滴滴开源项目 cube-ui，建立团队技术博客。'
    },
    labels: ['Vue.js']
  },
  {
    category: {
      text: '后端开发',
      code: 1,
    },
    title: 'Python Flask高级编程之RESTFul API前后端分离精讲',
    introduction: 'RESTFul+权限管理+token令牌+扩展flask=提升编程思维',
    img: 'https://img.mukewang.com/szimg/5b061fe30001db4505400300-360-202.jpg',
    banner: 'https://img1.sycdn.imooc.com/szimg/5be39cb6000127a520000559.jpg',
    type: {
      text: '实战',
      code: 1
    },
    hard: {
      text: '中级',
      code: 2,
    },
    price: 148,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: '7七月',
      avatar: 'https://img.mukewang.com/user/54584e2c00010a2c02200220-100-100.jpg',
      job: '全栈工程师',
      introduction: '十年研发及团队管理经验，对程序员面临的各种问题深有体会；精通Python、Java、Node.js、JavaScript等语言，对Web的基础研发、高并发处理与分布式有非常深入的理解。课程讲解深入浅出，极为擅长培养学生的编程思维。'
    },
    labels: ['Python']
  },
  {
    category: {
      text: '后端开发',
      code: 1,
    },
    title: 'Python Flask高级编程之从0到1开发《鱼书》精品项目',
    introduction: '7月老师深入浅出剖析Flask核心机制，和你一起探讨Python高级编程',
    img: 'https://img.mukewang.com/szimg/5ab84f650001f0b005400300-360-202.jpg',
    banner: 'https://img.mukewang.com/szimg/5b51c78300015e0220000560.jpg',
    type: {
      text: '实战',
      code: 1
    },
    hard: {
      text: '中级',
      code: 2,
    },
    price: 399,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: '7七月',
      avatar: 'https://img.mukewang.com/user/54584e2c00010a2c02200220-100-100.jpg',
      job: '全栈工程师',
      introduction: '十年研发及团队管理经验，对程序员面临的各种问题深有体会；精通Python、Java、Node.js、JavaScript等语言，对Web的基础研发、高并发处理与分布式有非常深入的理解。课程讲解深入浅出，极为擅长培养学生的编程思维。'
    },
    labels: ['Python']
  },
  {
    category: {
      text: '后端开发',
      code: 1,
    },
    title: '全面系统Python3.8入门+进阶  (程序员必备第二语言)',
    introduction: '语法精讲/配套练习+思考题/原生爬虫实战',
    img: 'https://img.mukewang.com/szimg/59b8a486000107fb05400300-360-202.jpg',
    banner: 'https://img.mukewang.com/szimg/5b51c78300015e0220000560.jpg',
    type: {
      text: '实战',
      code: 1
    },
    hard: {
      text: '初级',
      code: 1,
    },
    price: 366,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: '7七月',
      avatar: 'https://img.mukewang.com/user/54584e2c00010a2c02200220-100-100.jpg',
      job: '全栈工程师',
      introduction: '十年研发及团队管理经验，对程序员面临的各种问题深有体会；精通Python、Java、Node.js、JavaScript等语言，对Web的基础研发、高并发处理与分布式有非常深入的理解。课程讲解深入浅出，极为擅长培养学生的编程思维。'
    },
    labels: ['Python']
  },
  {
    category: {
      text: '后端开发',
      code: 1,
    },
    title: 'Spring Cloud微服务实战 打造企业级优惠券系统',
    introduction: '面试、毕设、升职优选：从0开始，Java主流框架，构建电商都在用的优惠券系统',
    img: 'https://img.mukewang.com/szimg/5d5f7da0093eb24212000676-360-202.jpg',
    banner: 'https://img.mukewang.com/szimg/5d5f7da709b71ad320000400.jpg',
    type: {
      text: '实战',
      code: 1
    },
    hard: {
      text: '中级',
      code: 2,
    },
    price: 299,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: '勤一',
      avatar: 'https://img.mukewang.com/user/5c36c432000158e609600960-100-100.jpg',
      job: 'Java开发工程师',
      introduction: '高级技术专家，曾就职于微软、腾讯，目前就职于知名电商互联网公司，拥有丰富的大型项目开发经验。多年IT从业经验，一线软件设计、研发，熟悉C、CPP、Java等开发语言，对Web框架、数据存储、架构设计等有深入的理解和实践。'
    },
    labels: ['Java', 'Spring Cloud']
  },
  {
    category: {
      text: '后端开发',
      code: 1,
    },
    title: '基于Spring Cloud微服务架构  广告系统设计与实现（2020新版）',
    introduction: '掌握互联网广告系统，学会为公司创收，你自然就是最抢手的人才。可用于毕设。',
    img: 'https://img.mukewang.com/szimg/5d2e7ada09946f6f12000676-360-202.jpg',
    banner: 'https://img.mukewang.com/szimg/5d2e7ae20942ca4d20000400.jpg',
    type: {
      text: '实战',
      code: 1
    },
    hard: {
      text: '中级',
      code: 2,
    },
    price: 299,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: '勤一',
      avatar: 'https://img.mukewang.com/user/5c36c432000158e609600960-100-100.jpg',
      job: 'Java开发工程师',
      introduction: '高级技术专家，曾就职于微软、腾讯，目前就职于知名电商互联网公司，拥有丰富的大型项目开发经验。多年IT从业经验，一线软件设计、研发，熟悉C、CPP、Java等开发语言，对Web框架、数据存储、架构设计等有深入的理解和实践。'
    },
    labels: ['Java', 'Spring Cloud']
  },
  {
    category: {
      text: '后端开发',
      code: 1,
    },
    title: 'Java分布式后台开发  Spring Boot+Kafka+HBase',
    introduction: '从零到一完整搭建企业级架构的通用卡包工程，让你开发技迈向到百度T4+ 。',
    img: 'https://img1.sycdn.imooc.com/szimg/5b55356c0001af0105400300-360-202.jpg',
    banner: 'https://img.mukewang.com/szimg/5b5535400001b72e20000560.jpg',
    type: {
      text: '实战',
      code: 1
    },
    hard: {
      text: '中级',
      code: 2,
    },
    price: 299,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: '勤一',
      avatar: 'https://img.mukewang.com/user/5c36c432000158e609600960-100-100.jpg',
      job: 'Java开发工程师',
      introduction: '高级技术专家，曾就职于微软、腾讯，目前就职于知名电商互联网公司，拥有丰富的大型项目开发经验。多年IT从业经验，一线软件设计、研发，熟悉C、CPP、Java等开发语言，对Web框架、数据存储、架构设计等有深入的理解和实践。'
    },
    labels: ['Java', 'SpringBoot']
  },
  {
    category: {
      text: '移动端开发',
      code: 2,
    },
    title: 'Flutter从入门到进阶 实战携程网App',
    introduction: '从入门到进阶，系统掌握Flutter开发核心技术',
    img: 'https://img.mukewang.com/szimg/5c7e6835087ef3d806000338-360-202.jpg',
    banner: 'https://img.mukewang.com/szimg/5c9304cd097d093d20000400.jpg',
    type: {
      text: '实战',
      code: 1
    },
    hard: {
      text: '中级',
      code: 2,
    },
    price: 348,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: 'CrazyCodeBoy',
      avatar: 'https://img.mukewang.com/user/545847e20001163c02200220-100-100.jpg',
      job: '移动端开发工程师',
      introduction: '深耕移动端领域8年有余，全栈技术专家，CSDN 博客专家，擅长Android、iOS、Flutter、React Native以及小程序项目开发，负责过前端、Java、Android、iOS等多平台项目的研发，有多款React Native App上线及管理经验。他享受编程、热爱开源、酷爱分享，平时除了写写博客外，也分享一些开源技术干货 · Github'
    },
    labels: ['React native', 'Flutter']
  },
  {
    category: {
      text: '移动端开发',
      code: 2,
    },
    title: '新版React Native从入门到实战打造高质量上线App（再升级）',
    introduction: '解锁React Native开发应用新姿势，一网打尽React Native新版本热门技术',
    img: 'https://img.mukewang.com/szimg/5db6916d08d81b8b12000676-360-202.jpg',
    banner: 'https://img.mukewang.com/szimg/5db69b9c086653ff40001120.jpg',
    type: {
      text: '实战',
      code: 1
    },
    hard: {
      text: '中级',
      code: 2,
    },
    price: 399,
    isDiscount: false,
    discountPrice: 0,
    script: {
      text: '升级',
      code: 1
    },
    teacher: {
      name: 'CrazyCodeBoy',
      avatar: 'https://img.mukewang.com/user/545847e20001163c02200220-100-100.jpg',
      job: '移动端开发工程师',
      introduction: '深耕移动端领域8年有余，全栈技术专家，CSDN 博客专家，擅长Android、iOS、Flutter、React Native以及小程序项目开发，负责过前端、Java、Android、iOS等多平台项目的研发，有多款React Native App上线及管理经验。他享受编程、热爱开源、酷爱分享，平时除了写写博客外，也分享一些开源技术干货 · Github'
    },
    labels: ['React native']
  },
  {
    category: {
      text: '移动端开发',
      code: 2,
    },
    title: '实战企业级项目 践行App重构之路',
    introduction: '真实还原大厂App重构过程，以组件化和插件化为核心，进击高级工程师必备',
    img: 'https://img.mukewang.com/szimg/5e4f4f66098b14c512000676-360-202.jpg',
    banner: 'https://img.mukewang.com/szimg/5e4f4f7009aeb1a920000400.jpg',
    type: {
      text: '实战',
      code: 1
    },
    hard: {
      text: '中级',
      code: 2,
    },
    price: 299,
    isDiscount: false,
    discountPrice: 0,
    script: {
      text: '升级',
      code: 1
    },
    teacher: {
      name: 'qndroid',
      avatar: 'http://img3.sycdn.imooc.com/5333a0350001692e02200220-160-160.jpg',
      job: '移动开发工程师',
      introduction: '多年Android开发经验，曾任职于优酷等一线互联网企业，现就职于快手基础架构部，有丰富的Android应用架构和SDK开发经验，喜欢分享，授课风格循序渐进，擅长培养学生的编程思维，深受学员好评。'
    },
    labels: ['Android']
  },
  {
    category: {
      text: '移动端开发',
      code: 2,
    },
    title: '企业级Android应用架构设计与开发',
    introduction: '一门能助你掌握企业级架构设计、功能开发，冲击大厂Android中高级工程师职位的课程',
    img: 'https://img.mukewang.com/szimg/5d5e6d1f0983ee0112000676-360-202.jpg',
    banner: 'https://img1.sycdn.imooc.com/szimg/5d5e6d2809b8706c20000400.jpg',
    type: {
      text: '实战',
      code: 1
    },
    hard: {
      text: '中级',
      code: 2,
    },
    price: 299,
    isDiscount: false,
    discountPrice: 0,
    script: {
      text: '升级',
      code: 1
    },
    teacher: {
      name: 'qndroid',
      avatar: 'http://img3.sycdn.imooc.com/5333a0350001692e02200220-160-160.jpg',
      job: '移动开发工程师',
      introduction: '多年Android开发经验，曾任职于优酷等一线互联网企业，现就职于快手基础架构部，有丰富的Android应用架构和SDK开发经验，喜欢分享，授课风格循序渐进，擅长培养学生的编程思维，深受学员好评。'
    },
    labels: ['Android']
  },
  {
    category: {
      text: '移动端开发',
      code: 2,
    },
    title: 'Gradle3.0自动化项目构建技术精讲+实战',
    introduction: '全面覆盖Gradle核心知识和高级用法，高级工程师必备技能！',
    img: 'https://img.mukewang.com/szimg/5acf37460001aa3405400300-360-202.jpg',
    banner: 'https://img.mukewang.com/szimg/5b5085f900017de520000560.jpg',
    type: {
      text: '实战',
      code: 1
    },
    hard: {
      text: '中级',
      code: 2,
    },
    price: 199,
    isDiscount: false,
    discountPrice: 0,
    script: {
      text: '升级',
      code: 1
    },
    teacher: {
      name: 'qndroid',
      avatar: 'http://img3.sycdn.imooc.com/5333a0350001692e02200220-160-160.jpg',
      job: '移动开发工程师',
      introduction: '多年Android开发经验，曾任职于优酷等一线互联网企业，现就职于快手基础架构部，有丰富的Android应用架构和SDK开发经验，喜欢分享，授课风格循序渐进，擅长培养学生的编程思维，深受学员好评。'
    },
    labels: ['Android']
  },
  {
    category: {
      text: '计算机基础',
      code: 3,
    },
    title: '玩转算法系列--图论精讲  面试升职必备（Java版）',
    introduction: '由于图论算法本身的复杂性和抽象性，让同学们头疼不已，这次bobo带你彻底玩转图论，克服对图论问题的恐惧心理',
    img: 'https://img1.sycdn.imooc.com/szimg/5d31765d08c90cba06000338-360-202.jpg',
    banner: 'https://img.mukewang.com/szimg/5d3176630945ccf020000288.jpg',
    type: {
      text: '实战',
      code: 1
    },
    hard: {
      text: '中级',
      code: 2,
    },
    price: 348,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: 'liuyubobobo',
      avatar: 'https://img1.sycdn.imooc.com/user/5347593e00010cfb01400140-100-100.jpg',
      job: '算法大牛 ACM亚洲区奖牌获得者',
      introduction: '创业者，全栈工程师，持续学习者。对技术开发，产品设计、前后端，ios，html5，智能算法等领域均有接触；拥有多款独立App作品；对一切可编程的东西有浓厚兴趣，对游戏编程格外感兴趣。相信编程改变一切。'
    },
    labels: ['算法和数据结构']
  },
  {
    category: {
      text: '计算机基础',
      code: 3,
    },
    title: '玩转算法系列--数据结构精讲 更适合0算法基础入门到进阶（java版）',
    introduction: '体系完整，细致入微，0基础入门：动态数组/栈/队列/链表/BST/堆/线段树/Trie/并查集/AVL/红黑树…',
    img: 'https://img1.sycdn.imooc.com/szimg/5ad05dc00001eae705400300-360-202.jpg',
    banner: 'https://img.mukewang.com/szimg/5b5086220001ef9420000560.jpg',
    type: {
      text: '实战',
      code: 1
    },
    hard: {
      text: '中级',
      code: 2,
    },
    price: 299,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: 'liuyubobobo',
      avatar: 'https://img1.sycdn.imooc.com/user/5347593e00010cfb01400140-100-100.jpg',
      job: '算法大牛 ACM亚洲区奖牌获得者',
      introduction: '创业者，全栈工程师，持续学习者。对技术开发，产品设计、前后端，ios，html5，智能算法等领域均有接触；拥有多款独立App作品；对一切可编程的东西有浓厚兴趣，对游戏编程格外感兴趣。相信编程改变一切。'
    },
    labels: ['算法和数据结构']
  },
  {
    category: {
      text: '计算机基础',
      code: 3,
    },
    title: '结合编程学数学 专为程序员设计的线性代数',
    introduction: '创新设计，通俗易懂。用编程的方式学数学。这一次，bobo老师带你彻底征服线性代数',
    img: 'https://img1.sycdn.imooc.com/szimg/5b5835a60001907e05400300-360-202.jpg',
    banner: 'https://img1.sycdn.imooc.com/szimg/5b5835cb0001d0c120000560.jpg',
    type: {
      text: '实战',
      code: 1
    },
    hard: {
      text: '初级',
      code: 1,
    },
    price: 348,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: 'liuyubobobo',
      avatar: 'https://img1.sycdn.imooc.com/user/5347593e00010cfb01400140-100-100.jpg',
      job: '算法大牛 ACM亚洲区奖牌获得者',
      introduction: '创业者，全栈工程师，持续学习者。对技术开发，产品设计、前后端，ios，html5，智能算法等领域均有接触；拥有多款独立App作品；对一切可编程的东西有浓厚兴趣，对游戏编程格外感兴趣。相信编程改变一切。'
    },
    labels: ['数学']
  },
  {
    category: {
      text: '计算机基础',
      code: 3,
    },
    title: '看的见的算法 7个经典应用诠释算法精髓',
    introduction: '课程重应用、重实践、重思维，真正应用于实际工作开发中，也可作为毕设作品、面试项目。',
    img: 'https://img1.sycdn.imooc.com/szimg/59b2766f000190d505400300-360-202.jpg',
    banner: 'https://img.mukewang.com/szimg/5b4f355a0001852520000520.jpg',
    type: {
      text: '实战',
      code: 1
    },
    hard: {
      text: '初级',
      code: 1,
    },
    price: 248,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: 'liuyubobobo',
      avatar: 'https://img1.sycdn.imooc.com/user/5347593e00010cfb01400140-100-100.jpg',
      job: '算法大牛 ACM亚洲区奖牌获得者',
      introduction: '创业者，全栈工程师，持续学习者。对技术开发，产品设计、前后端，ios，html5，智能算法等领域均有接触；拥有多款独立App作品；对一切可编程的东西有浓厚兴趣，对游戏编程格外感兴趣。相信编程改变一切。'
    },
    labels: ['算法和数据结构']
  },
  {
    category: {
      text: '前沿技术',
      code: 4,
    },
    title: '看的见的算法 Zookeeper源码分析',
    introduction: '“分而治之”逐一攻克Zookeeper框架各个组件的源码',
    img: 'https://img.mukewang.com/szimg/5d1ad17f08cd16e800000000-360-202.jpg',
    banner: 'https://img.mukewang.com/szimg/5b4f355a0001852520000520.jpg',
    type: {
      text: '实战',
      code: 1
    },
    hard: {
      text: '中级',
      code: 2,
    },
    price: 388,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: '城南大师兄',
      avatar: 'https://img1.sycdn.imooc.com/user/5cac7e810001fe7705270698-100-100.jpg',
      job: '国内知名公司架构师',
      introduction: '目前主要负责后端架构设计，具有十多年一线开发和架构经验，拥有丰富的高性能、高并发处理以及大型服务器软件设计架构经验。深谙各种源码。工作中常常和千万级高并发的问题“正面硬钢” ，因此在高并发调优等方面积累了丰富的实战经验。十几年的架构经验，让讲师早已将理论和实践锻造的炉火纯青。如果你想学习他密不外传的工作‘渡劫’经验，讲师等你打Call~'
    },
    labels: ['微服务']
  },
  {
    category: {
      text: '前沿技术',
      code: 4,
    },
    title: '学习Hyperledger Fabric实战联盟链',
    introduction: '兼顾区块链应用层和底层  进击区块链工程师',
    img: 'https://img.mukewang.com/szimg/5b73d7f60001dc1e05400300-360-202.jpg',
    banner: 'https://img1.sycdn.imooc.com/szimg/5b73d7fc0001e07720000560.jpg',
    type: {
      text: '实战',
      code: 1
    },
    hard: {
      text: '高级',
      code: 3,
    },
    price: 266,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: '自游蜗牛',
      avatar: 'https://img.mukewang.com/user/5b6949e20001c6bf10801080-100-100.jpg',
      job: '区块链底层工程师',
      introduction: '现就职于某世界500强区块链团队，从事区块链底层研究以及BAAS平台搭建。精通区块链底层存储、共识等技术，职业方向偏重联盟链体系。'
    },
    labels: ['区块链']
  },
  {
    category: {
      text: '前沿技术',
      code: 4,
    },
    title: '深度学习之目标检测常用算法原理+实践精讲',
    introduction: '从原理（YOLO / Faster RCNN / SSD / 文本检测 / 多任务网络）到场景实战，掌握目标检测核心技术',
    img: 'https://img1.sycdn.imooc.com/szimg/5bfb523c0001290905400300-360-202.jpg',
    banner: 'https://img1.sycdn.imooc.com/szimg/5bfb52480001858920000559.jpg',
    type: {
      text: '实战',
      code: 1
    },
    hard: {
      text: '高级',
      code: 3,
    },
    price: 499,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: '会写代码的好厨师',
      avatar: 'https://img1.sycdn.imooc.com/user/5b8618950001cd9101440146-100-100.jpg',
      job: '资深机器学习工程师',
      introduction: '现就职于某世界500强区块链团队，从事区块链底层研究以及BAAS平台搭建。精通区块链底层存储、共识等技术，职业方向偏重联盟链体系。'
    },
    labels: ['机器学习']
  },
  {
    category: {
      text: '前沿技术',
      code: 4,
    },
    title: '看的见的算法 Zookeeper源码分析',
    introduction: '“分而治之”逐一攻克Zookeeper框架各个组件的源码',
    img: 'https://img.mukewang.com/szimg/5d1ad17f08cd16e800000000-360-202.jpg',
    banner: 'https://img.mukewang.com/szimg/5b4f355a0001852520000520.jpg',
    type: {
      text: '实战',
      code: 1
    },
    hard: {
      text: '中级',
      code: 2,
    },
    price: 388,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: '城南大师兄',
      avatar: 'https://img1.sycdn.imooc.com/user/5cac7e810001fe7705270698-100-100.jpg',
      job: '国内知名公司架构师',
      introduction: '目前主要负责后端架构设计，具有十多年一线开发和架构经验，拥有丰富的高性能、高并发处理以及大型服务器软件设计架构经验。深谙各种源码。工作中常常和千万级高并发的问题“正面硬钢” ，因此在高并发调优等方面积累了丰富的实战经验。十几年的架构经验，让讲师早已将理论和实践锻造的炉火纯青。如果你想学习他密不外传的工作‘渡劫’经验，讲师等你打Call~'
    },
    labels: ['微服务']
  },
  {
    category: {
      text: '前沿技术',
      code: 4,
    },
    title: '学习Hyperledger Fabric实战联盟链',
    introduction: '兼顾区块链应用层和底层  进击区块链工程师',
    img: 'https://img.mukewang.com/szimg/5b73d7f60001dc1e05400300-360-202.jpg',
    banner: 'https://img1.sycdn.imooc.com/szimg/5b73d7fc0001e07720000560.jpg',
    type: {
      text: '实战',
      code: 1
    },
    hard: {
      text: '高级',
      code: 3,
    },
    price: 266,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: '自游蜗牛',
      avatar: 'https://img.mukewang.com/user/5b6949e20001c6bf10801080-100-100.jpg',
      job: '区块链底层工程师',
      introduction: '现就职于某世界500强区块链团队，从事区块链底层研究以及BAAS平台搭建。精通区块链底层存储、共识等技术，职业方向偏重联盟链体系。'
    },
    labels: ['区块链']
  },
  {
    category: {
      text: '前沿技术',
      code: 4,
    },
    title: '深度学习之目标检测常用算法原理+实践精讲',
    introduction: '从原理（YOLO / Faster RCNN / SSD / 文本检测 / 多任务网络）到场景实战，掌握目标检测核心技术',
    img: 'https://img1.sycdn.imooc.com/szimg/5bfb523c0001290905400300-360-202.jpg',
    banner: 'https://img1.sycdn.imooc.com/szimg/5bfb52480001858920000559.jpg',
    type: {
      text: '实战',
      code: 1
    },
    hard: {
      text: '高级',
      code: 3,
    },
    price: 499,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: '会写代码的好厨师',
      avatar: 'https://img1.sycdn.imooc.com/user/5b8618950001cd9101440146-100-100.jpg',
      job: '资深机器学习工程师',
      introduction: '现就职于某世界500强区块链团队，从事区块链底层研究以及BAAS平台搭建。精通区块链底层存储、共识等技术，职业方向偏重联盟链体系。'
    },
    labels: ['机器学习']
  },
  {
    category: {
      text: '前沿技术',
      code: 4,
    },
    title: '看的见的算法 Zookeeper源码分析',
    introduction: '“分而治之”逐一攻克Zookeeper框架各个组件的源码',
    img: 'https://img.mukewang.com/szimg/5d1ad17f08cd16e800000000-360-202.jpg',
    banner: 'https://img.mukewang.com/szimg/5b4f355a0001852520000520.jpg',
    type: {
      text: '实战',
      code: 1
    },
    hard: {
      text: '中级',
      code: 2,
    },
    price: 388,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: '城南大师兄',
      avatar: 'https://img1.sycdn.imooc.com/user/5cac7e810001fe7705270698-100-100.jpg',
      job: '国内知名公司架构师',
      introduction: '目前主要负责后端架构设计，具有十多年一线开发和架构经验，拥有丰富的高性能、高并发处理以及大型服务器软件设计架构经验。深谙各种源码。工作中常常和千万级高并发的问题“正面硬钢” ，因此在高并发调优等方面积累了丰富的实战经验。十几年的架构经验，让讲师早已将理论和实践锻造的炉火纯青。如果你想学习他密不外传的工作‘渡劫’经验，讲师等你打Call~'
    },
    labels: ['微服务']
  },
  {
    category: {
      text: '前沿技术',
      code: 4,
    },
    title: '学习Hyperledger Fabric实战联盟链',
    introduction: '兼顾区块链应用层和底层  进击区块链工程师',
    img: 'https://img.mukewang.com/szimg/5b73d7f60001dc1e05400300-360-202.jpg',
    banner: 'https://img1.sycdn.imooc.com/szimg/5b73d7fc0001e07720000560.jpg',
    type: {
      text: '实战',
      code: 1
    },
    hard: {
      text: '高级',
      code: 3,
    },
    price: 266,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: '自游蜗牛',
      avatar: 'https://img.mukewang.com/user/5b6949e20001c6bf10801080-100-100.jpg',
      job: '区块链底层工程师',
      introduction: '现就职于某世界500强区块链团队，从事区块链底层研究以及BAAS平台搭建。精通区块链底层存储、共识等技术，职业方向偏重联盟链体系。'
    },
    labels: ['区块链']
  },
  {
    category: {
      text: '前沿技术',
      code: 4,
    },
    title: '深度学习之目标检测常用算法原理+实践精讲',
    introduction: '从原理（YOLO / Faster RCNN / SSD / 文本检测 / 多任务网络）到场景实战，掌握目标检测核心技术',
    img: 'https://img1.sycdn.imooc.com/szimg/5bfb523c0001290905400300-360-202.jpg',
    banner: 'https://img1.sycdn.imooc.com/szimg/5bfb52480001858920000559.jpg',
    type: {
      text: '实战',
      code: 1
    },
    hard: {
      text: '高级',
      code: 3,
    },
    price: 499,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: '会写代码的好厨师',
      avatar: 'https://img1.sycdn.imooc.com/user/5b8618950001cd9101440146-100-100.jpg',
      job: '资深机器学习工程师',
      introduction: '现就职于某世界500强区块链团队，从事区块链底层研究以及BAAS平台搭建。精通区块链底层存储、共识等技术，职业方向偏重联盟链体系。'
    },
    labels: ['机器学习']
  },
  {
    category: {
      text: '前沿技术',
      code: 4,
    },
    title: '看的见的算法 Zookeeper源码分析',
    introduction: '“分而治之”逐一攻克Zookeeper框架各个组件的源码',
    img: 'https://img.mukewang.com/szimg/5d1ad17f08cd16e800000000-360-202.jpg',
    banner: 'https://img.mukewang.com/szimg/5b4f355a0001852520000520.jpg',
    type: {
      text: '实战',
      code: 1
    },
    hard: {
      text: '中级',
      code: 2,
    },
    price: 388,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: '城南大师兄',
      avatar: 'https://img1.sycdn.imooc.com/user/5cac7e810001fe7705270698-100-100.jpg',
      job: '国内知名公司架构师',
      introduction: '目前主要负责后端架构设计，具有十多年一线开发和架构经验，拥有丰富的高性能、高并发处理以及大型服务器软件设计架构经验。深谙各种源码。工作中常常和千万级高并发的问题“正面硬钢” ，因此在高并发调优等方面积累了丰富的实战经验。十几年的架构经验，让讲师早已将理论和实践锻造的炉火纯青。如果你想学习他密不外传的工作‘渡劫’经验，讲师等你打Call~'
    },
    labels: ['微服务']
  },
  {
    category: {
      text: '前沿技术',
      code: 4,
    },
    title: '学习Hyperledger Fabric实战联盟链',
    introduction: '兼顾区块链应用层和底层  进击区块链工程师',
    img: 'https://img.mukewang.com/szimg/5b73d7f60001dc1e05400300-360-202.jpg',
    banner: 'https://img1.sycdn.imooc.com/szimg/5b73d7fc0001e07720000560.jpg',
    type: {
      text: '实战',
      code: 1
    },
    hard: {
      text: '高级',
      code: 3,
    },
    price: 266,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: '自游蜗牛',
      avatar: 'https://img.mukewang.com/user/5b6949e20001c6bf10801080-100-100.jpg',
      job: '区块链底层工程师',
      introduction: '现就职于某世界500强区块链团队，从事区块链底层研究以及BAAS平台搭建。精通区块链底层存储、共识等技术，职业方向偏重联盟链体系。'
    },
    labels: ['区块链']
  },
  {
    category: {
      text: '前沿技术',
      code: 4,
    },
    title: '深度学习之目标检测常用算法原理+实践精讲',
    introduction: '从原理（YOLO / Faster RCNN / SSD / 文本检测 / 多任务网络）到场景实战，掌握目标检测核心技术',
    img: 'https://img1.sycdn.imooc.com/szimg/5bfb523c0001290905400300-360-202.jpg',
    banner: 'https://img1.sycdn.imooc.com/szimg/5bfb52480001858920000559.jpg',
    type: {
      text: '实战',
      code: 1
    },
    hard: {
      text: '高级',
      code: 3,
    },
    price: 499,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: '会写代码的好厨师',
      avatar: 'https://img1.sycdn.imooc.com/user/5b8618950001cd9101440146-100-100.jpg',
      job: '资深机器学习工程师',
      introduction: '现就职于某世界500强区块链团队，从事区块链底层研究以及BAAS平台搭建。精通区块链底层存储、共识等技术，职业方向偏重联盟链体系。'
    },
    labels: ['机器学习']
  },
  {
    category: {
      text: '云计算&大数据',
      code: 5,
    },
    title: 'SparkSQL极速入门  整合Kudu实现广告业务数据分析',
    introduction: '大数据工程师干货课程 带你从入门到实战掌握SparkSQL',
    img: 'https://img1.sycdn.imooc.com/szimg/5d844ae7089e674906000338-360-202.jpg',
    banner: 'https://img1.sycdn.imooc.com/szimg/5d844af609893ec140000800.jpg',
    type: {
      text: '实战',
      code: 1
    },
    hard: {
      text: '中级',
      code: 2,
    },
    price: 388,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: 'Michael_PK',
      avatar: 'https://img1.sycdn.imooc.com/user/533e4d510001c2ad02000200-100-100.jpg',
      job: '资深大数据架构师',
      introduction: '八年互联网公司一线研发经验，担任大数据架构师。主要从事基于Spark/Flink为核心打造的大数据公有云、私有云数据平台产品的研发。改造过Hadoop、Spark等框架的源码为云平台提供更高的执行性能。集群规模过万，有丰富的大数据项目实战经验以及授课经验(授课数千小时，深受学员好评)。'
    },
    labels: ['大数据']
  },
  {
    category: {
      text: '云计算&大数据',
      code: 5,
    },
    title: 'Spark进阶 大数据离线与实时项目实战',
    introduction: '大数据生态圈中多个框架(Spark/Hbase/Redis/Hadoop)的整合应用及调优',
    img: 'https://img1.sycdn.imooc.com/szimg/59f85ec90001103405400300-360-202.jpg',
    banner: 'https://img1.sycdn.imooc.com/szimg/5d844af609893ec140000800.jpg',
    type: {
      text: '实战',
      code: 1
    },
    hard: {
      text: '中级',
      code: 2,
    },
    price: 399,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: 'Michael_PK',
      avatar: 'https://img1.sycdn.imooc.com/user/533e4d510001c2ad02000200-100-100.jpg',
      job: '资深大数据架构师',
      introduction: '八年互联网公司一线研发经验，担任大数据架构师。主要从事基于Spark/Flink为核心打造的大数据公有云、私有云数据平台产品的研发。改造过Hadoop、Spark等框架的源码为云平台提供更高的执行性能。集群规模过万，有丰富的大数据项目实战经验以及授课经验(授课数千小时，深受学员好评)。'
    },
    labels: ['大数据']
  },
  {
    category: {
      text: '云计算&大数据',
      code: 5,
    },
    title: 'Spark Streaming实时流处理项目实战 ',
    introduction: 'Flume+Kafka+Spark Streaming 构建通用实时流处理平台',
    img: 'https://img1.sycdn.imooc.com/szimg/5c203a4b0001dcf306000338-360-202.jpg',
    banner: 'https://img.mukewang.com/szimg/5c203a520001d14320000560.jpg',
    type: {
      text: '实战',
      code: 1
    },
    hard: {
      text: '中级',
      code: 2,
    },
    price: 288,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: 'Michael_PK',
      avatar: 'https://img1.sycdn.imooc.com/user/533e4d510001c2ad02000200-100-100.jpg',
      job: '资深大数据架构师',
      introduction: '八年互联网公司一线研发经验，担任大数据架构师。主要从事基于Spark/Flink为核心打造的大数据公有云、私有云数据平台产品的研发。改造过Hadoop、Spark等框架的源码为云平台提供更高的执行性能。集群规模过万，有丰富的大数据项目实战经验以及授课经验(授课数千小时，深受学员好评)。'
    },
    labels: ['大数据']
  },
  {
    category: {
      text: '运维&测试',
      code: 6,
    },
    title: '跟着360架构师 学习Shell脚本编程',
    introduction: '30%知识讲解+70%实例操作 掌握Shell脚本编程能力',
    img: 'https://img1.sycdn.imooc.com/szimg/5c46c4a308ad3b3406000338-360-202.jpg',
    banner: 'https://img.mukewang.com/szimg/5c46c4ae099dc71320000560.jpg',
    type: {
      text: '实战',
      code: 1
    },
    hard: {
      text: '中级',
      code: 2,
    },
    price: 366,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: '酷田',
      avatar: 'http://img2.sycdn.imooc.com/5c297bb600013f6d11100834-160-160.jpg',
      job: '全栈工程师',
      introduction: '360企业安全集团资深工程师，曾就职于中国移动、亚信科技 ，等知名大型公司，多年工作经验积累，所传授的知识技能可以让你在实际工作中有的放矢，游刃有余。'
    },
    labels: ['运维']
  },
  {
    category: {
      text: '运维&测试',
      code: 6,
    },
    title: '企业级开源四层负载均衡解决方案-LVS',
    introduction: '轻松应对负载均衡，深刻理解网络系统架构，真正解决工作中的实际问题',
    img: 'https://img1.sycdn.imooc.com/szimg/5b99c15f0001ca0206000338-360-202.jpg',
    banner: 'https://img.mukewang.com/szimg/5b99d1e90001903240001120.jpg',
    type: {
      text: '实战',
      code: 1
    },
    hard: {
      text: '中级',
      code: 2,
    },
    price: 199,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: '酷田',
      avatar: 'http://img2.sycdn.imooc.com/5c297bb600013f6d11100834-160-160.jpg',
      job: '全栈工程师',
      introduction: '360企业安全集团资深工程师，曾就职于中国移动、亚信科技 ，等知名大型公司，多年工作经验积累，所传授的知识技能可以让你在实际工作中有的放矢，游刃有余。'
    },
    labels: ['运维']
  },
  {
    category: {
      text: '运维&测试',
      code: 6,
    },
    title: '跟着360架构师 学习Shell脚本编程',
    introduction: '30%知识讲解+70%实例操作 掌握Shell脚本编程能力',
    img: 'https://img1.sycdn.imooc.com/szimg/5c46c4a308ad3b3406000338-360-202.jpg',
    banner: 'https://img.mukewang.com/szimg/5c46c4ae099dc71320000560.jpg',
    type: {
      text: '实战',
      code: 1
    },
    hard: {
      text: '中级',
      code: 2,
    },
    price: 366,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: '酷田',
      avatar: 'http://img2.sycdn.imooc.com/5c297bb600013f6d11100834-160-160.jpg',
      job: '全栈工程师',
      introduction: '360企业安全集团资深工程师，曾就职于中国移动、亚信科技 ，等知名大型公司，多年工作经验积累，所传授的知识技能可以让你在实际工作中有的放矢，游刃有余。'
    },
    labels: ['运维']
  },
  {
    category: {
      text: '运维&测试',
      code: 6,
    },
    title: '企业级开源四层负载均衡解决方案-LVS',
    introduction: '轻松应对负载均衡，深刻理解网络系统架构，真正解决工作中的实际问题',
    img: 'https://img1.sycdn.imooc.com/szimg/5b99c15f0001ca0206000338-360-202.jpg',
    banner: 'https://img.mukewang.com/szimg/5b99d1e90001903240001120.jpg',
    type: {
      text: '实战',
      code: 1
    },
    hard: {
      text: '中级',
      code: 2,
    },
    price: 199,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: '酷田',
      avatar: 'http://img2.sycdn.imooc.com/5c297bb600013f6d11100834-160-160.jpg',
      job: '全栈工程师',
      introduction: '360企业安全集团资深工程师，曾就职于中国移动、亚信科技 ，等知名大型公司，多年工作经验积累，所传授的知识技能可以让你在实际工作中有的放矢，游刃有余。'
    },
    labels: ['运维']
  },
  {
    category: {
      text: '数据库',
      code: 7,
    },
    title: '零基础入门 全角度解读企业主流数据库MySQL8.0',
    introduction: '掌握SQL优化与慢查询优化，具备独当一面的能力，彰显更多个人价值',
    img: 'https://img.mukewang.com/szimg/5ca5e266085019b306000338-360-202.jpg',
    banner: 'https://img.mukewang.com/szimg/5ca5e26e09568dbc20000400.jpg',
    type: {
      text: '实战',
      code: 1
    },
    hard: {
      text: '入门',
      code: 0,
    },
    price: 266,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: 'sqlercn',
      avatar: 'http://img3.sycdn.imooc.com/5ad7144100017a5e07410741-160-160.jpg',
      job: '数据库工程师',
      introduction: '高级数据库工程师（DBA），从事数据库管理工作多年，曾就职于聚美优品、猫扑、TOM等多家大型互联网公司，进行过千万级的数据处理，对大数据业务、高并发时数据优化积累了大量丰富的经验。'
    },
    labels: ['MySql']
  },
  {
    category: {
      text: '数据库',
      code: 7,
    },
    title: '零基础入门 全角度解读企业主流数据库MySQL8.0',
    introduction: '掌握SQL优化与慢查询优化，具备独当一面的能力，彰显更多个人价值',
    img: 'https://img.mukewang.com/szimg/5ca5e266085019b306000338-360-202.jpg',
    banner: 'https://img.mukewang.com/szimg/5ca5e26e09568dbc20000400.jpg',
    type: {
      text: '实战',
      code: 1
    },
    hard: {
      text: '入门',
      code: 0,
    },
    price: 266,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: 'sqlercn',
      avatar: 'http://img3.sycdn.imooc.com/5ad7144100017a5e07410741-160-160.jpg',
      job: '数据库工程师',
      introduction: '高级数据库工程师（DBA），从事数据库管理工作多年，曾就职于聚美优品、猫扑、TOM等多家大型互联网公司，进行过千万级的数据处理，对大数据业务、高并发时数据优化积累了大量丰富的经验。'
    },
    labels: ['MySql']
  },
  {
    category: {
      text: '数据库',
      code: 7,
    },
    title: '中高级开发晋升利器 MySQL面试指南',
    introduction: '9大类常见问题详解，切实提升数据库应用和管理能力，升职加薪必备佳品！',
    img: 'https://img.mukewang.com/szimg/5bdc3b81000178e812000676-360-202.jpg',
    banner: 'https://img.mukewang.com/szimg/5bdc3b8a0001583240001120.jpg',
    type: {
      text: '实战',
      code: 1
    },
    hard: {
      text: '中级',
      code: 2,
    },
    price: 288,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: 'sqlercn',
      avatar: 'http://img3.sycdn.imooc.com/5ad7144100017a5e07410741-160-160.jpg',
      job: '数据库工程师',
      introduction: '高级数据库工程师（DBA），从事数据库管理工作多年，曾就职于聚美优品、猫扑、TOM等多家大型互联网公司，进行过千万级的数据处理，对大数据业务、高并发时数据优化积累了大量丰富的经验。'
    },
    labels: ['MySql']
  },
  {
    category: {
      text: '数据库',
      code: 7,
    },
    title: '零基础入门 全角度解读企业主流数据库MySQL8.0',
    introduction: '掌握SQL优化与慢查询优化，具备独当一面的能力，彰显更多个人价值',
    img: 'https://img.mukewang.com/szimg/5ca5e266085019b306000338-360-202.jpg',
    banner: 'https://img.mukewang.com/szimg/5ca5e26e09568dbc20000400.jpg',
    type: {
      text: '实战',
      code: 1
    },
    hard: {
      text: '入门',
      code: 0,
    },
    price: 266,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: 'sqlercn',
      avatar: 'http://img3.sycdn.imooc.com/5ad7144100017a5e07410741-160-160.jpg',
      job: '数据库工程师',
      introduction: '高级数据库工程师（DBA），从事数据库管理工作多年，曾就职于聚美优品、猫扑、TOM等多家大型互联网公司，进行过千万级的数据处理，对大数据业务、高并发时数据优化积累了大量丰富的经验。'
    },
    labels: ['MySql']
  },
  {
    category: {
      text: '数据库',
      code: 7,
    },
    title: '中高级开发晋升利器 MySQL面试指南',
    introduction: '9大类常见问题详解，切实提升数据库应用和管理能力，升职加薪必备佳品！',
    img: 'https://img.mukewang.com/szimg/5bdc3b81000178e812000676-360-202.jpg',
    banner: 'https://img.mukewang.com/szimg/5bdc3b8a0001583240001120.jpg',
    type: {
      text: '实战',
      code: 1
    },
    hard: {
      text: '中级',
      code: 2,
    },
    price: 288,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: 'sqlercn',
      avatar: 'http://img3.sycdn.imooc.com/5ad7144100017a5e07410741-160-160.jpg',
      job: '数据库工程师',
      introduction: '高级数据库工程师（DBA），从事数据库管理工作多年，曾就职于聚美优品、猫扑、TOM等多家大型互联网公司，进行过千万级的数据处理，对大数据业务、高并发时数据优化积累了大量丰富的经验。'
    },
    labels: ['MySql']
  },
  {
    category: {
      text: '数据库',
      code: 7,
    },
    title: '玩转MongoDB4.0(最新版) 从入门到实践',
    introduction: '30%理论+70%实战，让你用实操去检验真理,一门让你事半功倍的入门进阶课',
    img: 'https://img.mukewang.com/szimg/5c90dc020849c59a06000338-360-202.jpg',
    banner: 'https://img.mukewang.com/szimg/5b4f355a0001852520000520.jpg',
    type: {
      text: '实战',
      code: 1
    },
    hard: {
      text: '入门',
      code: 0,
    },
    price: 288,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: 'Stannum',
      avatar: 'https://img1.sycdn.imooc.com/user/5b558fd00001ca6207410741-100-100.jpg',
      job: 'Java/C++敏捷开发专家',
      introduction: '目前在财经界俗称的“大摩”，一家成立于美国纽约的国际金融服务公司-摩根士丹利担任软件工程师和敏捷开发专家。 主攻Event Sourcing架构模式的应用。是一个“只有男同事,没有女同事”的程序媛一枚,先后就职于多家投资银行，负责开发“每一个bug都很贵”的内部交易系统,主导了股票交易执行系统和衍生品交易风险控制系统。'
    },
    labels: ['MongoDB']
  },
  {
    category: {
      text: 'UI设计&多媒体',
      code: 8,
    },
    title: '高薪设计师必修课 AE移动UI动效设计从入门到实战',
    introduction: '20多个商业实用案例，轻松Get√到AE动效核心技术，让你的作品脱颖而出！',
    img: 'https://img.mukewang.com/szimg/5aa9d2c1000104d510800600-360-202.jpg',
    banner: 'https://img.mukewang.com/szimg/5b51c7100001351220000560.jpg',
    type: {
      text: '实战',
      code: 1
    },
    hard: {
      text: '中级',
      code: 2,
    },
    price: 199,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: '墨染ART',
      avatar: 'http://img4.sycdn.imooc.com/5b1c1e530001c06c07410719-160-160.jpg',
      job: 'UI设计师',
      introduction: '站酷推荐设计师，UI中国推荐设计师。热门UI动效实战系列教程作者，对UI设计、动效设计、多终端响应式设计有深入的研究和经验。'
    },
    labels: ['设计基础']
  },
  {
    category: {
      text: 'UI设计&多媒体',
      code: 8,
    },
    title: '移动端App UI设计入门与实战',
    introduction: '涉及多项实用设计技能训练，成为一名具有“产品思维”的设计师！',
    img: 'https://img.mukewang.com/szimg/5a123d7e00011fa705400300-360-202.jpg',
    banner: 'https://img.mukewang.com/szimg/5b51c7100001351220000560.jpg',
    type: {
      text: '实战',
      code: 1
    },
    hard: {
      text: '中级',
      code: 2,
    },
    price: 199,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: '墨染ART',
      avatar: 'http://img4.sycdn.imooc.com/5b1c1e530001c06c07410719-160-160.jpg',
      job: 'UI设计师',
      introduction: '站酷推荐设计师，UI中国推荐设计师。热门UI动效实战系列教程作者，对UI设计、动效设计、多终端响应式设计有深入的研究和经验。'
    },
    labels: ['设计基础', 'APPUI设计']
  },
  {
    category: {
      text: 'UI设计&多媒体',
      code: 8,
    },
    title: '高薪设计师必修课 AE移动UI动效设计从入门到实战',
    introduction: '20多个商业实用案例，轻松Get√到AE动效核心技术，让你的作品脱颖而出！',
    img: 'https://img.mukewang.com/szimg/5aa9d2c1000104d510800600-360-202.jpg',
    banner: 'https://img.mukewang.com/szimg/5b51c7100001351220000560.jpg',
    type: {
      text: '实战',
      code: 1
    },
    hard: {
      text: '中级',
      code: 2,
    },
    price: 199,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: '墨染ART',
      avatar: 'http://img4.sycdn.imooc.com/5b1c1e530001c06c07410719-160-160.jpg',
      job: 'UI设计师',
      introduction: '站酷推荐设计师，UI中国推荐设计师。热门UI动效实战系列教程作者，对UI设计、动效设计、多终端响应式设计有深入的研究和经验。'
    },
    labels: ['设计基础']
  },
  {
    category: {
      text: 'UI设计&多媒体',
      code: 8,
    },
    title: '移动端App UI设计入门与实战',
    introduction: '涉及多项实用设计技能训练，成为一名具有“产品思维”的设计师！',
    img: 'https://img.mukewang.com/szimg/5a123d7e00011fa705400300-360-202.jpg',
    banner: 'https://img.mukewang.com/szimg/5b51c7100001351220000560.jpg',
    type: {
      text: '实战',
      code: 1
    },
    hard: {
      text: '中级',
      code: 2,
    },
    price: 199,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: '墨染ART',
      avatar: 'http://img4.sycdn.imooc.com/5b1c1e530001c06c07410719-160-160.jpg',
      job: 'UI设计师',
      introduction: '站酷推荐设计师，UI中国推荐设计师。热门UI动效实战系列教程作者，对UI设计、动效设计、多终端响应式设计有深入的研究和经验。'
    },
    labels: ['设计基础', 'APPUI设计']
  },
  {
    category: {
      text: '前端开发',
      code: 0,
    },
    title: '初识HTML(5)+CSS(3)-2020升级版',
    introduction: 'HTML(5)+CSS(3)基础教程8小时带领大家步步深入学习标签用法和意义',
    img: 'https://img4.mukewang.com/529dc3380001379906000338-240-135.jpg',
    banner: '',
    type: {
      text: '免费',
      code: 0
    },
    hard: {
      text: '入门',
      code: 0,
    },
    price: 0,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: '丶五月的夏天',
      avatar: 'https://img2.mukewang.com/54584f6d0001759002200220-80-80.jpg',
      job: 'Web前端工程师',
      introduction: ''
    },
    labels: ['HTML/CSS']
  },
  {
    category: {
      text: '前端开发',
      code: 0,
    },
    title: 'JavaScript入门篇',
    introduction: 'JavaScript做为一名Web工程师的必备技术，本教程让您快速入门',
    img: 'https://img2.mukewang.com/53e1d0470001ad1e06000338-240-135.jpg',
    banner: '',
    type: {
      text: '免费',
      code: 0
    },
    hard: {
      text: '入门',
      code: 0,
    },
    price: 0,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: '慕课官方号',
      avatar: 'https://img1.mukewang.com/5b88f1f50001688401500150-80-80.jpg',
      job: '页面重构设计',
      introduction: ''
    },
    labels: ['JavaScript']
  },
  {
    category: {
      text: '前端开发',
      code: 0,
    },
    title: 'JavaScript进阶篇',
    introduction: '本课程从如何插入JS代码开始，带您进入网页动态交互世界',
    img: 'https://img2.mukewang.com/574678bd00010a7206000338-240-135.jpg',
    banner: '',
    type: {
      text: '免费',
      code: 0
    },
    hard: {
      text: '入门',
      code: 0,
    },
    price: 0,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: '慕课官方号',
      avatar: 'https://img1.mukewang.com/5b88f1f50001688401500150-80-80.jpg',
      job: '页面重构设计',
      introduction: ''
    },
    labels: ['JavaScript']
  },
  {
    category: {
      text: '前端开发',
      code: 0,
    },
    title: 'vue2.5入门',
    introduction: '快速理解Vue编程理念上手Vue2.0开发。',
    img: 'https://img2.mukewang.com/5ad5cc490001e53006000338-240-135.jpg',
    banner: '',
    type: {
      text: '免费',
      code: 0
    },
    hard: {
      text: '中级',
      code: 2,
    },
    price: 0,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: 'Dell',
      avatar: 'https://img4.mukewang.com/5abe468b0001664107390741-80-80.jpg',
      job: 'Web前端工程师',
      introduction: ''
    },
    labels: ['Vue.js']
  },
  {
    category: {
      text: '前端开发',
      code: 0,
    },
    title: 'Vue+Webpack打造todo应用',
    introduction: '用前端最热门框架Vue+最火打包工具Webpack打造todo应用',
    img: 'https://img1.mukewang.com/5a56fdb400017d0306000338-240-135.jpg',
    banner: '',
    type: {
      text: '免费',
      code: 0
    },
    hard: {
      text: '高级',
      code: 3,
    },
    price: 0,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: 'Jokcy',
      avatar: 'https://img1.sycdn.imooc.com/5a697c950001262b05790578-80-80.jpg',
      job: 'Web前端工程师',
      introduction: ''
    },
    labels: ['Vue.js']
  },
  {
    category: {
      text: '前端开发',
      code: 0,
    },
    title: 'Vue+node.js调试入门',
    introduction: '理论实践相结合学习使用 Inspector 调试 Node.js。',
    img: 'https://img3.sycdn.imooc.com/5c3eaa0a08d7052706000338-240-135.jpg',
    banner: '',
    type: {
      text: '免费',
      code: 0
    },
    hard: {
      text: '入门',
      code: 0,
    },
    price: 0,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: 'lewis',
      avatar: 'https://img.mukewang.com/5c3ea1f10001b55908070807-80-80.jpg',
      job: 'Web前端工程师',
      introduction: ''
    },
    labels: ['Node.js']
  },
  {
    category: {
      text: '前端开发',
      code: 0,
    },
    title: 'Nodejs全栈入门',
    introduction: '基于node+mysql+react全栈实战',
    img: 'https://img3.sycdn.imooc.com/5dd7561309f8ae4806000338-240-135.png',
    banner: '',
    type: {
      text: '免费',
      code: 0
    },
    hard: {
      text: '中级',
      code: 2,
    },
    price: 0,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: '一缕孤烟',
      avatar: 'https://img4.mukewang.com/54a2bf390001593c01000100-80-80.jpg',
      job: 'Web前端工程师',
      introduction: ''
    },
    labels: ['Node.js']
  },
  {
    category: {
      text: '后端开发',
      code: 1,
    },
    title: '使用Prometheus实践基于Spring Boot监控告警体系',
    introduction: '基于Spring Boot2.X使用Prometheus实现监控大盘及微服务告警功能。',
    img: 'https://img2.mukewang.com/5e82b5b8099dc26405400300-240-135.png',
    banner: '',
    type: {
      text: '免费',
      code: 0
    },
    hard: {
      text: '中级',
      code: 2,
    },
    price: 0,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: '龙猪GG',
      avatar: 'https://img1.mukewang.com/5b8cd6cb000114e702000112-80-80.jpg',
      job: '架构师',
      introduction: ''
    },
    labels: ['Java']
  },
  {
    category: {
      text: '后端开发',
      code: 1,
    },
    title: '二进制与Java中的基本数据类型',
    introduction: '从认识二进制开始，逐步理解Java是如何存储和处理数据的。',
    img: 'https://img.mukewang.com/5e646d5708f882d512000676-240-135.jpg',
    banner: '',
    type: {
      text: '免费',
      code: 0
    },
    hard: {
      text: '入门',
      code: 0,
    },
    price: 0,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: '舞马',
      avatar: 'https://img.mukewang.com/5e3c0b840001796401500124-80-80.jpg',
      job: '软件工程师',
      introduction: ''
    },
    labels: ['Java']
  },
  {
    category: {
      text: '后端开发',
      code: 1,
    },
    title: '自己动手实现RPC框架',
    introduction: '自己动手实现一个完整的RPC框架，So Easy！',
    img: 'https://img.mukewang.com/5e37d120082e7c7c06000338-240-135.jpg',
    banner: '',
    type: {
      text: '免费',
      code: 0
    },
    hard: {
      text: '中级',
      code: 2,
    },
    price: 0,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: '司马极客',
      avatar: 'https://img4.mukewang.com/5b8cdb710001d95c02000200-80-80.jpg',
      job: '软件工程师',
      introduction: ''
    },
    labels: ['Java']
  },
  {
    category: {
      text: '后端开发',
      code: 1,
    },
    title: 'MUI+个推实现安卓与ios移动端推送',
    introduction: '结合慕信轻聊Netty实战，整合个推到前端与后端，实现安卓与ios移动端推送',
    img: 'https://img4.mukewang.com/5bebce6b0001bd6106000336-240-135.jpg',
    banner: '',
    type: {
      text: '免费',
      code: 0
    },
    hard: {
      text: '初级',
      code: 1,
    },
    price: 0,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: '风间影月',
      avatar: 'https://img4.mukewang.com/5a0c5df20001a1cb05800580-80-80.jpg',
      job: '全栈工程师',
      introduction: ''
    },
    labels: ['Java', 'SpringBoot']
  },
  {
    category: {
      text: '后端开发',
      code: 1,
    },
    title: 'Springboot 微信小程序 – 微信登录功能实战',
    introduction: '简单实现在小程序中对使用微信登录的方式来登录小程序应用',
    img: 'https://img2.mukewang.com/5bbf2def000118ab06000336-240-135.jpg',
    banner: '',
    type: {
      text: '免费',
      code: 0
    },
    hard: {
      text: '初级',
      code: 1,
    },
    price: 0,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: '风间影月',
      avatar: 'https://img4.mukewang.com/5a0c5df20001a1cb05800580-80-80.jpg',
      job: '全栈工程师',
      introduction: ''
    },
    labels: ['Java', 'SpringBoot']
  },
  {
    category: {
      text: '后端开发',
      code: 1,
    },
    title: 'Numpy基础入门',
    introduction: '从基本数组入手全面讲解Numpy中的核心知识',
    img: 'https://img.mukewang.com/5e9683f808f03af912000676-240-135.jpg',
    banner: '',
    type: {
      text: '免费',
      code: 0
    },
    hard: {
      text: '入门',
      code: 0,
    },
    price: 0,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: '夏正东',
      avatar: 'https://img2.mukewang.com/5da6841d0001f79409600960-80-80.jpg',
      job: 'Python工程师',
      introduction: ''
    },
    labels: ['Python']
  },
  {
    category: {
      text: '后端开发',
      code: 1,
    },
    title: 'Python数据预处理（四）- 特征降维与可视化',
    introduction: '教会你使用Python数据预处理',
    img: 'https://img2.mukewang.com/5ce4b199083e469306000338-240-135.jpg',
    banner: '',
    type: {
      text: '免费',
      code: 0
    },
    hard: {
      text: '初级',
      code: 1,
    },
    price: 0,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: '伏草惟存',
      avatar: 'https://img3.mukewang.com/545863cd0001b72a02200220-80-80.jpg',
      job: '算法工程师',
      introduction: ''
    },
    labels: ['Python', '自然语言处理']
  },
  {
    category: {
      text: '移动端开发',
      code: 2,
    },
    title: 'MultiDex从基础原理到实践优化',
    introduction: 'Android进阶学习必备，带你从基础用法到实践优化一站式掌握MultiDex。',
    img: 'https://img.mukewang.com/5e6098b409a0151406000338-240-135.png',
    banner: '',
    type: {
      text: '免费',
      code: 0
    },
    hard: {
      text: '中级',
      code: 2,
    },
    price: 0,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: '凡諾',
      avatar: 'https://img.mukewang.com/5e57662a00012deb11111109-80-80.jpg',
      job: '移动开发工程师',
      introduction: ''
    },
    labels: ['Android']
  },
  {
    category: {
      text: '移动端开发',
      code: 2,
    },
    title: 'Android网络安全之加解密',
    introduction: '在不安全的网络环境中，如何安全的传输敏感数据',
    img: 'https://img4.mukewang.com/5dfc2e870902f80d06000338-240-135.png',
    banner: '',
    type: {
      text: '免费',
      code: 0
    },
    hard: {
      text: '中级',
      code: 2,
    },
    price: 0,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: '凡諾',
      avatar: 'https://img.mukewang.com/5e57662a00012deb11111109-80-80.jpg',
      job: '移动开发工程师',
      introduction: ''
    },
    labels: ['Android']
  },
  {
    category: {
      text: '移动端开发',
      code: 2,
    },
    title: 'Android CMake以及NDK实践基础',
    introduction: 'Android底层开发入门必备，CMake动态库编译和使用，NDK的各种开发技巧。 ',
    img: 'https://img1.mukewang.com/5de8a5740989152106000338-240-135.png',
    banner: '',
    type: {
      text: '免费',
      code: 0
    },
    hard: {
      text: '中级',
      code: 2,
    },
    price: 0,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: 'glumes',
      avatar: 'https://img3.mukewang.com/5462e44b0001421501800180-80-80.jpg',
      job: '移动开发工程师',
      introduction: ''
    },
    labels: ['Android']
  },
  {
    category: {
      text: '计算机基础',
      code: 3,
    },
    title: 'Android 机器学习中的统计学基础',
    introduction: '机器学习中的常用统计学知识点 ',
    img: 'https://img4.mukewang.com/5b470bfe0001cdbf06000338-240-135.jpg',
    banner: '',
    type: {
      text: '免费',
      code: 0
    },
    hard: {
      text: '初级',
      code: 1,
    },
    price: 0,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: '北极小琪',
      avatar: 'https://img4.mukewang.com/5bcd983c0001264203500350-80-80.jpg',
      job: '算法工程师',
      introduction: ''
    },
    labels: ['计算机网络', '算法与数据结构']
  },
  {
    category: {
      text: '计算机基础',
      code: 3,
    },
    title: 'Javascript实现二叉树算法',
    introduction: '感受JS与数据结构的魅力。 ',
    img: 'https://img3.mukewang.com/59ae0e2a0001307706000338-240-135.jpg',
    banner: '',
    type: {
      text: '免费',
      code: 0
    },
    hard: {
      text: '中级',
      code: 2,
    },
    price: 0,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: 'coding迪斯尼',
      avatar: 'https://img.mukewang.com/57a333b400010f6006400478-80-80.jpg',
      job: '全栈工程师',
      introduction: ''
    },
    labels: ['JavaScript', '算法与数据结构']
  }
]"""
    txt = demjson.decode(txt)
    for index, one in enumerate(txt):
        type = one["type"]
        try:
            item = LessonType(**type)
            item.save()
        except django.db.utils.IntegrityError:
            pass


def import_lesson_hard_type():
    txt = """[
  {
    category: {
      text: '前端开发',
      code: 0,
    },
    title: 'TypeScript  系统入门到项目实战 趁早学习提高职场竞争力',
    introduction: 'Dell老师专为TypeScript小白打造的，全栈式教学TS入门课程',
    img: 'https://img.mukewang.com/szimg/5e1d990f0885d97306000338-360-202.jpg',
    banner: 'https://img1.sycdn.imooc.com/szimg/5e1d991809c5318e40000800.jpg',
    type: {
      text: '实战',
      code: 1
    },
    hard: {
      text: '中级',
      code: 2,
    },
    price: 266,
    isDiscount: true,
    discountPrice: 216,
    teacher: {
      name: 'Dell',
      avatar: 'https://img1.sycdn.imooc.com/user/5abe468b0001664107390741-100-100.jpg',
      job: 'Web前端工程师',
      introduction: 'BAT资深前端工程师，负责数据平台技术研发。曾任去哪儿网高级前端工程师，主导去哪儿网内部前端监控系统设计，负责去哪儿网门票用户端的前端设计开发。曾任国内知名培训机构高级前端讲师，负责React，Angular，Vue，Hybrid，RN的课程讲授，具备丰富前端授课经验。对优雅编程及工程化有深度思考及见解，教会你写代码，同时帮助你把代码写的更漂亮！'
    },
    labels: ['TypeScript']
  },
  {
    category: {
      text: '前端开发',
      code: 0,
    },
    title: '前端要学的测试课 从Jest入门到 TDD/BDD双实战',
    introduction: '以Vue/React项目进行自动化测试实战，让你技术水平和架构思维双提升',
    img: 'https://img.mukewang.com/szimg/5d36a6000837a91d06000338-360-202.jpg',
    banner: 'https://img.mukewang.com/szimg/5d36a60709f5666320000400.jpg',
    type: {
      text: '实战',
      code: 1
    },
    hard: {
      text: '中级',
      code: 2,
    },
    price: 299,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: 'Dell',
      avatar: 'https://img1.sycdn.imooc.com/user/5abe468b0001664107390741-100-100.jpg',
      job: 'Web前端工程师',
      introduction: 'BAT资深前端工程师，负责数据平台技术研发。曾任去哪儿网高级前端工程师，主导去哪儿网内部前端监控系统设计，负责去哪儿网门票用户端的前端设计开发。曾任国内知名培训机构高级前端讲师，负责React，Angular，Vue，Hybrid，RN的课程讲授，具备丰富前端授课经验。对优雅编程及工程化有深度思考及见解，教会你写代码，同时帮助你把代码写的更漂亮！'
    },
    labels: ['Vue.js', 'React.js']
  },
  {
    category: {
      text: '前端开发',
      code: 0,
    },
    title: '从基础到实战 手把手带你掌握新版Webpack4.0',
    introduction: '知识点+项目实例+原理讲解 全方位解析Webpack4最新版本',
    img: 'https://img.mukewang.com/szimg/5c6bdb3e08e4674a06000338-360-202.jpg',
    banner: 'https://img.mukewang.com/szimg/5c6bdb4f09c2401020000400.jpg',
    type: {
      text: '实战',
      code: 1
    },
    hard: {
      text: '中级',
      code: 2,
    },
    price: 299,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: 'Dell',
      avatar: 'https://img1.sycdn.imooc.com/user/5abe468b0001664107390741-100-100.jpg',
      job: 'Web前端工程师',
      introduction: 'BAT资深前端工程师，负责数据平台技术研发。曾任去哪儿网高级前端工程师，主导去哪儿网内部前端监控系统设计，负责去哪儿网门票用户端的前端设计开发。曾任国内知名培训机构高级前端讲师，负责React，Angular，Vue，Hybrid，RN的课程讲授，具备丰富前端授课经验。对优雅编程及工程化有深度思考及见解，教会你写代码，同时帮助你把代码写的更漂亮！'
    },
    labels: ['Vue.js', 'React.js']
  },
  {
    category: {
      text: '前端开发',
      code: 0,
    },
    title: 'React服务器渲染原理解析与实践',
    introduction: '从零开始，带你搭建属于自己的React SSR框架，从根本上解决客户端渲染问题 。',
    img: 'https://img.mukewang.com/szimg/5ba07190000135b505400300-360-202.jpg',
    banner: 'https://img.mukewang.com/szimg/5c6bdb4f09c2401020000400.jpg',
    type: {
      text: '实战',
      code: 1
    },
    hard: {
      text: '中级',
      code: 2,
    },
    price: 299,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: 'Dell',
      avatar: 'https://img1.sycdn.imooc.com/user/5abe468b0001664107390741-100-100.jpg',
      job: 'Web前端工程师',
      introduction: 'BAT资深前端工程师，负责数据平台技术研发。曾任去哪儿网高级前端工程师，主导去哪儿网内部前端监控系统设计，负责去哪儿网门票用户端的前端设计开发。曾任国内知名培训机构高级前端讲师，负责React，Angular，Vue，Hybrid，RN的课程讲授，具备丰富前端授课经验。对优雅编程及工程化有深度思考及见解，教会你写代码，同时帮助你把代码写的更漂亮！'
    },
    labels: ['React.js']
  },
  {
    category: {
      text: '前端开发',
      code: 0,
    },
    title: 'React开发简书项目 从零基础入门到实战 ',
    introduction: '主流新技术 React-redux，React-router4，贯穿基础语法及项目实战。',
    img: 'https://img.mukewang.com/szimg/5b3082da0001d7e905400300-360-202.jpg',
    banner: 'https://img.mukewang.com/szimg/5b508ba90001116220000560.jpg',
    type: {
      text: '实战',
      code: 1
    },
    hard: {
      text: '中级',
      code: 2,
    },
    price: 299,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: 'Dell',
      avatar: 'https://img1.sycdn.imooc.com/user/5abe468b0001664107390741-100-100.jpg',
      job: 'Web前端工程师',
      introduction: 'BAT资深前端工程师，负责数据平台技术研发。曾任去哪儿网高级前端工程师，主导去哪儿网内部前端监控系统设计，负责去哪儿网门票用户端的前端设计开发。曾任国内知名培训机构高级前端讲师，负责React，Angular，Vue，Hybrid，RN的课程讲授，具备丰富前端授课经验。对优雅编程及工程化有深度思考及见解，教会你写代码，同时帮助你把代码写的更漂亮！'
    },
    labels: ['React.js']
  },
  {
    category: {
      text: '前端开发',
      code: 0,
    },
    title: '经典再升级-新版Vue2.6开发去哪儿网App 从零基础入门到实战项目',
    introduction: '基于Vue最新版本，从基础语法到完整项目，一课掌握Vue基础知识点',
    img: 'https://img.mukewang.com/szimg/5b3082da0001d7e905400300-360-202.jpg',
    banner: 'https://img.mukewang.com/szimg/5b50858100011b9220000560.jpg',
    type: {
      text: '实战',
      code: 1
    },
    hard: {
      text: '中级',
      code: 2,
    },
    price: 266,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: 'Dell',
      avatar: 'https://img1.sycdn.imooc.com/user/5abe468b0001664107390741-100-100.jpg',
      job: 'Web前端工程师',
      introduction: 'BAT资深前端工程师，负责数据平台技术研发。曾任去哪儿网高级前端工程师，主导去哪儿网内部前端监控系统设计，负责去哪儿网门票用户端的前端设计开发。曾任国内知名培训机构高级前端讲师，负责React，Angular，Vue，Hybrid，RN的课程讲授，具备丰富前端授课经验。对优雅编程及工程化有深度思考及见解，教会你写代码，同时帮助你把代码写的更漂亮！'
    },
    labels: ['Vue.js']
  },
  {
    category: {
      text: '前端开发',
      code: 0,
    },
    title: '下一代前端开发语言 TypeScript从零重构axios',
    introduction: '掌握TS，学习vue3.0源码必备基础！课程从零开始重构功能完整的JS库，是学习造轮子的不二之选！',
    img: 'https://img.mukewang.com/szimg/5cbf00c608f52a3b06000338-360-202.jpg',
    banner: 'https://img.mukewang.com/szimg/5cbf00cb092626c820000400.jpg',
    type: {
      text: '实战',
      code: 1
    },
    hard: {
      text: '中级',
      code: 2,
    },
    price: 388,
    isDiscount: true,
    discountPrice: 348,
    teacher: {
      name: 'ustbhuangyi',
      avatar: 'https://img.mukewang.com/user/577baef700019c4501400140-100-100.jpg',
      job: 'Web前端工程师',
      introduction: '曾任职百度、滴滴，现担任Zoom前端架构师，推进前后端分离架构方案，同时负责 Zoom 自研组件库。公众号《老黄的前端私房菜》，《Vue.js 技术揭秘》独立作者，《Vue.js 权威指南》主要作者，开源项目 better-scroll 作者。曾主导滴滴开源项目 cube-ui，建立团队技术博客。'
    },
    labels: ['TypeScript']
  },
  {
    category: {
      text: '前端开发',
      code: 0,
    },
    title: 'Vue.js2.5+cube-ui重构饿了么App（经典再升级）',
    introduction: '掌握Vue1.0到2.0再到2.5最全版本应用与迭代，打造极致流畅的WebApp',
    img: 'https://img.mukewang.com/szimg/5becd5ad0001b89306000338-360-202.jpg',
    banner: 'https://img1.sycdn.imooc.com/szimg/5becd5bc0001d45120000560.jpg',
    type: {
      text: '实战',
      code: 1
    },
    hard: {
      text: '中级',
      code: 2,
    },
    price: 198,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: 'ustbhuangyi',
      avatar: 'https://img.mukewang.com/user/577baef700019c4501400140-100-100.jpg',
      job: 'Web前端工程师',
      introduction: '曾任职百度、滴滴，现担任Zoom前端架构师，推进前后端分离架构方案，同时负责 Zoom 自研组件库。公众号《老黄的前端私房菜》，《Vue.js 技术揭秘》独立作者，《Vue.js 权威指南》主要作者，开源项目 better-scroll 作者。曾主导滴滴开源项目 cube-ui，建立团队技术博客。'
    },
    labels: ['Vue.js']
  },
  {
    category: {
      text: '前端开发',
      code: 0,
    },
    title: 'Vue.js源码全方位深入解析 （含Vue3.0源码分析）',
    introduction: '全方位讲解 Vue.js 源码，学精学透 Vue 原理实现，进阶高级工程师',
    img: 'https://img.mukewang.com/szimg/5b17bad10001535305400300-360-202.jpg',
    banner: 'https://img1.sycdn.imooc.com/szimg/5b508b4200014f8a20000560.jpg',
    type: {
      text: '实战',
      code: 1
    },
    hard: {
      text: '高级',
      code: 3,
    },
    price: 488,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: 'ustbhuangyi',
      avatar: 'https://img.mukewang.com/user/577baef700019c4501400140-100-100.jpg',
      job: 'Web前端工程师',
      introduction: '曾任职百度、滴滴，现担任Zoom前端架构师，推进前后端分离架构方案，同时负责 Zoom 自研组件库。公众号《老黄的前端私房菜》，《Vue.js 技术揭秘》独立作者，《Vue.js 权威指南》主要作者，开源项目 better-scroll 作者。曾主导滴滴开源项目 cube-ui，建立团队技术博客。'
    },
    labels: ['Vue.js']
  },
  {
    category: {
      text: '后端开发',
      code: 1,
    },
    title: 'Python Flask高级编程之RESTFul API前后端分离精讲',
    introduction: 'RESTFul+权限管理+token令牌+扩展flask=提升编程思维',
    img: 'https://img.mukewang.com/szimg/5b061fe30001db4505400300-360-202.jpg',
    banner: 'https://img1.sycdn.imooc.com/szimg/5be39cb6000127a520000559.jpg',
    type: {
      text: '实战',
      code: 1
    },
    hard: {
      text: '中级',
      code: 2,
    },
    price: 148,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: '7七月',
      avatar: 'https://img.mukewang.com/user/54584e2c00010a2c02200220-100-100.jpg',
      job: '全栈工程师',
      introduction: '十年研发及团队管理经验，对程序员面临的各种问题深有体会；精通Python、Java、Node.js、JavaScript等语言，对Web的基础研发、高并发处理与分布式有非常深入的理解。课程讲解深入浅出，极为擅长培养学生的编程思维。'
    },
    labels: ['Python']
  },
  {
    category: {
      text: '后端开发',
      code: 1,
    },
    title: 'Python Flask高级编程之从0到1开发《鱼书》精品项目',
    introduction: '7月老师深入浅出剖析Flask核心机制，和你一起探讨Python高级编程',
    img: 'https://img.mukewang.com/szimg/5ab84f650001f0b005400300-360-202.jpg',
    banner: 'https://img.mukewang.com/szimg/5b51c78300015e0220000560.jpg',
    type: {
      text: '实战',
      code: 1
    },
    hard: {
      text: '中级',
      code: 2,
    },
    price: 399,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: '7七月',
      avatar: 'https://img.mukewang.com/user/54584e2c00010a2c02200220-100-100.jpg',
      job: '全栈工程师',
      introduction: '十年研发及团队管理经验，对程序员面临的各种问题深有体会；精通Python、Java、Node.js、JavaScript等语言，对Web的基础研发、高并发处理与分布式有非常深入的理解。课程讲解深入浅出，极为擅长培养学生的编程思维。'
    },
    labels: ['Python']
  },
  {
    category: {
      text: '后端开发',
      code: 1,
    },
    title: '全面系统Python3.8入门+进阶  (程序员必备第二语言)',
    introduction: '语法精讲/配套练习+思考题/原生爬虫实战',
    img: 'https://img.mukewang.com/szimg/59b8a486000107fb05400300-360-202.jpg',
    banner: 'https://img.mukewang.com/szimg/5b51c78300015e0220000560.jpg',
    type: {
      text: '实战',
      code: 1
    },
    hard: {
      text: '初级',
      code: 1,
    },
    price: 366,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: '7七月',
      avatar: 'https://img.mukewang.com/user/54584e2c00010a2c02200220-100-100.jpg',
      job: '全栈工程师',
      introduction: '十年研发及团队管理经验，对程序员面临的各种问题深有体会；精通Python、Java、Node.js、JavaScript等语言，对Web的基础研发、高并发处理与分布式有非常深入的理解。课程讲解深入浅出，极为擅长培养学生的编程思维。'
    },
    labels: ['Python']
  },
  {
    category: {
      text: '后端开发',
      code: 1,
    },
    title: 'Spring Cloud微服务实战 打造企业级优惠券系统',
    introduction: '面试、毕设、升职优选：从0开始，Java主流框架，构建电商都在用的优惠券系统',
    img: 'https://img.mukewang.com/szimg/5d5f7da0093eb24212000676-360-202.jpg',
    banner: 'https://img.mukewang.com/szimg/5d5f7da709b71ad320000400.jpg',
    type: {
      text: '实战',
      code: 1
    },
    hard: {
      text: '中级',
      code: 2,
    },
    price: 299,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: '勤一',
      avatar: 'https://img.mukewang.com/user/5c36c432000158e609600960-100-100.jpg',
      job: 'Java开发工程师',
      introduction: '高级技术专家，曾就职于微软、腾讯，目前就职于知名电商互联网公司，拥有丰富的大型项目开发经验。多年IT从业经验，一线软件设计、研发，熟悉C、CPP、Java等开发语言，对Web框架、数据存储、架构设计等有深入的理解和实践。'
    },
    labels: ['Java', 'Spring Cloud']
  },
  {
    category: {
      text: '后端开发',
      code: 1,
    },
    title: '基于Spring Cloud微服务架构  广告系统设计与实现（2020新版）',
    introduction: '掌握互联网广告系统，学会为公司创收，你自然就是最抢手的人才。可用于毕设。',
    img: 'https://img.mukewang.com/szimg/5d2e7ada09946f6f12000676-360-202.jpg',
    banner: 'https://img.mukewang.com/szimg/5d2e7ae20942ca4d20000400.jpg',
    type: {
      text: '实战',
      code: 1
    },
    hard: {
      text: '中级',
      code: 2,
    },
    price: 299,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: '勤一',
      avatar: 'https://img.mukewang.com/user/5c36c432000158e609600960-100-100.jpg',
      job: 'Java开发工程师',
      introduction: '高级技术专家，曾就职于微软、腾讯，目前就职于知名电商互联网公司，拥有丰富的大型项目开发经验。多年IT从业经验，一线软件设计、研发，熟悉C、CPP、Java等开发语言，对Web框架、数据存储、架构设计等有深入的理解和实践。'
    },
    labels: ['Java', 'Spring Cloud']
  },
  {
    category: {
      text: '后端开发',
      code: 1,
    },
    title: 'Java分布式后台开发  Spring Boot+Kafka+HBase',
    introduction: '从零到一完整搭建企业级架构的通用卡包工程，让你开发技迈向到百度T4+ 。',
    img: 'https://img1.sycdn.imooc.com/szimg/5b55356c0001af0105400300-360-202.jpg',
    banner: 'https://img.mukewang.com/szimg/5b5535400001b72e20000560.jpg',
    type: {
      text: '实战',
      code: 1
    },
    hard: {
      text: '中级',
      code: 2,
    },
    price: 299,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: '勤一',
      avatar: 'https://img.mukewang.com/user/5c36c432000158e609600960-100-100.jpg',
      job: 'Java开发工程师',
      introduction: '高级技术专家，曾就职于微软、腾讯，目前就职于知名电商互联网公司，拥有丰富的大型项目开发经验。多年IT从业经验，一线软件设计、研发，熟悉C、CPP、Java等开发语言，对Web框架、数据存储、架构设计等有深入的理解和实践。'
    },
    labels: ['Java', 'SpringBoot']
  },
  {
    category: {
      text: '移动端开发',
      code: 2,
    },
    title: 'Flutter从入门到进阶 实战携程网App',
    introduction: '从入门到进阶，系统掌握Flutter开发核心技术',
    img: 'https://img.mukewang.com/szimg/5c7e6835087ef3d806000338-360-202.jpg',
    banner: 'https://img.mukewang.com/szimg/5c9304cd097d093d20000400.jpg',
    type: {
      text: '实战',
      code: 1
    },
    hard: {
      text: '中级',
      code: 2,
    },
    price: 348,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: 'CrazyCodeBoy',
      avatar: 'https://img.mukewang.com/user/545847e20001163c02200220-100-100.jpg',
      job: '移动端开发工程师',
      introduction: '深耕移动端领域8年有余，全栈技术专家，CSDN 博客专家，擅长Android、iOS、Flutter、React Native以及小程序项目开发，负责过前端、Java、Android、iOS等多平台项目的研发，有多款React Native App上线及管理经验。他享受编程、热爱开源、酷爱分享，平时除了写写博客外，也分享一些开源技术干货 · Github'
    },
    labels: ['React native', 'Flutter']
  },
  {
    category: {
      text: '移动端开发',
      code: 2,
    },
    title: '新版React Native从入门到实战打造高质量上线App（再升级）',
    introduction: '解锁React Native开发应用新姿势，一网打尽React Native新版本热门技术',
    img: 'https://img.mukewang.com/szimg/5db6916d08d81b8b12000676-360-202.jpg',
    banner: 'https://img.mukewang.com/szimg/5db69b9c086653ff40001120.jpg',
    type: {
      text: '实战',
      code: 1
    },
    hard: {
      text: '中级',
      code: 2,
    },
    price: 399,
    isDiscount: false,
    discountPrice: 0,
    script: {
      text: '升级',
      code: 1
    },
    teacher: {
      name: 'CrazyCodeBoy',
      avatar: 'https://img.mukewang.com/user/545847e20001163c02200220-100-100.jpg',
      job: '移动端开发工程师',
      introduction: '深耕移动端领域8年有余，全栈技术专家，CSDN 博客专家，擅长Android、iOS、Flutter、React Native以及小程序项目开发，负责过前端、Java、Android、iOS等多平台项目的研发，有多款React Native App上线及管理经验。他享受编程、热爱开源、酷爱分享，平时除了写写博客外，也分享一些开源技术干货 · Github'
    },
    labels: ['React native']
  },
  {
    category: {
      text: '移动端开发',
      code: 2,
    },
    title: '实战企业级项目 践行App重构之路',
    introduction: '真实还原大厂App重构过程，以组件化和插件化为核心，进击高级工程师必备',
    img: 'https://img.mukewang.com/szimg/5e4f4f66098b14c512000676-360-202.jpg',
    banner: 'https://img.mukewang.com/szimg/5e4f4f7009aeb1a920000400.jpg',
    type: {
      text: '实战',
      code: 1
    },
    hard: {
      text: '中级',
      code: 2,
    },
    price: 299,
    isDiscount: false,
    discountPrice: 0,
    script: {
      text: '升级',
      code: 1
    },
    teacher: {
      name: 'qndroid',
      avatar: 'http://img3.sycdn.imooc.com/5333a0350001692e02200220-160-160.jpg',
      job: '移动开发工程师',
      introduction: '多年Android开发经验，曾任职于优酷等一线互联网企业，现就职于快手基础架构部，有丰富的Android应用架构和SDK开发经验，喜欢分享，授课风格循序渐进，擅长培养学生的编程思维，深受学员好评。'
    },
    labels: ['Android']
  },
  {
    category: {
      text: '移动端开发',
      code: 2,
    },
    title: '企业级Android应用架构设计与开发',
    introduction: '一门能助你掌握企业级架构设计、功能开发，冲击大厂Android中高级工程师职位的课程',
    img: 'https://img.mukewang.com/szimg/5d5e6d1f0983ee0112000676-360-202.jpg',
    banner: 'https://img1.sycdn.imooc.com/szimg/5d5e6d2809b8706c20000400.jpg',
    type: {
      text: '实战',
      code: 1
    },
    hard: {
      text: '中级',
      code: 2,
    },
    price: 299,
    isDiscount: false,
    discountPrice: 0,
    script: {
      text: '升级',
      code: 1
    },
    teacher: {
      name: 'qndroid',
      avatar: 'http://img3.sycdn.imooc.com/5333a0350001692e02200220-160-160.jpg',
      job: '移动开发工程师',
      introduction: '多年Android开发经验，曾任职于优酷等一线互联网企业，现就职于快手基础架构部，有丰富的Android应用架构和SDK开发经验，喜欢分享，授课风格循序渐进，擅长培养学生的编程思维，深受学员好评。'
    },
    labels: ['Android']
  },
  {
    category: {
      text: '移动端开发',
      code: 2,
    },
    title: 'Gradle3.0自动化项目构建技术精讲+实战',
    introduction: '全面覆盖Gradle核心知识和高级用法，高级工程师必备技能！',
    img: 'https://img.mukewang.com/szimg/5acf37460001aa3405400300-360-202.jpg',
    banner: 'https://img.mukewang.com/szimg/5b5085f900017de520000560.jpg',
    type: {
      text: '实战',
      code: 1
    },
    hard: {
      text: '中级',
      code: 2,
    },
    price: 199,
    isDiscount: false,
    discountPrice: 0,
    script: {
      text: '升级',
      code: 1
    },
    teacher: {
      name: 'qndroid',
      avatar: 'http://img3.sycdn.imooc.com/5333a0350001692e02200220-160-160.jpg',
      job: '移动开发工程师',
      introduction: '多年Android开发经验，曾任职于优酷等一线互联网企业，现就职于快手基础架构部，有丰富的Android应用架构和SDK开发经验，喜欢分享，授课风格循序渐进，擅长培养学生的编程思维，深受学员好评。'
    },
    labels: ['Android']
  },
  {
    category: {
      text: '计算机基础',
      code: 3,
    },
    title: '玩转算法系列--图论精讲  面试升职必备（Java版）',
    introduction: '由于图论算法本身的复杂性和抽象性，让同学们头疼不已，这次bobo带你彻底玩转图论，克服对图论问题的恐惧心理',
    img: 'https://img1.sycdn.imooc.com/szimg/5d31765d08c90cba06000338-360-202.jpg',
    banner: 'https://img.mukewang.com/szimg/5d3176630945ccf020000288.jpg',
    type: {
      text: '实战',
      code: 1
    },
    hard: {
      text: '中级',
      code: 2,
    },
    price: 348,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: 'liuyubobobo',
      avatar: 'https://img1.sycdn.imooc.com/user/5347593e00010cfb01400140-100-100.jpg',
      job: '算法大牛 ACM亚洲区奖牌获得者',
      introduction: '创业者，全栈工程师，持续学习者。对技术开发，产品设计、前后端，ios，html5，智能算法等领域均有接触；拥有多款独立App作品；对一切可编程的东西有浓厚兴趣，对游戏编程格外感兴趣。相信编程改变一切。'
    },
    labels: ['算法和数据结构']
  },
  {
    category: {
      text: '计算机基础',
      code: 3,
    },
    title: '玩转算法系列--数据结构精讲 更适合0算法基础入门到进阶（java版）',
    introduction: '体系完整，细致入微，0基础入门：动态数组/栈/队列/链表/BST/堆/线段树/Trie/并查集/AVL/红黑树…',
    img: 'https://img1.sycdn.imooc.com/szimg/5ad05dc00001eae705400300-360-202.jpg',
    banner: 'https://img.mukewang.com/szimg/5b5086220001ef9420000560.jpg',
    type: {
      text: '实战',
      code: 1
    },
    hard: {
      text: '中级',
      code: 2,
    },
    price: 299,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: 'liuyubobobo',
      avatar: 'https://img1.sycdn.imooc.com/user/5347593e00010cfb01400140-100-100.jpg',
      job: '算法大牛 ACM亚洲区奖牌获得者',
      introduction: '创业者，全栈工程师，持续学习者。对技术开发，产品设计、前后端，ios，html5，智能算法等领域均有接触；拥有多款独立App作品；对一切可编程的东西有浓厚兴趣，对游戏编程格外感兴趣。相信编程改变一切。'
    },
    labels: ['算法和数据结构']
  },
  {
    category: {
      text: '计算机基础',
      code: 3,
    },
    title: '结合编程学数学 专为程序员设计的线性代数',
    introduction: '创新设计，通俗易懂。用编程的方式学数学。这一次，bobo老师带你彻底征服线性代数',
    img: 'https://img1.sycdn.imooc.com/szimg/5b5835a60001907e05400300-360-202.jpg',
    banner: 'https://img1.sycdn.imooc.com/szimg/5b5835cb0001d0c120000560.jpg',
    type: {
      text: '实战',
      code: 1
    },
    hard: {
      text: '初级',
      code: 1,
    },
    price: 348,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: 'liuyubobobo',
      avatar: 'https://img1.sycdn.imooc.com/user/5347593e00010cfb01400140-100-100.jpg',
      job: '算法大牛 ACM亚洲区奖牌获得者',
      introduction: '创业者，全栈工程师，持续学习者。对技术开发，产品设计、前后端，ios，html5，智能算法等领域均有接触；拥有多款独立App作品；对一切可编程的东西有浓厚兴趣，对游戏编程格外感兴趣。相信编程改变一切。'
    },
    labels: ['数学']
  },
  {
    category: {
      text: '计算机基础',
      code: 3,
    },
    title: '看的见的算法 7个经典应用诠释算法精髓',
    introduction: '课程重应用、重实践、重思维，真正应用于实际工作开发中，也可作为毕设作品、面试项目。',
    img: 'https://img1.sycdn.imooc.com/szimg/59b2766f000190d505400300-360-202.jpg',
    banner: 'https://img.mukewang.com/szimg/5b4f355a0001852520000520.jpg',
    type: {
      text: '实战',
      code: 1
    },
    hard: {
      text: '初级',
      code: 1,
    },
    price: 248,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: 'liuyubobobo',
      avatar: 'https://img1.sycdn.imooc.com/user/5347593e00010cfb01400140-100-100.jpg',
      job: '算法大牛 ACM亚洲区奖牌获得者',
      introduction: '创业者，全栈工程师，持续学习者。对技术开发，产品设计、前后端，ios，html5，智能算法等领域均有接触；拥有多款独立App作品；对一切可编程的东西有浓厚兴趣，对游戏编程格外感兴趣。相信编程改变一切。'
    },
    labels: ['算法和数据结构']
  },
  {
    category: {
      text: '前沿技术',
      code: 4,
    },
    title: '看的见的算法 Zookeeper源码分析',
    introduction: '“分而治之”逐一攻克Zookeeper框架各个组件的源码',
    img: 'https://img.mukewang.com/szimg/5d1ad17f08cd16e800000000-360-202.jpg',
    banner: 'https://img.mukewang.com/szimg/5b4f355a0001852520000520.jpg',
    type: {
      text: '实战',
      code: 1
    },
    hard: {
      text: '中级',
      code: 2,
    },
    price: 388,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: '城南大师兄',
      avatar: 'https://img1.sycdn.imooc.com/user/5cac7e810001fe7705270698-100-100.jpg',
      job: '国内知名公司架构师',
      introduction: '目前主要负责后端架构设计，具有十多年一线开发和架构经验，拥有丰富的高性能、高并发处理以及大型服务器软件设计架构经验。深谙各种源码。工作中常常和千万级高并发的问题“正面硬钢” ，因此在高并发调优等方面积累了丰富的实战经验。十几年的架构经验，让讲师早已将理论和实践锻造的炉火纯青。如果你想学习他密不外传的工作‘渡劫’经验，讲师等你打Call~'
    },
    labels: ['微服务']
  },
  {
    category: {
      text: '前沿技术',
      code: 4,
    },
    title: '学习Hyperledger Fabric实战联盟链',
    introduction: '兼顾区块链应用层和底层  进击区块链工程师',
    img: 'https://img.mukewang.com/szimg/5b73d7f60001dc1e05400300-360-202.jpg',
    banner: 'https://img1.sycdn.imooc.com/szimg/5b73d7fc0001e07720000560.jpg',
    type: {
      text: '实战',
      code: 1
    },
    hard: {
      text: '高级',
      code: 3,
    },
    price: 266,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: '自游蜗牛',
      avatar: 'https://img.mukewang.com/user/5b6949e20001c6bf10801080-100-100.jpg',
      job: '区块链底层工程师',
      introduction: '现就职于某世界500强区块链团队，从事区块链底层研究以及BAAS平台搭建。精通区块链底层存储、共识等技术，职业方向偏重联盟链体系。'
    },
    labels: ['区块链']
  },
  {
    category: {
      text: '前沿技术',
      code: 4,
    },
    title: '深度学习之目标检测常用算法原理+实践精讲',
    introduction: '从原理（YOLO / Faster RCNN / SSD / 文本检测 / 多任务网络）到场景实战，掌握目标检测核心技术',
    img: 'https://img1.sycdn.imooc.com/szimg/5bfb523c0001290905400300-360-202.jpg',
    banner: 'https://img1.sycdn.imooc.com/szimg/5bfb52480001858920000559.jpg',
    type: {
      text: '实战',
      code: 1
    },
    hard: {
      text: '高级',
      code: 3,
    },
    price: 499,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: '会写代码的好厨师',
      avatar: 'https://img1.sycdn.imooc.com/user/5b8618950001cd9101440146-100-100.jpg',
      job: '资深机器学习工程师',
      introduction: '现就职于某世界500强区块链团队，从事区块链底层研究以及BAAS平台搭建。精通区块链底层存储、共识等技术，职业方向偏重联盟链体系。'
    },
    labels: ['机器学习']
  },
  {
    category: {
      text: '前沿技术',
      code: 4,
    },
    title: '看的见的算法 Zookeeper源码分析',
    introduction: '“分而治之”逐一攻克Zookeeper框架各个组件的源码',
    img: 'https://img.mukewang.com/szimg/5d1ad17f08cd16e800000000-360-202.jpg',
    banner: 'https://img.mukewang.com/szimg/5b4f355a0001852520000520.jpg',
    type: {
      text: '实战',
      code: 1
    },
    hard: {
      text: '中级',
      code: 2,
    },
    price: 388,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: '城南大师兄',
      avatar: 'https://img1.sycdn.imooc.com/user/5cac7e810001fe7705270698-100-100.jpg',
      job: '国内知名公司架构师',
      introduction: '目前主要负责后端架构设计，具有十多年一线开发和架构经验，拥有丰富的高性能、高并发处理以及大型服务器软件设计架构经验。深谙各种源码。工作中常常和千万级高并发的问题“正面硬钢” ，因此在高并发调优等方面积累了丰富的实战经验。十几年的架构经验，让讲师早已将理论和实践锻造的炉火纯青。如果你想学习他密不外传的工作‘渡劫’经验，讲师等你打Call~'
    },
    labels: ['微服务']
  },
  {
    category: {
      text: '前沿技术',
      code: 4,
    },
    title: '学习Hyperledger Fabric实战联盟链',
    introduction: '兼顾区块链应用层和底层  进击区块链工程师',
    img: 'https://img.mukewang.com/szimg/5b73d7f60001dc1e05400300-360-202.jpg',
    banner: 'https://img1.sycdn.imooc.com/szimg/5b73d7fc0001e07720000560.jpg',
    type: {
      text: '实战',
      code: 1
    },
    hard: {
      text: '高级',
      code: 3,
    },
    price: 266,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: '自游蜗牛',
      avatar: 'https://img.mukewang.com/user/5b6949e20001c6bf10801080-100-100.jpg',
      job: '区块链底层工程师',
      introduction: '现就职于某世界500强区块链团队，从事区块链底层研究以及BAAS平台搭建。精通区块链底层存储、共识等技术，职业方向偏重联盟链体系。'
    },
    labels: ['区块链']
  },
  {
    category: {
      text: '前沿技术',
      code: 4,
    },
    title: '深度学习之目标检测常用算法原理+实践精讲',
    introduction: '从原理（YOLO / Faster RCNN / SSD / 文本检测 / 多任务网络）到场景实战，掌握目标检测核心技术',
    img: 'https://img1.sycdn.imooc.com/szimg/5bfb523c0001290905400300-360-202.jpg',
    banner: 'https://img1.sycdn.imooc.com/szimg/5bfb52480001858920000559.jpg',
    type: {
      text: '实战',
      code: 1
    },
    hard: {
      text: '高级',
      code: 3,
    },
    price: 499,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: '会写代码的好厨师',
      avatar: 'https://img1.sycdn.imooc.com/user/5b8618950001cd9101440146-100-100.jpg',
      job: '资深机器学习工程师',
      introduction: '现就职于某世界500强区块链团队，从事区块链底层研究以及BAAS平台搭建。精通区块链底层存储、共识等技术，职业方向偏重联盟链体系。'
    },
    labels: ['机器学习']
  },
  {
    category: {
      text: '前沿技术',
      code: 4,
    },
    title: '看的见的算法 Zookeeper源码分析',
    introduction: '“分而治之”逐一攻克Zookeeper框架各个组件的源码',
    img: 'https://img.mukewang.com/szimg/5d1ad17f08cd16e800000000-360-202.jpg',
    banner: 'https://img.mukewang.com/szimg/5b4f355a0001852520000520.jpg',
    type: {
      text: '实战',
      code: 1
    },
    hard: {
      text: '中级',
      code: 2,
    },
    price: 388,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: '城南大师兄',
      avatar: 'https://img1.sycdn.imooc.com/user/5cac7e810001fe7705270698-100-100.jpg',
      job: '国内知名公司架构师',
      introduction: '目前主要负责后端架构设计，具有十多年一线开发和架构经验，拥有丰富的高性能、高并发处理以及大型服务器软件设计架构经验。深谙各种源码。工作中常常和千万级高并发的问题“正面硬钢” ，因此在高并发调优等方面积累了丰富的实战经验。十几年的架构经验，让讲师早已将理论和实践锻造的炉火纯青。如果你想学习他密不外传的工作‘渡劫’经验，讲师等你打Call~'
    },
    labels: ['微服务']
  },
  {
    category: {
      text: '前沿技术',
      code: 4,
    },
    title: '学习Hyperledger Fabric实战联盟链',
    introduction: '兼顾区块链应用层和底层  进击区块链工程师',
    img: 'https://img.mukewang.com/szimg/5b73d7f60001dc1e05400300-360-202.jpg',
    banner: 'https://img1.sycdn.imooc.com/szimg/5b73d7fc0001e07720000560.jpg',
    type: {
      text: '实战',
      code: 1
    },
    hard: {
      text: '高级',
      code: 3,
    },
    price: 266,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: '自游蜗牛',
      avatar: 'https://img.mukewang.com/user/5b6949e20001c6bf10801080-100-100.jpg',
      job: '区块链底层工程师',
      introduction: '现就职于某世界500强区块链团队，从事区块链底层研究以及BAAS平台搭建。精通区块链底层存储、共识等技术，职业方向偏重联盟链体系。'
    },
    labels: ['区块链']
  },
  {
    category: {
      text: '前沿技术',
      code: 4,
    },
    title: '深度学习之目标检测常用算法原理+实践精讲',
    introduction: '从原理（YOLO / Faster RCNN / SSD / 文本检测 / 多任务网络）到场景实战，掌握目标检测核心技术',
    img: 'https://img1.sycdn.imooc.com/szimg/5bfb523c0001290905400300-360-202.jpg',
    banner: 'https://img1.sycdn.imooc.com/szimg/5bfb52480001858920000559.jpg',
    type: {
      text: '实战',
      code: 1
    },
    hard: {
      text: '高级',
      code: 3,
    },
    price: 499,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: '会写代码的好厨师',
      avatar: 'https://img1.sycdn.imooc.com/user/5b8618950001cd9101440146-100-100.jpg',
      job: '资深机器学习工程师',
      introduction: '现就职于某世界500强区块链团队，从事区块链底层研究以及BAAS平台搭建。精通区块链底层存储、共识等技术，职业方向偏重联盟链体系。'
    },
    labels: ['机器学习']
  },
  {
    category: {
      text: '前沿技术',
      code: 4,
    },
    title: '看的见的算法 Zookeeper源码分析',
    introduction: '“分而治之”逐一攻克Zookeeper框架各个组件的源码',
    img: 'https://img.mukewang.com/szimg/5d1ad17f08cd16e800000000-360-202.jpg',
    banner: 'https://img.mukewang.com/szimg/5b4f355a0001852520000520.jpg',
    type: {
      text: '实战',
      code: 1
    },
    hard: {
      text: '中级',
      code: 2,
    },
    price: 388,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: '城南大师兄',
      avatar: 'https://img1.sycdn.imooc.com/user/5cac7e810001fe7705270698-100-100.jpg',
      job: '国内知名公司架构师',
      introduction: '目前主要负责后端架构设计，具有十多年一线开发和架构经验，拥有丰富的高性能、高并发处理以及大型服务器软件设计架构经验。深谙各种源码。工作中常常和千万级高并发的问题“正面硬钢” ，因此在高并发调优等方面积累了丰富的实战经验。十几年的架构经验，让讲师早已将理论和实践锻造的炉火纯青。如果你想学习他密不外传的工作‘渡劫’经验，讲师等你打Call~'
    },
    labels: ['微服务']
  },
  {
    category: {
      text: '前沿技术',
      code: 4,
    },
    title: '学习Hyperledger Fabric实战联盟链',
    introduction: '兼顾区块链应用层和底层  进击区块链工程师',
    img: 'https://img.mukewang.com/szimg/5b73d7f60001dc1e05400300-360-202.jpg',
    banner: 'https://img1.sycdn.imooc.com/szimg/5b73d7fc0001e07720000560.jpg',
    type: {
      text: '实战',
      code: 1
    },
    hard: {
      text: '高级',
      code: 3,
    },
    price: 266,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: '自游蜗牛',
      avatar: 'https://img.mukewang.com/user/5b6949e20001c6bf10801080-100-100.jpg',
      job: '区块链底层工程师',
      introduction: '现就职于某世界500强区块链团队，从事区块链底层研究以及BAAS平台搭建。精通区块链底层存储、共识等技术，职业方向偏重联盟链体系。'
    },
    labels: ['区块链']
  },
  {
    category: {
      text: '前沿技术',
      code: 4,
    },
    title: '深度学习之目标检测常用算法原理+实践精讲',
    introduction: '从原理（YOLO / Faster RCNN / SSD / 文本检测 / 多任务网络）到场景实战，掌握目标检测核心技术',
    img: 'https://img1.sycdn.imooc.com/szimg/5bfb523c0001290905400300-360-202.jpg',
    banner: 'https://img1.sycdn.imooc.com/szimg/5bfb52480001858920000559.jpg',
    type: {
      text: '实战',
      code: 1
    },
    hard: {
      text: '高级',
      code: 3,
    },
    price: 499,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: '会写代码的好厨师',
      avatar: 'https://img1.sycdn.imooc.com/user/5b8618950001cd9101440146-100-100.jpg',
      job: '资深机器学习工程师',
      introduction: '现就职于某世界500强区块链团队，从事区块链底层研究以及BAAS平台搭建。精通区块链底层存储、共识等技术，职业方向偏重联盟链体系。'
    },
    labels: ['机器学习']
  },
  {
    category: {
      text: '云计算&大数据',
      code: 5,
    },
    title: 'SparkSQL极速入门  整合Kudu实现广告业务数据分析',
    introduction: '大数据工程师干货课程 带你从入门到实战掌握SparkSQL',
    img: 'https://img1.sycdn.imooc.com/szimg/5d844ae7089e674906000338-360-202.jpg',
    banner: 'https://img1.sycdn.imooc.com/szimg/5d844af609893ec140000800.jpg',
    type: {
      text: '实战',
      code: 1
    },
    hard: {
      text: '中级',
      code: 2,
    },
    price: 388,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: 'Michael_PK',
      avatar: 'https://img1.sycdn.imooc.com/user/533e4d510001c2ad02000200-100-100.jpg',
      job: '资深大数据架构师',
      introduction: '八年互联网公司一线研发经验，担任大数据架构师。主要从事基于Spark/Flink为核心打造的大数据公有云、私有云数据平台产品的研发。改造过Hadoop、Spark等框架的源码为云平台提供更高的执行性能。集群规模过万，有丰富的大数据项目实战经验以及授课经验(授课数千小时，深受学员好评)。'
    },
    labels: ['大数据']
  },
  {
    category: {
      text: '云计算&大数据',
      code: 5,
    },
    title: 'Spark进阶 大数据离线与实时项目实战',
    introduction: '大数据生态圈中多个框架(Spark/Hbase/Redis/Hadoop)的整合应用及调优',
    img: 'https://img1.sycdn.imooc.com/szimg/59f85ec90001103405400300-360-202.jpg',
    banner: 'https://img1.sycdn.imooc.com/szimg/5d844af609893ec140000800.jpg',
    type: {
      text: '实战',
      code: 1
    },
    hard: {
      text: '中级',
      code: 2,
    },
    price: 399,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: 'Michael_PK',
      avatar: 'https://img1.sycdn.imooc.com/user/533e4d510001c2ad02000200-100-100.jpg',
      job: '资深大数据架构师',
      introduction: '八年互联网公司一线研发经验，担任大数据架构师。主要从事基于Spark/Flink为核心打造的大数据公有云、私有云数据平台产品的研发。改造过Hadoop、Spark等框架的源码为云平台提供更高的执行性能。集群规模过万，有丰富的大数据项目实战经验以及授课经验(授课数千小时，深受学员好评)。'
    },
    labels: ['大数据']
  },
  {
    category: {
      text: '云计算&大数据',
      code: 5,
    },
    title: 'Spark Streaming实时流处理项目实战 ',
    introduction: 'Flume+Kafka+Spark Streaming 构建通用实时流处理平台',
    img: 'https://img1.sycdn.imooc.com/szimg/5c203a4b0001dcf306000338-360-202.jpg',
    banner: 'https://img.mukewang.com/szimg/5c203a520001d14320000560.jpg',
    type: {
      text: '实战',
      code: 1
    },
    hard: {
      text: '中级',
      code: 2,
    },
    price: 288,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: 'Michael_PK',
      avatar: 'https://img1.sycdn.imooc.com/user/533e4d510001c2ad02000200-100-100.jpg',
      job: '资深大数据架构师',
      introduction: '八年互联网公司一线研发经验，担任大数据架构师。主要从事基于Spark/Flink为核心打造的大数据公有云、私有云数据平台产品的研发。改造过Hadoop、Spark等框架的源码为云平台提供更高的执行性能。集群规模过万，有丰富的大数据项目实战经验以及授课经验(授课数千小时，深受学员好评)。'
    },
    labels: ['大数据']
  },
  {
    category: {
      text: '运维&测试',
      code: 6,
    },
    title: '跟着360架构师 学习Shell脚本编程',
    introduction: '30%知识讲解+70%实例操作 掌握Shell脚本编程能力',
    img: 'https://img1.sycdn.imooc.com/szimg/5c46c4a308ad3b3406000338-360-202.jpg',
    banner: 'https://img.mukewang.com/szimg/5c46c4ae099dc71320000560.jpg',
    type: {
      text: '实战',
      code: 1
    },
    hard: {
      text: '中级',
      code: 2,
    },
    price: 366,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: '酷田',
      avatar: 'http://img2.sycdn.imooc.com/5c297bb600013f6d11100834-160-160.jpg',
      job: '全栈工程师',
      introduction: '360企业安全集团资深工程师，曾就职于中国移动、亚信科技 ，等知名大型公司，多年工作经验积累，所传授的知识技能可以让你在实际工作中有的放矢，游刃有余。'
    },
    labels: ['运维']
  },
  {
    category: {
      text: '运维&测试',
      code: 6,
    },
    title: '企业级开源四层负载均衡解决方案-LVS',
    introduction: '轻松应对负载均衡，深刻理解网络系统架构，真正解决工作中的实际问题',
    img: 'https://img1.sycdn.imooc.com/szimg/5b99c15f0001ca0206000338-360-202.jpg',
    banner: 'https://img.mukewang.com/szimg/5b99d1e90001903240001120.jpg',
    type: {
      text: '实战',
      code: 1
    },
    hard: {
      text: '中级',
      code: 2,
    },
    price: 199,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: '酷田',
      avatar: 'http://img2.sycdn.imooc.com/5c297bb600013f6d11100834-160-160.jpg',
      job: '全栈工程师',
      introduction: '360企业安全集团资深工程师，曾就职于中国移动、亚信科技 ，等知名大型公司，多年工作经验积累，所传授的知识技能可以让你在实际工作中有的放矢，游刃有余。'
    },
    labels: ['运维']
  },
  {
    category: {
      text: '运维&测试',
      code: 6,
    },
    title: '跟着360架构师 学习Shell脚本编程',
    introduction: '30%知识讲解+70%实例操作 掌握Shell脚本编程能力',
    img: 'https://img1.sycdn.imooc.com/szimg/5c46c4a308ad3b3406000338-360-202.jpg',
    banner: 'https://img.mukewang.com/szimg/5c46c4ae099dc71320000560.jpg',
    type: {
      text: '实战',
      code: 1
    },
    hard: {
      text: '中级',
      code: 2,
    },
    price: 366,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: '酷田',
      avatar: 'http://img2.sycdn.imooc.com/5c297bb600013f6d11100834-160-160.jpg',
      job: '全栈工程师',
      introduction: '360企业安全集团资深工程师，曾就职于中国移动、亚信科技 ，等知名大型公司，多年工作经验积累，所传授的知识技能可以让你在实际工作中有的放矢，游刃有余。'
    },
    labels: ['运维']
  },
  {
    category: {
      text: '运维&测试',
      code: 6,
    },
    title: '企业级开源四层负载均衡解决方案-LVS',
    introduction: '轻松应对负载均衡，深刻理解网络系统架构，真正解决工作中的实际问题',
    img: 'https://img1.sycdn.imooc.com/szimg/5b99c15f0001ca0206000338-360-202.jpg',
    banner: 'https://img.mukewang.com/szimg/5b99d1e90001903240001120.jpg',
    type: {
      text: '实战',
      code: 1
    },
    hard: {
      text: '中级',
      code: 2,
    },
    price: 199,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: '酷田',
      avatar: 'http://img2.sycdn.imooc.com/5c297bb600013f6d11100834-160-160.jpg',
      job: '全栈工程师',
      introduction: '360企业安全集团资深工程师，曾就职于中国移动、亚信科技 ，等知名大型公司，多年工作经验积累，所传授的知识技能可以让你在实际工作中有的放矢，游刃有余。'
    },
    labels: ['运维']
  },
  {
    category: {
      text: '数据库',
      code: 7,
    },
    title: '零基础入门 全角度解读企业主流数据库MySQL8.0',
    introduction: '掌握SQL优化与慢查询优化，具备独当一面的能力，彰显更多个人价值',
    img: 'https://img.mukewang.com/szimg/5ca5e266085019b306000338-360-202.jpg',
    banner: 'https://img.mukewang.com/szimg/5ca5e26e09568dbc20000400.jpg',
    type: {
      text: '实战',
      code: 1
    },
    hard: {
      text: '入门',
      code: 0,
    },
    price: 266,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: 'sqlercn',
      avatar: 'http://img3.sycdn.imooc.com/5ad7144100017a5e07410741-160-160.jpg',
      job: '数据库工程师',
      introduction: '高级数据库工程师（DBA），从事数据库管理工作多年，曾就职于聚美优品、猫扑、TOM等多家大型互联网公司，进行过千万级的数据处理，对大数据业务、高并发时数据优化积累了大量丰富的经验。'
    },
    labels: ['MySql']
  },
  {
    category: {
      text: '数据库',
      code: 7,
    },
    title: '零基础入门 全角度解读企业主流数据库MySQL8.0',
    introduction: '掌握SQL优化与慢查询优化，具备独当一面的能力，彰显更多个人价值',
    img: 'https://img.mukewang.com/szimg/5ca5e266085019b306000338-360-202.jpg',
    banner: 'https://img.mukewang.com/szimg/5ca5e26e09568dbc20000400.jpg',
    type: {
      text: '实战',
      code: 1
    },
    hard: {
      text: '入门',
      code: 0,
    },
    price: 266,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: 'sqlercn',
      avatar: 'http://img3.sycdn.imooc.com/5ad7144100017a5e07410741-160-160.jpg',
      job: '数据库工程师',
      introduction: '高级数据库工程师（DBA），从事数据库管理工作多年，曾就职于聚美优品、猫扑、TOM等多家大型互联网公司，进行过千万级的数据处理，对大数据业务、高并发时数据优化积累了大量丰富的经验。'
    },
    labels: ['MySql']
  },
  {
    category: {
      text: '数据库',
      code: 7,
    },
    title: '中高级开发晋升利器 MySQL面试指南',
    introduction: '9大类常见问题详解，切实提升数据库应用和管理能力，升职加薪必备佳品！',
    img: 'https://img.mukewang.com/szimg/5bdc3b81000178e812000676-360-202.jpg',
    banner: 'https://img.mukewang.com/szimg/5bdc3b8a0001583240001120.jpg',
    type: {
      text: '实战',
      code: 1
    },
    hard: {
      text: '中级',
      code: 2,
    },
    price: 288,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: 'sqlercn',
      avatar: 'http://img3.sycdn.imooc.com/5ad7144100017a5e07410741-160-160.jpg',
      job: '数据库工程师',
      introduction: '高级数据库工程师（DBA），从事数据库管理工作多年，曾就职于聚美优品、猫扑、TOM等多家大型互联网公司，进行过千万级的数据处理，对大数据业务、高并发时数据优化积累了大量丰富的经验。'
    },
    labels: ['MySql']
  },
  {
    category: {
      text: '数据库',
      code: 7,
    },
    title: '零基础入门 全角度解读企业主流数据库MySQL8.0',
    introduction: '掌握SQL优化与慢查询优化，具备独当一面的能力，彰显更多个人价值',
    img: 'https://img.mukewang.com/szimg/5ca5e266085019b306000338-360-202.jpg',
    banner: 'https://img.mukewang.com/szimg/5ca5e26e09568dbc20000400.jpg',
    type: {
      text: '实战',
      code: 1
    },
    hard: {
      text: '入门',
      code: 0,
    },
    price: 266,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: 'sqlercn',
      avatar: 'http://img3.sycdn.imooc.com/5ad7144100017a5e07410741-160-160.jpg',
      job: '数据库工程师',
      introduction: '高级数据库工程师（DBA），从事数据库管理工作多年，曾就职于聚美优品、猫扑、TOM等多家大型互联网公司，进行过千万级的数据处理，对大数据业务、高并发时数据优化积累了大量丰富的经验。'
    },
    labels: ['MySql']
  },
  {
    category: {
      text: '数据库',
      code: 7,
    },
    title: '中高级开发晋升利器 MySQL面试指南',
    introduction: '9大类常见问题详解，切实提升数据库应用和管理能力，升职加薪必备佳品！',
    img: 'https://img.mukewang.com/szimg/5bdc3b81000178e812000676-360-202.jpg',
    banner: 'https://img.mukewang.com/szimg/5bdc3b8a0001583240001120.jpg',
    type: {
      text: '实战',
      code: 1
    },
    hard: {
      text: '中级',
      code: 2,
    },
    price: 288,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: 'sqlercn',
      avatar: 'http://img3.sycdn.imooc.com/5ad7144100017a5e07410741-160-160.jpg',
      job: '数据库工程师',
      introduction: '高级数据库工程师（DBA），从事数据库管理工作多年，曾就职于聚美优品、猫扑、TOM等多家大型互联网公司，进行过千万级的数据处理，对大数据业务、高并发时数据优化积累了大量丰富的经验。'
    },
    labels: ['MySql']
  },
  {
    category: {
      text: '数据库',
      code: 7,
    },
    title: '玩转MongoDB4.0(最新版) 从入门到实践',
    introduction: '30%理论+70%实战，让你用实操去检验真理,一门让你事半功倍的入门进阶课',
    img: 'https://img.mukewang.com/szimg/5c90dc020849c59a06000338-360-202.jpg',
    banner: 'https://img.mukewang.com/szimg/5b4f355a0001852520000520.jpg',
    type: {
      text: '实战',
      code: 1
    },
    hard: {
      text: '入门',
      code: 0,
    },
    price: 288,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: 'Stannum',
      avatar: 'https://img1.sycdn.imooc.com/user/5b558fd00001ca6207410741-100-100.jpg',
      job: 'Java/C++敏捷开发专家',
      introduction: '目前在财经界俗称的“大摩”，一家成立于美国纽约的国际金融服务公司-摩根士丹利担任软件工程师和敏捷开发专家。 主攻Event Sourcing架构模式的应用。是一个“只有男同事,没有女同事”的程序媛一枚,先后就职于多家投资银行，负责开发“每一个bug都很贵”的内部交易系统,主导了股票交易执行系统和衍生品交易风险控制系统。'
    },
    labels: ['MongoDB']
  },
  {
    category: {
      text: 'UI设计&多媒体',
      code: 8,
    },
    title: '高薪设计师必修课 AE移动UI动效设计从入门到实战',
    introduction: '20多个商业实用案例，轻松Get√到AE动效核心技术，让你的作品脱颖而出！',
    img: 'https://img.mukewang.com/szimg/5aa9d2c1000104d510800600-360-202.jpg',
    banner: 'https://img.mukewang.com/szimg/5b51c7100001351220000560.jpg',
    type: {
      text: '实战',
      code: 1
    },
    hard: {
      text: '中级',
      code: 2,
    },
    price: 199,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: '墨染ART',
      avatar: 'http://img4.sycdn.imooc.com/5b1c1e530001c06c07410719-160-160.jpg',
      job: 'UI设计师',
      introduction: '站酷推荐设计师，UI中国推荐设计师。热门UI动效实战系列教程作者，对UI设计、动效设计、多终端响应式设计有深入的研究和经验。'
    },
    labels: ['设计基础']
  },
  {
    category: {
      text: 'UI设计&多媒体',
      code: 8,
    },
    title: '移动端App UI设计入门与实战',
    introduction: '涉及多项实用设计技能训练，成为一名具有“产品思维”的设计师！',
    img: 'https://img.mukewang.com/szimg/5a123d7e00011fa705400300-360-202.jpg',
    banner: 'https://img.mukewang.com/szimg/5b51c7100001351220000560.jpg',
    type: {
      text: '实战',
      code: 1
    },
    hard: {
      text: '中级',
      code: 2,
    },
    price: 199,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: '墨染ART',
      avatar: 'http://img4.sycdn.imooc.com/5b1c1e530001c06c07410719-160-160.jpg',
      job: 'UI设计师',
      introduction: '站酷推荐设计师，UI中国推荐设计师。热门UI动效实战系列教程作者，对UI设计、动效设计、多终端响应式设计有深入的研究和经验。'
    },
    labels: ['设计基础', 'APPUI设计']
  },
  {
    category: {
      text: 'UI设计&多媒体',
      code: 8,
    },
    title: '高薪设计师必修课 AE移动UI动效设计从入门到实战',
    introduction: '20多个商业实用案例，轻松Get√到AE动效核心技术，让你的作品脱颖而出！',
    img: 'https://img.mukewang.com/szimg/5aa9d2c1000104d510800600-360-202.jpg',
    banner: 'https://img.mukewang.com/szimg/5b51c7100001351220000560.jpg',
    type: {
      text: '实战',
      code: 1
    },
    hard: {
      text: '中级',
      code: 2,
    },
    price: 199,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: '墨染ART',
      avatar: 'http://img4.sycdn.imooc.com/5b1c1e530001c06c07410719-160-160.jpg',
      job: 'UI设计师',
      introduction: '站酷推荐设计师，UI中国推荐设计师。热门UI动效实战系列教程作者，对UI设计、动效设计、多终端响应式设计有深入的研究和经验。'
    },
    labels: ['设计基础']
  },
  {
    category: {
      text: 'UI设计&多媒体',
      code: 8,
    },
    title: '移动端App UI设计入门与实战',
    introduction: '涉及多项实用设计技能训练，成为一名具有“产品思维”的设计师！',
    img: 'https://img.mukewang.com/szimg/5a123d7e00011fa705400300-360-202.jpg',
    banner: 'https://img.mukewang.com/szimg/5b51c7100001351220000560.jpg',
    type: {
      text: '实战',
      code: 1
    },
    hard: {
      text: '中级',
      code: 2,
    },
    price: 199,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: '墨染ART',
      avatar: 'http://img4.sycdn.imooc.com/5b1c1e530001c06c07410719-160-160.jpg',
      job: 'UI设计师',
      introduction: '站酷推荐设计师，UI中国推荐设计师。热门UI动效实战系列教程作者，对UI设计、动效设计、多终端响应式设计有深入的研究和经验。'
    },
    labels: ['设计基础', 'APPUI设计']
  },
  {
    category: {
      text: '前端开发',
      code: 0,
    },
    title: '初识HTML(5)+CSS(3)-2020升级版',
    introduction: 'HTML(5)+CSS(3)基础教程8小时带领大家步步深入学习标签用法和意义',
    img: 'https://img4.mukewang.com/529dc3380001379906000338-240-135.jpg',
    banner: '',
    type: {
      text: '免费',
      code: 0
    },
    hard: {
      text: '入门',
      code: 0,
    },
    price: 0,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: '丶五月的夏天',
      avatar: 'https://img2.mukewang.com/54584f6d0001759002200220-80-80.jpg',
      job: 'Web前端工程师',
      introduction: ''
    },
    labels: ['HTML/CSS']
  },
  {
    category: {
      text: '前端开发',
      code: 0,
    },
    title: 'JavaScript入门篇',
    introduction: 'JavaScript做为一名Web工程师的必备技术，本教程让您快速入门',
    img: 'https://img2.mukewang.com/53e1d0470001ad1e06000338-240-135.jpg',
    banner: '',
    type: {
      text: '免费',
      code: 0
    },
    hard: {
      text: '入门',
      code: 0,
    },
    price: 0,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: '慕课官方号',
      avatar: 'https://img1.mukewang.com/5b88f1f50001688401500150-80-80.jpg',
      job: '页面重构设计',
      introduction: ''
    },
    labels: ['JavaScript']
  },
  {
    category: {
      text: '前端开发',
      code: 0,
    },
    title: 'JavaScript进阶篇',
    introduction: '本课程从如何插入JS代码开始，带您进入网页动态交互世界',
    img: 'https://img2.mukewang.com/574678bd00010a7206000338-240-135.jpg',
    banner: '',
    type: {
      text: '免费',
      code: 0
    },
    hard: {
      text: '入门',
      code: 0,
    },
    price: 0,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: '慕课官方号',
      avatar: 'https://img1.mukewang.com/5b88f1f50001688401500150-80-80.jpg',
      job: '页面重构设计',
      introduction: ''
    },
    labels: ['JavaScript']
  },
  {
    category: {
      text: '前端开发',
      code: 0,
    },
    title: 'vue2.5入门',
    introduction: '快速理解Vue编程理念上手Vue2.0开发。',
    img: 'https://img2.mukewang.com/5ad5cc490001e53006000338-240-135.jpg',
    banner: '',
    type: {
      text: '免费',
      code: 0
    },
    hard: {
      text: '中级',
      code: 2,
    },
    price: 0,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: 'Dell',
      avatar: 'https://img4.mukewang.com/5abe468b0001664107390741-80-80.jpg',
      job: 'Web前端工程师',
      introduction: ''
    },
    labels: ['Vue.js']
  },
  {
    category: {
      text: '前端开发',
      code: 0,
    },
    title: 'Vue+Webpack打造todo应用',
    introduction: '用前端最热门框架Vue+最火打包工具Webpack打造todo应用',
    img: 'https://img1.mukewang.com/5a56fdb400017d0306000338-240-135.jpg',
    banner: '',
    type: {
      text: '免费',
      code: 0
    },
    hard: {
      text: '高级',
      code: 3,
    },
    price: 0,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: 'Jokcy',
      avatar: 'https://img1.sycdn.imooc.com/5a697c950001262b05790578-80-80.jpg',
      job: 'Web前端工程师',
      introduction: ''
    },
    labels: ['Vue.js']
  },
  {
    category: {
      text: '前端开发',
      code: 0,
    },
    title: 'Vue+node.js调试入门',
    introduction: '理论实践相结合学习使用 Inspector 调试 Node.js。',
    img: 'https://img3.sycdn.imooc.com/5c3eaa0a08d7052706000338-240-135.jpg',
    banner: '',
    type: {
      text: '免费',
      code: 0
    },
    hard: {
      text: '入门',
      code: 0,
    },
    price: 0,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: 'lewis',
      avatar: 'https://img.mukewang.com/5c3ea1f10001b55908070807-80-80.jpg',
      job: 'Web前端工程师',
      introduction: ''
    },
    labels: ['Node.js']
  },
  {
    category: {
      text: '前端开发',
      code: 0,
    },
    title: 'Nodejs全栈入门',
    introduction: '基于node+mysql+react全栈实战',
    img: 'https://img3.sycdn.imooc.com/5dd7561309f8ae4806000338-240-135.png',
    banner: '',
    type: {
      text: '免费',
      code: 0
    },
    hard: {
      text: '中级',
      code: 2,
    },
    price: 0,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: '一缕孤烟',
      avatar: 'https://img4.mukewang.com/54a2bf390001593c01000100-80-80.jpg',
      job: 'Web前端工程师',
      introduction: ''
    },
    labels: ['Node.js']
  },
  {
    category: {
      text: '后端开发',
      code: 1,
    },
    title: '使用Prometheus实践基于Spring Boot监控告警体系',
    introduction: '基于Spring Boot2.X使用Prometheus实现监控大盘及微服务告警功能。',
    img: 'https://img2.mukewang.com/5e82b5b8099dc26405400300-240-135.png',
    banner: '',
    type: {
      text: '免费',
      code: 0
    },
    hard: {
      text: '中级',
      code: 2,
    },
    price: 0,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: '龙猪GG',
      avatar: 'https://img1.mukewang.com/5b8cd6cb000114e702000112-80-80.jpg',
      job: '架构师',
      introduction: ''
    },
    labels: ['Java']
  },
  {
    category: {
      text: '后端开发',
      code: 1,
    },
    title: '二进制与Java中的基本数据类型',
    introduction: '从认识二进制开始，逐步理解Java是如何存储和处理数据的。',
    img: 'https://img.mukewang.com/5e646d5708f882d512000676-240-135.jpg',
    banner: '',
    type: {
      text: '免费',
      code: 0
    },
    hard: {
      text: '入门',
      code: 0,
    },
    price: 0,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: '舞马',
      avatar: 'https://img.mukewang.com/5e3c0b840001796401500124-80-80.jpg',
      job: '软件工程师',
      introduction: ''
    },
    labels: ['Java']
  },
  {
    category: {
      text: '后端开发',
      code: 1,
    },
    title: '自己动手实现RPC框架',
    introduction: '自己动手实现一个完整的RPC框架，So Easy！',
    img: 'https://img.mukewang.com/5e37d120082e7c7c06000338-240-135.jpg',
    banner: '',
    type: {
      text: '免费',
      code: 0
    },
    hard: {
      text: '中级',
      code: 2,
    },
    price: 0,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: '司马极客',
      avatar: 'https://img4.mukewang.com/5b8cdb710001d95c02000200-80-80.jpg',
      job: '软件工程师',
      introduction: ''
    },
    labels: ['Java']
  },
  {
    category: {
      text: '后端开发',
      code: 1,
    },
    title: 'MUI+个推实现安卓与ios移动端推送',
    introduction: '结合慕信轻聊Netty实战，整合个推到前端与后端，实现安卓与ios移动端推送',
    img: 'https://img4.mukewang.com/5bebce6b0001bd6106000336-240-135.jpg',
    banner: '',
    type: {
      text: '免费',
      code: 0
    },
    hard: {
      text: '初级',
      code: 1,
    },
    price: 0,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: '风间影月',
      avatar: 'https://img4.mukewang.com/5a0c5df20001a1cb05800580-80-80.jpg',
      job: '全栈工程师',
      introduction: ''
    },
    labels: ['Java', 'SpringBoot']
  },
  {
    category: {
      text: '后端开发',
      code: 1,
    },
    title: 'Springboot 微信小程序 – 微信登录功能实战',
    introduction: '简单实现在小程序中对使用微信登录的方式来登录小程序应用',
    img: 'https://img2.mukewang.com/5bbf2def000118ab06000336-240-135.jpg',
    banner: '',
    type: {
      text: '免费',
      code: 0
    },
    hard: {
      text: '初级',
      code: 1,
    },
    price: 0,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: '风间影月',
      avatar: 'https://img4.mukewang.com/5a0c5df20001a1cb05800580-80-80.jpg',
      job: '全栈工程师',
      introduction: ''
    },
    labels: ['Java', 'SpringBoot']
  },
  {
    category: {
      text: '后端开发',
      code: 1,
    },
    title: 'Numpy基础入门',
    introduction: '从基本数组入手全面讲解Numpy中的核心知识',
    img: 'https://img.mukewang.com/5e9683f808f03af912000676-240-135.jpg',
    banner: '',
    type: {
      text: '免费',
      code: 0
    },
    hard: {
      text: '入门',
      code: 0,
    },
    price: 0,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: '夏正东',
      avatar: 'https://img2.mukewang.com/5da6841d0001f79409600960-80-80.jpg',
      job: 'Python工程师',
      introduction: ''
    },
    labels: ['Python']
  },
  {
    category: {
      text: '后端开发',
      code: 1,
    },
    title: 'Python数据预处理（四）- 特征降维与可视化',
    introduction: '教会你使用Python数据预处理',
    img: 'https://img2.mukewang.com/5ce4b199083e469306000338-240-135.jpg',
    banner: '',
    type: {
      text: '免费',
      code: 0
    },
    hard: {
      text: '初级',
      code: 1,
    },
    price: 0,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: '伏草惟存',
      avatar: 'https://img3.mukewang.com/545863cd0001b72a02200220-80-80.jpg',
      job: '算法工程师',
      introduction: ''
    },
    labels: ['Python', '自然语言处理']
  },
  {
    category: {
      text: '移动端开发',
      code: 2,
    },
    title: 'MultiDex从基础原理到实践优化',
    introduction: 'Android进阶学习必备，带你从基础用法到实践优化一站式掌握MultiDex。',
    img: 'https://img.mukewang.com/5e6098b409a0151406000338-240-135.png',
    banner: '',
    type: {
      text: '免费',
      code: 0
    },
    hard: {
      text: '中级',
      code: 2,
    },
    price: 0,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: '凡諾',
      avatar: 'https://img.mukewang.com/5e57662a00012deb11111109-80-80.jpg',
      job: '移动开发工程师',
      introduction: ''
    },
    labels: ['Android']
  },
  {
    category: {
      text: '移动端开发',
      code: 2,
    },
    title: 'Android网络安全之加解密',
    introduction: '在不安全的网络环境中，如何安全的传输敏感数据',
    img: 'https://img4.mukewang.com/5dfc2e870902f80d06000338-240-135.png',
    banner: '',
    type: {
      text: '免费',
      code: 0
    },
    hard: {
      text: '中级',
      code: 2,
    },
    price: 0,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: '凡諾',
      avatar: 'https://img.mukewang.com/5e57662a00012deb11111109-80-80.jpg',
      job: '移动开发工程师',
      introduction: ''
    },
    labels: ['Android']
  },
  {
    category: {
      text: '移动端开发',
      code: 2,
    },
    title: 'Android CMake以及NDK实践基础',
    introduction: 'Android底层开发入门必备，CMake动态库编译和使用，NDK的各种开发技巧。 ',
    img: 'https://img1.mukewang.com/5de8a5740989152106000338-240-135.png',
    banner: '',
    type: {
      text: '免费',
      code: 0
    },
    hard: {
      text: '中级',
      code: 2,
    },
    price: 0,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: 'glumes',
      avatar: 'https://img3.mukewang.com/5462e44b0001421501800180-80-80.jpg',
      job: '移动开发工程师',
      introduction: ''
    },
    labels: ['Android']
  },
  {
    category: {
      text: '计算机基础',
      code: 3,
    },
    title: 'Android 机器学习中的统计学基础',
    introduction: '机器学习中的常用统计学知识点 ',
    img: 'https://img4.mukewang.com/5b470bfe0001cdbf06000338-240-135.jpg',
    banner: '',
    type: {
      text: '免费',
      code: 0
    },
    hard: {
      text: '初级',
      code: 1,
    },
    price: 0,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: '北极小琪',
      avatar: 'https://img4.mukewang.com/5bcd983c0001264203500350-80-80.jpg',
      job: '算法工程师',
      introduction: ''
    },
    labels: ['计算机网络', '算法与数据结构']
  },
  {
    category: {
      text: '计算机基础',
      code: 3,
    },
    title: 'Javascript实现二叉树算法',
    introduction: '感受JS与数据结构的魅力。 ',
    img: 'https://img3.mukewang.com/59ae0e2a0001307706000338-240-135.jpg',
    banner: '',
    type: {
      text: '免费',
      code: 0
    },
    hard: {
      text: '中级',
      code: 2,
    },
    price: 0,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: 'coding迪斯尼',
      avatar: 'https://img.mukewang.com/57a333b400010f6006400478-80-80.jpg',
      job: '全栈工程师',
      introduction: ''
    },
    labels: ['JavaScript', '算法与数据结构']
  }
]"""
    txt = demjson.decode(txt)
    for index, one in enumerate(txt):
        type = one["hard"]
        try:
            item = LessonHardType(**type)
            item.save()
        except django.db.utils.IntegrityError:
            pass


def import_lesson_teacher():
    txt = """[
  {
    category: {
      text: '前端开发',
      code: 0,
    },
    title: 'TypeScript  系统入门到项目实战 趁早学习提高职场竞争力',
    introduction: 'Dell老师专为TypeScript小白打造的，全栈式教学TS入门课程',
    img: 'https://img.mukewang.com/szimg/5e1d990f0885d97306000338-360-202.jpg',
    banner: 'https://img1.sycdn.imooc.com/szimg/5e1d991809c5318e40000800.jpg',
    type: {
      text: '实战',
      code: 1
    },
    hard: {
      text: '中级',
      code: 2,
    },
    price: 266,
    isDiscount: true,
    discountPrice: 216,
    teacher: {
      name: 'Dell',
      avatar: 'https://img1.sycdn.imooc.com/user/5abe468b0001664107390741-100-100.jpg',
      job: 'Web前端工程师',
      introduction: 'BAT资深前端工程师，负责数据平台技术研发。曾任去哪儿网高级前端工程师，主导去哪儿网内部前端监控系统设计，负责去哪儿网门票用户端的前端设计开发。曾任国内知名培训机构高级前端讲师，负责React，Angular，Vue，Hybrid，RN的课程讲授，具备丰富前端授课经验。对优雅编程及工程化有深度思考及见解，教会你写代码，同时帮助你把代码写的更漂亮！'
    },
    labels: ['TypeScript']
  },
  {
    category: {
      text: '前端开发',
      code: 0,
    },
    title: '前端要学的测试课 从Jest入门到 TDD/BDD双实战',
    introduction: '以Vue/React项目进行自动化测试实战，让你技术水平和架构思维双提升',
    img: 'https://img.mukewang.com/szimg/5d36a6000837a91d06000338-360-202.jpg',
    banner: 'https://img.mukewang.com/szimg/5d36a60709f5666320000400.jpg',
    type: {
      text: '实战',
      code: 1
    },
    hard: {
      text: '中级',
      code: 2,
    },
    price: 299,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: 'Dell',
      avatar: 'https://img1.sycdn.imooc.com/user/5abe468b0001664107390741-100-100.jpg',
      job: 'Web前端工程师',
      introduction: 'BAT资深前端工程师，负责数据平台技术研发。曾任去哪儿网高级前端工程师，主导去哪儿网内部前端监控系统设计，负责去哪儿网门票用户端的前端设计开发。曾任国内知名培训机构高级前端讲师，负责React，Angular，Vue，Hybrid，RN的课程讲授，具备丰富前端授课经验。对优雅编程及工程化有深度思考及见解，教会你写代码，同时帮助你把代码写的更漂亮！'
    },
    labels: ['Vue.js', 'React.js']
  },
  {
    category: {
      text: '前端开发',
      code: 0,
    },
    title: '从基础到实战 手把手带你掌握新版Webpack4.0',
    introduction: '知识点+项目实例+原理讲解 全方位解析Webpack4最新版本',
    img: 'https://img.mukewang.com/szimg/5c6bdb3e08e4674a06000338-360-202.jpg',
    banner: 'https://img.mukewang.com/szimg/5c6bdb4f09c2401020000400.jpg',
    type: {
      text: '实战',
      code: 1
    },
    hard: {
      text: '中级',
      code: 2,
    },
    price: 299,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: 'Dell',
      avatar: 'https://img1.sycdn.imooc.com/user/5abe468b0001664107390741-100-100.jpg',
      job: 'Web前端工程师',
      introduction: 'BAT资深前端工程师，负责数据平台技术研发。曾任去哪儿网高级前端工程师，主导去哪儿网内部前端监控系统设计，负责去哪儿网门票用户端的前端设计开发。曾任国内知名培训机构高级前端讲师，负责React，Angular，Vue，Hybrid，RN的课程讲授，具备丰富前端授课经验。对优雅编程及工程化有深度思考及见解，教会你写代码，同时帮助你把代码写的更漂亮！'
    },
    labels: ['Vue.js', 'React.js']
  },
  {
    category: {
      text: '前端开发',
      code: 0,
    },
    title: 'React服务器渲染原理解析与实践',
    introduction: '从零开始，带你搭建属于自己的React SSR框架，从根本上解决客户端渲染问题 。',
    img: 'https://img.mukewang.com/szimg/5ba07190000135b505400300-360-202.jpg',
    banner: 'https://img.mukewang.com/szimg/5c6bdb4f09c2401020000400.jpg',
    type: {
      text: '实战',
      code: 1
    },
    hard: {
      text: '中级',
      code: 2,
    },
    price: 299,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: 'Dell',
      avatar: 'https://img1.sycdn.imooc.com/user/5abe468b0001664107390741-100-100.jpg',
      job: 'Web前端工程师',
      introduction: 'BAT资深前端工程师，负责数据平台技术研发。曾任去哪儿网高级前端工程师，主导去哪儿网内部前端监控系统设计，负责去哪儿网门票用户端的前端设计开发。曾任国内知名培训机构高级前端讲师，负责React，Angular，Vue，Hybrid，RN的课程讲授，具备丰富前端授课经验。对优雅编程及工程化有深度思考及见解，教会你写代码，同时帮助你把代码写的更漂亮！'
    },
    labels: ['React.js']
  },
  {
    category: {
      text: '前端开发',
      code: 0,
    },
    title: 'React开发简书项目 从零基础入门到实战 ',
    introduction: '主流新技术 React-redux，React-router4，贯穿基础语法及项目实战。',
    img: 'https://img.mukewang.com/szimg/5b3082da0001d7e905400300-360-202.jpg',
    banner: 'https://img.mukewang.com/szimg/5b508ba90001116220000560.jpg',
    type: {
      text: '实战',
      code: 1
    },
    hard: {
      text: '中级',
      code: 2,
    },
    price: 299,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: 'Dell',
      avatar: 'https://img1.sycdn.imooc.com/user/5abe468b0001664107390741-100-100.jpg',
      job: 'Web前端工程师',
      introduction: 'BAT资深前端工程师，负责数据平台技术研发。曾任去哪儿网高级前端工程师，主导去哪儿网内部前端监控系统设计，负责去哪儿网门票用户端的前端设计开发。曾任国内知名培训机构高级前端讲师，负责React，Angular，Vue，Hybrid，RN的课程讲授，具备丰富前端授课经验。对优雅编程及工程化有深度思考及见解，教会你写代码，同时帮助你把代码写的更漂亮！'
    },
    labels: ['React.js']
  },
  {
    category: {
      text: '前端开发',
      code: 0,
    },
    title: '经典再升级-新版Vue2.6开发去哪儿网App 从零基础入门到实战项目',
    introduction: '基于Vue最新版本，从基础语法到完整项目，一课掌握Vue基础知识点',
    img: 'https://img.mukewang.com/szimg/5b3082da0001d7e905400300-360-202.jpg',
    banner: 'https://img.mukewang.com/szimg/5b50858100011b9220000560.jpg',
    type: {
      text: '实战',
      code: 1
    },
    hard: {
      text: '中级',
      code: 2,
    },
    price: 266,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: 'Dell',
      avatar: 'https://img1.sycdn.imooc.com/user/5abe468b0001664107390741-100-100.jpg',
      job: 'Web前端工程师',
      introduction: 'BAT资深前端工程师，负责数据平台技术研发。曾任去哪儿网高级前端工程师，主导去哪儿网内部前端监控系统设计，负责去哪儿网门票用户端的前端设计开发。曾任国内知名培训机构高级前端讲师，负责React，Angular，Vue，Hybrid，RN的课程讲授，具备丰富前端授课经验。对优雅编程及工程化有深度思考及见解，教会你写代码，同时帮助你把代码写的更漂亮！'
    },
    labels: ['Vue.js']
  },
  {
    category: {
      text: '前端开发',
      code: 0,
    },
    title: '下一代前端开发语言 TypeScript从零重构axios',
    introduction: '掌握TS，学习vue3.0源码必备基础！课程从零开始重构功能完整的JS库，是学习造轮子的不二之选！',
    img: 'https://img.mukewang.com/szimg/5cbf00c608f52a3b06000338-360-202.jpg',
    banner: 'https://img.mukewang.com/szimg/5cbf00cb092626c820000400.jpg',
    type: {
      text: '实战',
      code: 1
    },
    hard: {
      text: '中级',
      code: 2,
    },
    price: 388,
    isDiscount: true,
    discountPrice: 348,
    teacher: {
      name: 'ustbhuangyi',
      avatar: 'https://img.mukewang.com/user/577baef700019c4501400140-100-100.jpg',
      job: 'Web前端工程师',
      introduction: '曾任职百度、滴滴，现担任Zoom前端架构师，推进前后端分离架构方案，同时负责 Zoom 自研组件库。公众号《老黄的前端私房菜》，《Vue.js 技术揭秘》独立作者，《Vue.js 权威指南》主要作者，开源项目 better-scroll 作者。曾主导滴滴开源项目 cube-ui，建立团队技术博客。'
    },
    labels: ['TypeScript']
  },
  {
    category: {
      text: '前端开发',
      code: 0,
    },
    title: 'Vue.js2.5+cube-ui重构饿了么App（经典再升级）',
    introduction: '掌握Vue1.0到2.0再到2.5最全版本应用与迭代，打造极致流畅的WebApp',
    img: 'https://img.mukewang.com/szimg/5becd5ad0001b89306000338-360-202.jpg',
    banner: 'https://img1.sycdn.imooc.com/szimg/5becd5bc0001d45120000560.jpg',
    type: {
      text: '实战',
      code: 1
    },
    hard: {
      text: '中级',
      code: 2,
    },
    price: 198,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: 'ustbhuangyi',
      avatar: 'https://img.mukewang.com/user/577baef700019c4501400140-100-100.jpg',
      job: 'Web前端工程师',
      introduction: '曾任职百度、滴滴，现担任Zoom前端架构师，推进前后端分离架构方案，同时负责 Zoom 自研组件库。公众号《老黄的前端私房菜》，《Vue.js 技术揭秘》独立作者，《Vue.js 权威指南》主要作者，开源项目 better-scroll 作者。曾主导滴滴开源项目 cube-ui，建立团队技术博客。'
    },
    labels: ['Vue.js']
  },
  {
    category: {
      text: '前端开发',
      code: 0,
    },
    title: 'Vue.js源码全方位深入解析 （含Vue3.0源码分析）',
    introduction: '全方位讲解 Vue.js 源码，学精学透 Vue 原理实现，进阶高级工程师',
    img: 'https://img.mukewang.com/szimg/5b17bad10001535305400300-360-202.jpg',
    banner: 'https://img1.sycdn.imooc.com/szimg/5b508b4200014f8a20000560.jpg',
    type: {
      text: '实战',
      code: 1
    },
    hard: {
      text: '高级',
      code: 3,
    },
    price: 488,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: 'ustbhuangyi',
      avatar: 'https://img.mukewang.com/user/577baef700019c4501400140-100-100.jpg',
      job: 'Web前端工程师',
      introduction: '曾任职百度、滴滴，现担任Zoom前端架构师，推进前后端分离架构方案，同时负责 Zoom 自研组件库。公众号《老黄的前端私房菜》，《Vue.js 技术揭秘》独立作者，《Vue.js 权威指南》主要作者，开源项目 better-scroll 作者。曾主导滴滴开源项目 cube-ui，建立团队技术博客。'
    },
    labels: ['Vue.js']
  },
  {
    category: {
      text: '后端开发',
      code: 1,
    },
    title: 'Python Flask高级编程之RESTFul API前后端分离精讲',
    introduction: 'RESTFul+权限管理+token令牌+扩展flask=提升编程思维',
    img: 'https://img.mukewang.com/szimg/5b061fe30001db4505400300-360-202.jpg',
    banner: 'https://img1.sycdn.imooc.com/szimg/5be39cb6000127a520000559.jpg',
    type: {
      text: '实战',
      code: 1
    },
    hard: {
      text: '中级',
      code: 2,
    },
    price: 148,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: '7七月',
      avatar: 'https://img.mukewang.com/user/54584e2c00010a2c02200220-100-100.jpg',
      job: '全栈工程师',
      introduction: '十年研发及团队管理经验，对程序员面临的各种问题深有体会；精通Python、Java、Node.js、JavaScript等语言，对Web的基础研发、高并发处理与分布式有非常深入的理解。课程讲解深入浅出，极为擅长培养学生的编程思维。'
    },
    labels: ['Python']
  },
  {
    category: {
      text: '后端开发',
      code: 1,
    },
    title: 'Python Flask高级编程之从0到1开发《鱼书》精品项目',
    introduction: '7月老师深入浅出剖析Flask核心机制，和你一起探讨Python高级编程',
    img: 'https://img.mukewang.com/szimg/5ab84f650001f0b005400300-360-202.jpg',
    banner: 'https://img.mukewang.com/szimg/5b51c78300015e0220000560.jpg',
    type: {
      text: '实战',
      code: 1
    },
    hard: {
      text: '中级',
      code: 2,
    },
    price: 399,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: '7七月',
      avatar: 'https://img.mukewang.com/user/54584e2c00010a2c02200220-100-100.jpg',
      job: '全栈工程师',
      introduction: '十年研发及团队管理经验，对程序员面临的各种问题深有体会；精通Python、Java、Node.js、JavaScript等语言，对Web的基础研发、高并发处理与分布式有非常深入的理解。课程讲解深入浅出，极为擅长培养学生的编程思维。'
    },
    labels: ['Python']
  },
  {
    category: {
      text: '后端开发',
      code: 1,
    },
    title: '全面系统Python3.8入门+进阶  (程序员必备第二语言)',
    introduction: '语法精讲/配套练习+思考题/原生爬虫实战',
    img: 'https://img.mukewang.com/szimg/59b8a486000107fb05400300-360-202.jpg',
    banner: 'https://img.mukewang.com/szimg/5b51c78300015e0220000560.jpg',
    type: {
      text: '实战',
      code: 1
    },
    hard: {
      text: '初级',
      code: 1,
    },
    price: 366,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: '7七月',
      avatar: 'https://img.mukewang.com/user/54584e2c00010a2c02200220-100-100.jpg',
      job: '全栈工程师',
      introduction: '十年研发及团队管理经验，对程序员面临的各种问题深有体会；精通Python、Java、Node.js、JavaScript等语言，对Web的基础研发、高并发处理与分布式有非常深入的理解。课程讲解深入浅出，极为擅长培养学生的编程思维。'
    },
    labels: ['Python']
  },
  {
    category: {
      text: '后端开发',
      code: 1,
    },
    title: 'Spring Cloud微服务实战 打造企业级优惠券系统',
    introduction: '面试、毕设、升职优选：从0开始，Java主流框架，构建电商都在用的优惠券系统',
    img: 'https://img.mukewang.com/szimg/5d5f7da0093eb24212000676-360-202.jpg',
    banner: 'https://img.mukewang.com/szimg/5d5f7da709b71ad320000400.jpg',
    type: {
      text: '实战',
      code: 1
    },
    hard: {
      text: '中级',
      code: 2,
    },
    price: 299,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: '勤一',
      avatar: 'https://img.mukewang.com/user/5c36c432000158e609600960-100-100.jpg',
      job: 'Java开发工程师',
      introduction: '高级技术专家，曾就职于微软、腾讯，目前就职于知名电商互联网公司，拥有丰富的大型项目开发经验。多年IT从业经验，一线软件设计、研发，熟悉C、CPP、Java等开发语言，对Web框架、数据存储、架构设计等有深入的理解和实践。'
    },
    labels: ['Java', 'Spring Cloud']
  },
  {
    category: {
      text: '后端开发',
      code: 1,
    },
    title: '基于Spring Cloud微服务架构  广告系统设计与实现（2020新版）',
    introduction: '掌握互联网广告系统，学会为公司创收，你自然就是最抢手的人才。可用于毕设。',
    img: 'https://img.mukewang.com/szimg/5d2e7ada09946f6f12000676-360-202.jpg',
    banner: 'https://img.mukewang.com/szimg/5d2e7ae20942ca4d20000400.jpg',
    type: {
      text: '实战',
      code: 1
    },
    hard: {
      text: '中级',
      code: 2,
    },
    price: 299,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: '勤一',
      avatar: 'https://img.mukewang.com/user/5c36c432000158e609600960-100-100.jpg',
      job: 'Java开发工程师',
      introduction: '高级技术专家，曾就职于微软、腾讯，目前就职于知名电商互联网公司，拥有丰富的大型项目开发经验。多年IT从业经验，一线软件设计、研发，熟悉C、CPP、Java等开发语言，对Web框架、数据存储、架构设计等有深入的理解和实践。'
    },
    labels: ['Java', 'Spring Cloud']
  },
  {
    category: {
      text: '后端开发',
      code: 1,
    },
    title: 'Java分布式后台开发  Spring Boot+Kafka+HBase',
    introduction: '从零到一完整搭建企业级架构的通用卡包工程，让你开发技迈向到百度T4+ 。',
    img: 'https://img1.sycdn.imooc.com/szimg/5b55356c0001af0105400300-360-202.jpg',
    banner: 'https://img.mukewang.com/szimg/5b5535400001b72e20000560.jpg',
    type: {
      text: '实战',
      code: 1
    },
    hard: {
      text: '中级',
      code: 2,
    },
    price: 299,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: '勤一',
      avatar: 'https://img.mukewang.com/user/5c36c432000158e609600960-100-100.jpg',
      job: 'Java开发工程师',
      introduction: '高级技术专家，曾就职于微软、腾讯，目前就职于知名电商互联网公司，拥有丰富的大型项目开发经验。多年IT从业经验，一线软件设计、研发，熟悉C、CPP、Java等开发语言，对Web框架、数据存储、架构设计等有深入的理解和实践。'
    },
    labels: ['Java', 'SpringBoot']
  },
  {
    category: {
      text: '移动端开发',
      code: 2,
    },
    title: 'Flutter从入门到进阶 实战携程网App',
    introduction: '从入门到进阶，系统掌握Flutter开发核心技术',
    img: 'https://img.mukewang.com/szimg/5c7e6835087ef3d806000338-360-202.jpg',
    banner: 'https://img.mukewang.com/szimg/5c9304cd097d093d20000400.jpg',
    type: {
      text: '实战',
      code: 1
    },
    hard: {
      text: '中级',
      code: 2,
    },
    price: 348,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: 'CrazyCodeBoy',
      avatar: 'https://img.mukewang.com/user/545847e20001163c02200220-100-100.jpg',
      job: '移动端开发工程师',
      introduction: '深耕移动端领域8年有余，全栈技术专家，CSDN 博客专家，擅长Android、iOS、Flutter、React Native以及小程序项目开发，负责过前端、Java、Android、iOS等多平台项目的研发，有多款React Native App上线及管理经验。他享受编程、热爱开源、酷爱分享，平时除了写写博客外，也分享一些开源技术干货 · Github'
    },
    labels: ['React native', 'Flutter']
  },
  {
    category: {
      text: '移动端开发',
      code: 2,
    },
    title: '新版React Native从入门到实战打造高质量上线App（再升级）',
    introduction: '解锁React Native开发应用新姿势，一网打尽React Native新版本热门技术',
    img: 'https://img.mukewang.com/szimg/5db6916d08d81b8b12000676-360-202.jpg',
    banner: 'https://img.mukewang.com/szimg/5db69b9c086653ff40001120.jpg',
    type: {
      text: '实战',
      code: 1
    },
    hard: {
      text: '中级',
      code: 2,
    },
    price: 399,
    isDiscount: false,
    discountPrice: 0,
    script: {
      text: '升级',
      code: 1
    },
    teacher: {
      name: 'CrazyCodeBoy',
      avatar: 'https://img.mukewang.com/user/545847e20001163c02200220-100-100.jpg',
      job: '移动端开发工程师',
      introduction: '深耕移动端领域8年有余，全栈技术专家，CSDN 博客专家，擅长Android、iOS、Flutter、React Native以及小程序项目开发，负责过前端、Java、Android、iOS等多平台项目的研发，有多款React Native App上线及管理经验。他享受编程、热爱开源、酷爱分享，平时除了写写博客外，也分享一些开源技术干货 · Github'
    },
    labels: ['React native']
  },
  {
    category: {
      text: '移动端开发',
      code: 2,
    },
    title: '实战企业级项目 践行App重构之路',
    introduction: '真实还原大厂App重构过程，以组件化和插件化为核心，进击高级工程师必备',
    img: 'https://img.mukewang.com/szimg/5e4f4f66098b14c512000676-360-202.jpg',
    banner: 'https://img.mukewang.com/szimg/5e4f4f7009aeb1a920000400.jpg',
    type: {
      text: '实战',
      code: 1
    },
    hard: {
      text: '中级',
      code: 2,
    },
    price: 299,
    isDiscount: false,
    discountPrice: 0,
    script: {
      text: '升级',
      code: 1
    },
    teacher: {
      name: 'qndroid',
      avatar: 'http://img3.sycdn.imooc.com/5333a0350001692e02200220-160-160.jpg',
      job: '移动开发工程师',
      introduction: '多年Android开发经验，曾任职于优酷等一线互联网企业，现就职于快手基础架构部，有丰富的Android应用架构和SDK开发经验，喜欢分享，授课风格循序渐进，擅长培养学生的编程思维，深受学员好评。'
    },
    labels: ['Android']
  },
  {
    category: {
      text: '移动端开发',
      code: 2,
    },
    title: '企业级Android应用架构设计与开发',
    introduction: '一门能助你掌握企业级架构设计、功能开发，冲击大厂Android中高级工程师职位的课程',
    img: 'https://img.mukewang.com/szimg/5d5e6d1f0983ee0112000676-360-202.jpg',
    banner: 'https://img1.sycdn.imooc.com/szimg/5d5e6d2809b8706c20000400.jpg',
    type: {
      text: '实战',
      code: 1
    },
    hard: {
      text: '中级',
      code: 2,
    },
    price: 299,
    isDiscount: false,
    discountPrice: 0,
    script: {
      text: '升级',
      code: 1
    },
    teacher: {
      name: 'qndroid',
      avatar: 'http://img3.sycdn.imooc.com/5333a0350001692e02200220-160-160.jpg',
      job: '移动开发工程师',
      introduction: '多年Android开发经验，曾任职于优酷等一线互联网企业，现就职于快手基础架构部，有丰富的Android应用架构和SDK开发经验，喜欢分享，授课风格循序渐进，擅长培养学生的编程思维，深受学员好评。'
    },
    labels: ['Android']
  },
  {
    category: {
      text: '移动端开发',
      code: 2,
    },
    title: 'Gradle3.0自动化项目构建技术精讲+实战',
    introduction: '全面覆盖Gradle核心知识和高级用法，高级工程师必备技能！',
    img: 'https://img.mukewang.com/szimg/5acf37460001aa3405400300-360-202.jpg',
    banner: 'https://img.mukewang.com/szimg/5b5085f900017de520000560.jpg',
    type: {
      text: '实战',
      code: 1
    },
    hard: {
      text: '中级',
      code: 2,
    },
    price: 199,
    isDiscount: false,
    discountPrice: 0,
    script: {
      text: '升级',
      code: 1
    },
    teacher: {
      name: 'qndroid',
      avatar: 'http://img3.sycdn.imooc.com/5333a0350001692e02200220-160-160.jpg',
      job: '移动开发工程师',
      introduction: '多年Android开发经验，曾任职于优酷等一线互联网企业，现就职于快手基础架构部，有丰富的Android应用架构和SDK开发经验，喜欢分享，授课风格循序渐进，擅长培养学生的编程思维，深受学员好评。'
    },
    labels: ['Android']
  },
  {
    category: {
      text: '计算机基础',
      code: 3,
    },
    title: '玩转算法系列--图论精讲  面试升职必备（Java版）',
    introduction: '由于图论算法本身的复杂性和抽象性，让同学们头疼不已，这次bobo带你彻底玩转图论，克服对图论问题的恐惧心理',
    img: 'https://img1.sycdn.imooc.com/szimg/5d31765d08c90cba06000338-360-202.jpg',
    banner: 'https://img.mukewang.com/szimg/5d3176630945ccf020000288.jpg',
    type: {
      text: '实战',
      code: 1
    },
    hard: {
      text: '中级',
      code: 2,
    },
    price: 348,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: 'liuyubobobo',
      avatar: 'https://img1.sycdn.imooc.com/user/5347593e00010cfb01400140-100-100.jpg',
      job: '算法大牛 ACM亚洲区奖牌获得者',
      introduction: '创业者，全栈工程师，持续学习者。对技术开发，产品设计、前后端，ios，html5，智能算法等领域均有接触；拥有多款独立App作品；对一切可编程的东西有浓厚兴趣，对游戏编程格外感兴趣。相信编程改变一切。'
    },
    labels: ['算法和数据结构']
  },
  {
    category: {
      text: '计算机基础',
      code: 3,
    },
    title: '玩转算法系列--数据结构精讲 更适合0算法基础入门到进阶（java版）',
    introduction: '体系完整，细致入微，0基础入门：动态数组/栈/队列/链表/BST/堆/线段树/Trie/并查集/AVL/红黑树…',
    img: 'https://img1.sycdn.imooc.com/szimg/5ad05dc00001eae705400300-360-202.jpg',
    banner: 'https://img.mukewang.com/szimg/5b5086220001ef9420000560.jpg',
    type: {
      text: '实战',
      code: 1
    },
    hard: {
      text: '中级',
      code: 2,
    },
    price: 299,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: 'liuyubobobo',
      avatar: 'https://img1.sycdn.imooc.com/user/5347593e00010cfb01400140-100-100.jpg',
      job: '算法大牛 ACM亚洲区奖牌获得者',
      introduction: '创业者，全栈工程师，持续学习者。对技术开发，产品设计、前后端，ios，html5，智能算法等领域均有接触；拥有多款独立App作品；对一切可编程的东西有浓厚兴趣，对游戏编程格外感兴趣。相信编程改变一切。'
    },
    labels: ['算法和数据结构']
  },
  {
    category: {
      text: '计算机基础',
      code: 3,
    },
    title: '结合编程学数学 专为程序员设计的线性代数',
    introduction: '创新设计，通俗易懂。用编程的方式学数学。这一次，bobo老师带你彻底征服线性代数',
    img: 'https://img1.sycdn.imooc.com/szimg/5b5835a60001907e05400300-360-202.jpg',
    banner: 'https://img1.sycdn.imooc.com/szimg/5b5835cb0001d0c120000560.jpg',
    type: {
      text: '实战',
      code: 1
    },
    hard: {
      text: '初级',
      code: 1,
    },
    price: 348,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: 'liuyubobobo',
      avatar: 'https://img1.sycdn.imooc.com/user/5347593e00010cfb01400140-100-100.jpg',
      job: '算法大牛 ACM亚洲区奖牌获得者',
      introduction: '创业者，全栈工程师，持续学习者。对技术开发，产品设计、前后端，ios，html5，智能算法等领域均有接触；拥有多款独立App作品；对一切可编程的东西有浓厚兴趣，对游戏编程格外感兴趣。相信编程改变一切。'
    },
    labels: ['数学']
  },
  {
    category: {
      text: '计算机基础',
      code: 3,
    },
    title: '看的见的算法 7个经典应用诠释算法精髓',
    introduction: '课程重应用、重实践、重思维，真正应用于实际工作开发中，也可作为毕设作品、面试项目。',
    img: 'https://img1.sycdn.imooc.com/szimg/59b2766f000190d505400300-360-202.jpg',
    banner: 'https://img.mukewang.com/szimg/5b4f355a0001852520000520.jpg',
    type: {
      text: '实战',
      code: 1
    },
    hard: {
      text: '初级',
      code: 1,
    },
    price: 248,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: 'liuyubobobo',
      avatar: 'https://img1.sycdn.imooc.com/user/5347593e00010cfb01400140-100-100.jpg',
      job: '算法大牛 ACM亚洲区奖牌获得者',
      introduction: '创业者，全栈工程师，持续学习者。对技术开发，产品设计、前后端，ios，html5，智能算法等领域均有接触；拥有多款独立App作品；对一切可编程的东西有浓厚兴趣，对游戏编程格外感兴趣。相信编程改变一切。'
    },
    labels: ['算法和数据结构']
  },
  {
    category: {
      text: '前沿技术',
      code: 4,
    },
    title: '看的见的算法 Zookeeper源码分析',
    introduction: '“分而治之”逐一攻克Zookeeper框架各个组件的源码',
    img: 'https://img.mukewang.com/szimg/5d1ad17f08cd16e800000000-360-202.jpg',
    banner: 'https://img.mukewang.com/szimg/5b4f355a0001852520000520.jpg',
    type: {
      text: '实战',
      code: 1
    },
    hard: {
      text: '中级',
      code: 2,
    },
    price: 388,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: '城南大师兄',
      avatar: 'https://img1.sycdn.imooc.com/user/5cac7e810001fe7705270698-100-100.jpg',
      job: '国内知名公司架构师',
      introduction: '目前主要负责后端架构设计，具有十多年一线开发和架构经验，拥有丰富的高性能、高并发处理以及大型服务器软件设计架构经验。深谙各种源码。工作中常常和千万级高并发的问题“正面硬钢” ，因此在高并发调优等方面积累了丰富的实战经验。十几年的架构经验，让讲师早已将理论和实践锻造的炉火纯青。如果你想学习他密不外传的工作‘渡劫’经验，讲师等你打Call~'
    },
    labels: ['微服务']
  },
  {
    category: {
      text: '前沿技术',
      code: 4,
    },
    title: '学习Hyperledger Fabric实战联盟链',
    introduction: '兼顾区块链应用层和底层  进击区块链工程师',
    img: 'https://img.mukewang.com/szimg/5b73d7f60001dc1e05400300-360-202.jpg',
    banner: 'https://img1.sycdn.imooc.com/szimg/5b73d7fc0001e07720000560.jpg',
    type: {
      text: '实战',
      code: 1
    },
    hard: {
      text: '高级',
      code: 3,
    },
    price: 266,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: '自游蜗牛',
      avatar: 'https://img.mukewang.com/user/5b6949e20001c6bf10801080-100-100.jpg',
      job: '区块链底层工程师',
      introduction: '现就职于某世界500强区块链团队，从事区块链底层研究以及BAAS平台搭建。精通区块链底层存储、共识等技术，职业方向偏重联盟链体系。'
    },
    labels: ['区块链']
  },
  {
    category: {
      text: '前沿技术',
      code: 4,
    },
    title: '深度学习之目标检测常用算法原理+实践精讲',
    introduction: '从原理（YOLO / Faster RCNN / SSD / 文本检测 / 多任务网络）到场景实战，掌握目标检测核心技术',
    img: 'https://img1.sycdn.imooc.com/szimg/5bfb523c0001290905400300-360-202.jpg',
    banner: 'https://img1.sycdn.imooc.com/szimg/5bfb52480001858920000559.jpg',
    type: {
      text: '实战',
      code: 1
    },
    hard: {
      text: '高级',
      code: 3,
    },
    price: 499,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: '会写代码的好厨师',
      avatar: 'https://img1.sycdn.imooc.com/user/5b8618950001cd9101440146-100-100.jpg',
      job: '资深机器学习工程师',
      introduction: '现就职于某世界500强区块链团队，从事区块链底层研究以及BAAS平台搭建。精通区块链底层存储、共识等技术，职业方向偏重联盟链体系。'
    },
    labels: ['机器学习']
  },
  {
    category: {
      text: '前沿技术',
      code: 4,
    },
    title: '看的见的算法 Zookeeper源码分析',
    introduction: '“分而治之”逐一攻克Zookeeper框架各个组件的源码',
    img: 'https://img.mukewang.com/szimg/5d1ad17f08cd16e800000000-360-202.jpg',
    banner: 'https://img.mukewang.com/szimg/5b4f355a0001852520000520.jpg',
    type: {
      text: '实战',
      code: 1
    },
    hard: {
      text: '中级',
      code: 2,
    },
    price: 388,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: '城南大师兄',
      avatar: 'https://img1.sycdn.imooc.com/user/5cac7e810001fe7705270698-100-100.jpg',
      job: '国内知名公司架构师',
      introduction: '目前主要负责后端架构设计，具有十多年一线开发和架构经验，拥有丰富的高性能、高并发处理以及大型服务器软件设计架构经验。深谙各种源码。工作中常常和千万级高并发的问题“正面硬钢” ，因此在高并发调优等方面积累了丰富的实战经验。十几年的架构经验，让讲师早已将理论和实践锻造的炉火纯青。如果你想学习他密不外传的工作‘渡劫’经验，讲师等你打Call~'
    },
    labels: ['微服务']
  },
  {
    category: {
      text: '前沿技术',
      code: 4,
    },
    title: '学习Hyperledger Fabric实战联盟链',
    introduction: '兼顾区块链应用层和底层  进击区块链工程师',
    img: 'https://img.mukewang.com/szimg/5b73d7f60001dc1e05400300-360-202.jpg',
    banner: 'https://img1.sycdn.imooc.com/szimg/5b73d7fc0001e07720000560.jpg',
    type: {
      text: '实战',
      code: 1
    },
    hard: {
      text: '高级',
      code: 3,
    },
    price: 266,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: '自游蜗牛',
      avatar: 'https://img.mukewang.com/user/5b6949e20001c6bf10801080-100-100.jpg',
      job: '区块链底层工程师',
      introduction: '现就职于某世界500强区块链团队，从事区块链底层研究以及BAAS平台搭建。精通区块链底层存储、共识等技术，职业方向偏重联盟链体系。'
    },
    labels: ['区块链']
  },
  {
    category: {
      text: '前沿技术',
      code: 4,
    },
    title: '深度学习之目标检测常用算法原理+实践精讲',
    introduction: '从原理（YOLO / Faster RCNN / SSD / 文本检测 / 多任务网络）到场景实战，掌握目标检测核心技术',
    img: 'https://img1.sycdn.imooc.com/szimg/5bfb523c0001290905400300-360-202.jpg',
    banner: 'https://img1.sycdn.imooc.com/szimg/5bfb52480001858920000559.jpg',
    type: {
      text: '实战',
      code: 1
    },
    hard: {
      text: '高级',
      code: 3,
    },
    price: 499,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: '会写代码的好厨师',
      avatar: 'https://img1.sycdn.imooc.com/user/5b8618950001cd9101440146-100-100.jpg',
      job: '资深机器学习工程师',
      introduction: '现就职于某世界500强区块链团队，从事区块链底层研究以及BAAS平台搭建。精通区块链底层存储、共识等技术，职业方向偏重联盟链体系。'
    },
    labels: ['机器学习']
  },
  {
    category: {
      text: '前沿技术',
      code: 4,
    },
    title: '看的见的算法 Zookeeper源码分析',
    introduction: '“分而治之”逐一攻克Zookeeper框架各个组件的源码',
    img: 'https://img.mukewang.com/szimg/5d1ad17f08cd16e800000000-360-202.jpg',
    banner: 'https://img.mukewang.com/szimg/5b4f355a0001852520000520.jpg',
    type: {
      text: '实战',
      code: 1
    },
    hard: {
      text: '中级',
      code: 2,
    },
    price: 388,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: '城南大师兄',
      avatar: 'https://img1.sycdn.imooc.com/user/5cac7e810001fe7705270698-100-100.jpg',
      job: '国内知名公司架构师',
      introduction: '目前主要负责后端架构设计，具有十多年一线开发和架构经验，拥有丰富的高性能、高并发处理以及大型服务器软件设计架构经验。深谙各种源码。工作中常常和千万级高并发的问题“正面硬钢” ，因此在高并发调优等方面积累了丰富的实战经验。十几年的架构经验，让讲师早已将理论和实践锻造的炉火纯青。如果你想学习他密不外传的工作‘渡劫’经验，讲师等你打Call~'
    },
    labels: ['微服务']
  },
  {
    category: {
      text: '前沿技术',
      code: 4,
    },
    title: '学习Hyperledger Fabric实战联盟链',
    introduction: '兼顾区块链应用层和底层  进击区块链工程师',
    img: 'https://img.mukewang.com/szimg/5b73d7f60001dc1e05400300-360-202.jpg',
    banner: 'https://img1.sycdn.imooc.com/szimg/5b73d7fc0001e07720000560.jpg',
    type: {
      text: '实战',
      code: 1
    },
    hard: {
      text: '高级',
      code: 3,
    },
    price: 266,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: '自游蜗牛',
      avatar: 'https://img.mukewang.com/user/5b6949e20001c6bf10801080-100-100.jpg',
      job: '区块链底层工程师',
      introduction: '现就职于某世界500强区块链团队，从事区块链底层研究以及BAAS平台搭建。精通区块链底层存储、共识等技术，职业方向偏重联盟链体系。'
    },
    labels: ['区块链']
  },
  {
    category: {
      text: '前沿技术',
      code: 4,
    },
    title: '深度学习之目标检测常用算法原理+实践精讲',
    introduction: '从原理（YOLO / Faster RCNN / SSD / 文本检测 / 多任务网络）到场景实战，掌握目标检测核心技术',
    img: 'https://img1.sycdn.imooc.com/szimg/5bfb523c0001290905400300-360-202.jpg',
    banner: 'https://img1.sycdn.imooc.com/szimg/5bfb52480001858920000559.jpg',
    type: {
      text: '实战',
      code: 1
    },
    hard: {
      text: '高级',
      code: 3,
    },
    price: 499,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: '会写代码的好厨师',
      avatar: 'https://img1.sycdn.imooc.com/user/5b8618950001cd9101440146-100-100.jpg',
      job: '资深机器学习工程师',
      introduction: '现就职于某世界500强区块链团队，从事区块链底层研究以及BAAS平台搭建。精通区块链底层存储、共识等技术，职业方向偏重联盟链体系。'
    },
    labels: ['机器学习']
  },
  {
    category: {
      text: '前沿技术',
      code: 4,
    },
    title: '看的见的算法 Zookeeper源码分析',
    introduction: '“分而治之”逐一攻克Zookeeper框架各个组件的源码',
    img: 'https://img.mukewang.com/szimg/5d1ad17f08cd16e800000000-360-202.jpg',
    banner: 'https://img.mukewang.com/szimg/5b4f355a0001852520000520.jpg',
    type: {
      text: '实战',
      code: 1
    },
    hard: {
      text: '中级',
      code: 2,
    },
    price: 388,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: '城南大师兄',
      avatar: 'https://img1.sycdn.imooc.com/user/5cac7e810001fe7705270698-100-100.jpg',
      job: '国内知名公司架构师',
      introduction: '目前主要负责后端架构设计，具有十多年一线开发和架构经验，拥有丰富的高性能、高并发处理以及大型服务器软件设计架构经验。深谙各种源码。工作中常常和千万级高并发的问题“正面硬钢” ，因此在高并发调优等方面积累了丰富的实战经验。十几年的架构经验，让讲师早已将理论和实践锻造的炉火纯青。如果你想学习他密不外传的工作‘渡劫’经验，讲师等你打Call~'
    },
    labels: ['微服务']
  },
  {
    category: {
      text: '前沿技术',
      code: 4,
    },
    title: '学习Hyperledger Fabric实战联盟链',
    introduction: '兼顾区块链应用层和底层  进击区块链工程师',
    img: 'https://img.mukewang.com/szimg/5b73d7f60001dc1e05400300-360-202.jpg',
    banner: 'https://img1.sycdn.imooc.com/szimg/5b73d7fc0001e07720000560.jpg',
    type: {
      text: '实战',
      code: 1
    },
    hard: {
      text: '高级',
      code: 3,
    },
    price: 266,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: '自游蜗牛',
      avatar: 'https://img.mukewang.com/user/5b6949e20001c6bf10801080-100-100.jpg',
      job: '区块链底层工程师',
      introduction: '现就职于某世界500强区块链团队，从事区块链底层研究以及BAAS平台搭建。精通区块链底层存储、共识等技术，职业方向偏重联盟链体系。'
    },
    labels: ['区块链']
  },
  {
    category: {
      text: '前沿技术',
      code: 4,
    },
    title: '深度学习之目标检测常用算法原理+实践精讲',
    introduction: '从原理（YOLO / Faster RCNN / SSD / 文本检测 / 多任务网络）到场景实战，掌握目标检测核心技术',
    img: 'https://img1.sycdn.imooc.com/szimg/5bfb523c0001290905400300-360-202.jpg',
    banner: 'https://img1.sycdn.imooc.com/szimg/5bfb52480001858920000559.jpg',
    type: {
      text: '实战',
      code: 1
    },
    hard: {
      text: '高级',
      code: 3,
    },
    price: 499,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: '会写代码的好厨师',
      avatar: 'https://img1.sycdn.imooc.com/user/5b8618950001cd9101440146-100-100.jpg',
      job: '资深机器学习工程师',
      introduction: '现就职于某世界500强区块链团队，从事区块链底层研究以及BAAS平台搭建。精通区块链底层存储、共识等技术，职业方向偏重联盟链体系。'
    },
    labels: ['机器学习']
  },
  {
    category: {
      text: '云计算&大数据',
      code: 5,
    },
    title: 'SparkSQL极速入门  整合Kudu实现广告业务数据分析',
    introduction: '大数据工程师干货课程 带你从入门到实战掌握SparkSQL',
    img: 'https://img1.sycdn.imooc.com/szimg/5d844ae7089e674906000338-360-202.jpg',
    banner: 'https://img1.sycdn.imooc.com/szimg/5d844af609893ec140000800.jpg',
    type: {
      text: '实战',
      code: 1
    },
    hard: {
      text: '中级',
      code: 2,
    },
    price: 388,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: 'Michael_PK',
      avatar: 'https://img1.sycdn.imooc.com/user/533e4d510001c2ad02000200-100-100.jpg',
      job: '资深大数据架构师',
      introduction: '八年互联网公司一线研发经验，担任大数据架构师。主要从事基于Spark/Flink为核心打造的大数据公有云、私有云数据平台产品的研发。改造过Hadoop、Spark等框架的源码为云平台提供更高的执行性能。集群规模过万，有丰富的大数据项目实战经验以及授课经验(授课数千小时，深受学员好评)。'
    },
    labels: ['大数据']
  },
  {
    category: {
      text: '云计算&大数据',
      code: 5,
    },
    title: 'Spark进阶 大数据离线与实时项目实战',
    introduction: '大数据生态圈中多个框架(Spark/Hbase/Redis/Hadoop)的整合应用及调优',
    img: 'https://img1.sycdn.imooc.com/szimg/59f85ec90001103405400300-360-202.jpg',
    banner: 'https://img1.sycdn.imooc.com/szimg/5d844af609893ec140000800.jpg',
    type: {
      text: '实战',
      code: 1
    },
    hard: {
      text: '中级',
      code: 2,
    },
    price: 399,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: 'Michael_PK',
      avatar: 'https://img1.sycdn.imooc.com/user/533e4d510001c2ad02000200-100-100.jpg',
      job: '资深大数据架构师',
      introduction: '八年互联网公司一线研发经验，担任大数据架构师。主要从事基于Spark/Flink为核心打造的大数据公有云、私有云数据平台产品的研发。改造过Hadoop、Spark等框架的源码为云平台提供更高的执行性能。集群规模过万，有丰富的大数据项目实战经验以及授课经验(授课数千小时，深受学员好评)。'
    },
    labels: ['大数据']
  },
  {
    category: {
      text: '云计算&大数据',
      code: 5,
    },
    title: 'Spark Streaming实时流处理项目实战 ',
    introduction: 'Flume+Kafka+Spark Streaming 构建通用实时流处理平台',
    img: 'https://img1.sycdn.imooc.com/szimg/5c203a4b0001dcf306000338-360-202.jpg',
    banner: 'https://img.mukewang.com/szimg/5c203a520001d14320000560.jpg',
    type: {
      text: '实战',
      code: 1
    },
    hard: {
      text: '中级',
      code: 2,
    },
    price: 288,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: 'Michael_PK',
      avatar: 'https://img1.sycdn.imooc.com/user/533e4d510001c2ad02000200-100-100.jpg',
      job: '资深大数据架构师',
      introduction: '八年互联网公司一线研发经验，担任大数据架构师。主要从事基于Spark/Flink为核心打造的大数据公有云、私有云数据平台产品的研发。改造过Hadoop、Spark等框架的源码为云平台提供更高的执行性能。集群规模过万，有丰富的大数据项目实战经验以及授课经验(授课数千小时，深受学员好评)。'
    },
    labels: ['大数据']
  },
  {
    category: {
      text: '运维&测试',
      code: 6,
    },
    title: '跟着360架构师 学习Shell脚本编程',
    introduction: '30%知识讲解+70%实例操作 掌握Shell脚本编程能力',
    img: 'https://img1.sycdn.imooc.com/szimg/5c46c4a308ad3b3406000338-360-202.jpg',
    banner: 'https://img.mukewang.com/szimg/5c46c4ae099dc71320000560.jpg',
    type: {
      text: '实战',
      code: 1
    },
    hard: {
      text: '中级',
      code: 2,
    },
    price: 366,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: '酷田',
      avatar: 'http://img2.sycdn.imooc.com/5c297bb600013f6d11100834-160-160.jpg',
      job: '全栈工程师',
      introduction: '360企业安全集团资深工程师，曾就职于中国移动、亚信科技 ，等知名大型公司，多年工作经验积累，所传授的知识技能可以让你在实际工作中有的放矢，游刃有余。'
    },
    labels: ['运维']
  },
  {
    category: {
      text: '运维&测试',
      code: 6,
    },
    title: '企业级开源四层负载均衡解决方案-LVS',
    introduction: '轻松应对负载均衡，深刻理解网络系统架构，真正解决工作中的实际问题',
    img: 'https://img1.sycdn.imooc.com/szimg/5b99c15f0001ca0206000338-360-202.jpg',
    banner: 'https://img.mukewang.com/szimg/5b99d1e90001903240001120.jpg',
    type: {
      text: '实战',
      code: 1
    },
    hard: {
      text: '中级',
      code: 2,
    },
    price: 199,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: '酷田',
      avatar: 'http://img2.sycdn.imooc.com/5c297bb600013f6d11100834-160-160.jpg',
      job: '全栈工程师',
      introduction: '360企业安全集团资深工程师，曾就职于中国移动、亚信科技 ，等知名大型公司，多年工作经验积累，所传授的知识技能可以让你在实际工作中有的放矢，游刃有余。'
    },
    labels: ['运维']
  },
  {
    category: {
      text: '运维&测试',
      code: 6,
    },
    title: '跟着360架构师 学习Shell脚本编程',
    introduction: '30%知识讲解+70%实例操作 掌握Shell脚本编程能力',
    img: 'https://img1.sycdn.imooc.com/szimg/5c46c4a308ad3b3406000338-360-202.jpg',
    banner: 'https://img.mukewang.com/szimg/5c46c4ae099dc71320000560.jpg',
    type: {
      text: '实战',
      code: 1
    },
    hard: {
      text: '中级',
      code: 2,
    },
    price: 366,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: '酷田',
      avatar: 'http://img2.sycdn.imooc.com/5c297bb600013f6d11100834-160-160.jpg',
      job: '全栈工程师',
      introduction: '360企业安全集团资深工程师，曾就职于中国移动、亚信科技 ，等知名大型公司，多年工作经验积累，所传授的知识技能可以让你在实际工作中有的放矢，游刃有余。'
    },
    labels: ['运维']
  },
  {
    category: {
      text: '运维&测试',
      code: 6,
    },
    title: '企业级开源四层负载均衡解决方案-LVS',
    introduction: '轻松应对负载均衡，深刻理解网络系统架构，真正解决工作中的实际问题',
    img: 'https://img1.sycdn.imooc.com/szimg/5b99c15f0001ca0206000338-360-202.jpg',
    banner: 'https://img.mukewang.com/szimg/5b99d1e90001903240001120.jpg',
    type: {
      text: '实战',
      code: 1
    },
    hard: {
      text: '中级',
      code: 2,
    },
    price: 199,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: '酷田',
      avatar: 'http://img2.sycdn.imooc.com/5c297bb600013f6d11100834-160-160.jpg',
      job: '全栈工程师',
      introduction: '360企业安全集团资深工程师，曾就职于中国移动、亚信科技 ，等知名大型公司，多年工作经验积累，所传授的知识技能可以让你在实际工作中有的放矢，游刃有余。'
    },
    labels: ['运维']
  },
  {
    category: {
      text: '数据库',
      code: 7,
    },
    title: '零基础入门 全角度解读企业主流数据库MySQL8.0',
    introduction: '掌握SQL优化与慢查询优化，具备独当一面的能力，彰显更多个人价值',
    img: 'https://img.mukewang.com/szimg/5ca5e266085019b306000338-360-202.jpg',
    banner: 'https://img.mukewang.com/szimg/5ca5e26e09568dbc20000400.jpg',
    type: {
      text: '实战',
      code: 1
    },
    hard: {
      text: '入门',
      code: 0,
    },
    price: 266,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: 'sqlercn',
      avatar: 'http://img3.sycdn.imooc.com/5ad7144100017a5e07410741-160-160.jpg',
      job: '数据库工程师',
      introduction: '高级数据库工程师（DBA），从事数据库管理工作多年，曾就职于聚美优品、猫扑、TOM等多家大型互联网公司，进行过千万级的数据处理，对大数据业务、高并发时数据优化积累了大量丰富的经验。'
    },
    labels: ['MySql']
  },
  {
    category: {
      text: '数据库',
      code: 7,
    },
    title: '零基础入门 全角度解读企业主流数据库MySQL8.0',
    introduction: '掌握SQL优化与慢查询优化，具备独当一面的能力，彰显更多个人价值',
    img: 'https://img.mukewang.com/szimg/5ca5e266085019b306000338-360-202.jpg',
    banner: 'https://img.mukewang.com/szimg/5ca5e26e09568dbc20000400.jpg',
    type: {
      text: '实战',
      code: 1
    },
    hard: {
      text: '入门',
      code: 0,
    },
    price: 266,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: 'sqlercn',
      avatar: 'http://img3.sycdn.imooc.com/5ad7144100017a5e07410741-160-160.jpg',
      job: '数据库工程师',
      introduction: '高级数据库工程师（DBA），从事数据库管理工作多年，曾就职于聚美优品、猫扑、TOM等多家大型互联网公司，进行过千万级的数据处理，对大数据业务、高并发时数据优化积累了大量丰富的经验。'
    },
    labels: ['MySql']
  },
  {
    category: {
      text: '数据库',
      code: 7,
    },
    title: '中高级开发晋升利器 MySQL面试指南',
    introduction: '9大类常见问题详解，切实提升数据库应用和管理能力，升职加薪必备佳品！',
    img: 'https://img.mukewang.com/szimg/5bdc3b81000178e812000676-360-202.jpg',
    banner: 'https://img.mukewang.com/szimg/5bdc3b8a0001583240001120.jpg',
    type: {
      text: '实战',
      code: 1
    },
    hard: {
      text: '中级',
      code: 2,
    },
    price: 288,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: 'sqlercn',
      avatar: 'http://img3.sycdn.imooc.com/5ad7144100017a5e07410741-160-160.jpg',
      job: '数据库工程师',
      introduction: '高级数据库工程师（DBA），从事数据库管理工作多年，曾就职于聚美优品、猫扑、TOM等多家大型互联网公司，进行过千万级的数据处理，对大数据业务、高并发时数据优化积累了大量丰富的经验。'
    },
    labels: ['MySql']
  },
  {
    category: {
      text: '数据库',
      code: 7,
    },
    title: '零基础入门 全角度解读企业主流数据库MySQL8.0',
    introduction: '掌握SQL优化与慢查询优化，具备独当一面的能力，彰显更多个人价值',
    img: 'https://img.mukewang.com/szimg/5ca5e266085019b306000338-360-202.jpg',
    banner: 'https://img.mukewang.com/szimg/5ca5e26e09568dbc20000400.jpg',
    type: {
      text: '实战',
      code: 1
    },
    hard: {
      text: '入门',
      code: 0,
    },
    price: 266,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: 'sqlercn',
      avatar: 'http://img3.sycdn.imooc.com/5ad7144100017a5e07410741-160-160.jpg',
      job: '数据库工程师',
      introduction: '高级数据库工程师（DBA），从事数据库管理工作多年，曾就职于聚美优品、猫扑、TOM等多家大型互联网公司，进行过千万级的数据处理，对大数据业务、高并发时数据优化积累了大量丰富的经验。'
    },
    labels: ['MySql']
  },
  {
    category: {
      text: '数据库',
      code: 7,
    },
    title: '中高级开发晋升利器 MySQL面试指南',
    introduction: '9大类常见问题详解，切实提升数据库应用和管理能力，升职加薪必备佳品！',
    img: 'https://img.mukewang.com/szimg/5bdc3b81000178e812000676-360-202.jpg',
    banner: 'https://img.mukewang.com/szimg/5bdc3b8a0001583240001120.jpg',
    type: {
      text: '实战',
      code: 1
    },
    hard: {
      text: '中级',
      code: 2,
    },
    price: 288,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: 'sqlercn',
      avatar: 'http://img3.sycdn.imooc.com/5ad7144100017a5e07410741-160-160.jpg',
      job: '数据库工程师',
      introduction: '高级数据库工程师（DBA），从事数据库管理工作多年，曾就职于聚美优品、猫扑、TOM等多家大型互联网公司，进行过千万级的数据处理，对大数据业务、高并发时数据优化积累了大量丰富的经验。'
    },
    labels: ['MySql']
  },
  {
    category: {
      text: '数据库',
      code: 7,
    },
    title: '玩转MongoDB4.0(最新版) 从入门到实践',
    introduction: '30%理论+70%实战，让你用实操去检验真理,一门让你事半功倍的入门进阶课',
    img: 'https://img.mukewang.com/szimg/5c90dc020849c59a06000338-360-202.jpg',
    banner: 'https://img.mukewang.com/szimg/5b4f355a0001852520000520.jpg',
    type: {
      text: '实战',
      code: 1
    },
    hard: {
      text: '入门',
      code: 0,
    },
    price: 288,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: 'Stannum',
      avatar: 'https://img1.sycdn.imooc.com/user/5b558fd00001ca6207410741-100-100.jpg',
      job: 'Java/C++敏捷开发专家',
      introduction: '目前在财经界俗称的“大摩”，一家成立于美国纽约的国际金融服务公司-摩根士丹利担任软件工程师和敏捷开发专家。 主攻Event Sourcing架构模式的应用。是一个“只有男同事,没有女同事”的程序媛一枚,先后就职于多家投资银行，负责开发“每一个bug都很贵”的内部交易系统,主导了股票交易执行系统和衍生品交易风险控制系统。'
    },
    labels: ['MongoDB']
  },
  {
    category: {
      text: 'UI设计&多媒体',
      code: 8,
    },
    title: '高薪设计师必修课 AE移动UI动效设计从入门到实战',
    introduction: '20多个商业实用案例，轻松Get√到AE动效核心技术，让你的作品脱颖而出！',
    img: 'https://img.mukewang.com/szimg/5aa9d2c1000104d510800600-360-202.jpg',
    banner: 'https://img.mukewang.com/szimg/5b51c7100001351220000560.jpg',
    type: {
      text: '实战',
      code: 1
    },
    hard: {
      text: '中级',
      code: 2,
    },
    price: 199,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: '墨染ART',
      avatar: 'http://img4.sycdn.imooc.com/5b1c1e530001c06c07410719-160-160.jpg',
      job: 'UI设计师',
      introduction: '站酷推荐设计师，UI中国推荐设计师。热门UI动效实战系列教程作者，对UI设计、动效设计、多终端响应式设计有深入的研究和经验。'
    },
    labels: ['设计基础']
  },
  {
    category: {
      text: 'UI设计&多媒体',
      code: 8,
    },
    title: '移动端App UI设计入门与实战',
    introduction: '涉及多项实用设计技能训练，成为一名具有“产品思维”的设计师！',
    img: 'https://img.mukewang.com/szimg/5a123d7e00011fa705400300-360-202.jpg',
    banner: 'https://img.mukewang.com/szimg/5b51c7100001351220000560.jpg',
    type: {
      text: '实战',
      code: 1
    },
    hard: {
      text: '中级',
      code: 2,
    },
    price: 199,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: '墨染ART',
      avatar: 'http://img4.sycdn.imooc.com/5b1c1e530001c06c07410719-160-160.jpg',
      job: 'UI设计师',
      introduction: '站酷推荐设计师，UI中国推荐设计师。热门UI动效实战系列教程作者，对UI设计、动效设计、多终端响应式设计有深入的研究和经验。'
    },
    labels: ['设计基础', 'APPUI设计']
  },
  {
    category: {
      text: 'UI设计&多媒体',
      code: 8,
    },
    title: '高薪设计师必修课 AE移动UI动效设计从入门到实战',
    introduction: '20多个商业实用案例，轻松Get√到AE动效核心技术，让你的作品脱颖而出！',
    img: 'https://img.mukewang.com/szimg/5aa9d2c1000104d510800600-360-202.jpg',
    banner: 'https://img.mukewang.com/szimg/5b51c7100001351220000560.jpg',
    type: {
      text: '实战',
      code: 1
    },
    hard: {
      text: '中级',
      code: 2,
    },
    price: 199,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: '墨染ART',
      avatar: 'http://img4.sycdn.imooc.com/5b1c1e530001c06c07410719-160-160.jpg',
      job: 'UI设计师',
      introduction: '站酷推荐设计师，UI中国推荐设计师。热门UI动效实战系列教程作者，对UI设计、动效设计、多终端响应式设计有深入的研究和经验。'
    },
    labels: ['设计基础']
  },
  {
    category: {
      text: 'UI设计&多媒体',
      code: 8,
    },
    title: '移动端App UI设计入门与实战',
    introduction: '涉及多项实用设计技能训练，成为一名具有“产品思维”的设计师！',
    img: 'https://img.mukewang.com/szimg/5a123d7e00011fa705400300-360-202.jpg',
    banner: 'https://img.mukewang.com/szimg/5b51c7100001351220000560.jpg',
    type: {
      text: '实战',
      code: 1
    },
    hard: {
      text: '中级',
      code: 2,
    },
    price: 199,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: '墨染ART',
      avatar: 'http://img4.sycdn.imooc.com/5b1c1e530001c06c07410719-160-160.jpg',
      job: 'UI设计师',
      introduction: '站酷推荐设计师，UI中国推荐设计师。热门UI动效实战系列教程作者，对UI设计、动效设计、多终端响应式设计有深入的研究和经验。'
    },
    labels: ['设计基础', 'APPUI设计']
  },
  {
    category: {
      text: '前端开发',
      code: 0,
    },
    title: '初识HTML(5)+CSS(3)-2020升级版',
    introduction: 'HTML(5)+CSS(3)基础教程8小时带领大家步步深入学习标签用法和意义',
    img: 'https://img4.mukewang.com/529dc3380001379906000338-240-135.jpg',
    banner: '',
    type: {
      text: '免费',
      code: 0
    },
    hard: {
      text: '入门',
      code: 0,
    },
    price: 0,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: '丶五月的夏天',
      avatar: 'https://img2.mukewang.com/54584f6d0001759002200220-80-80.jpg',
      job: 'Web前端工程师',
      introduction: ''
    },
    labels: ['HTML/CSS']
  },
  {
    category: {
      text: '前端开发',
      code: 0,
    },
    title: 'JavaScript入门篇',
    introduction: 'JavaScript做为一名Web工程师的必备技术，本教程让您快速入门',
    img: 'https://img2.mukewang.com/53e1d0470001ad1e06000338-240-135.jpg',
    banner: '',
    type: {
      text: '免费',
      code: 0
    },
    hard: {
      text: '入门',
      code: 0,
    },
    price: 0,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: '慕课官方号',
      avatar: 'https://img1.mukewang.com/5b88f1f50001688401500150-80-80.jpg',
      job: '页面重构设计',
      introduction: ''
    },
    labels: ['JavaScript']
  },
  {
    category: {
      text: '前端开发',
      code: 0,
    },
    title: 'JavaScript进阶篇',
    introduction: '本课程从如何插入JS代码开始，带您进入网页动态交互世界',
    img: 'https://img2.mukewang.com/574678bd00010a7206000338-240-135.jpg',
    banner: '',
    type: {
      text: '免费',
      code: 0
    },
    hard: {
      text: '入门',
      code: 0,
    },
    price: 0,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: '慕课官方号',
      avatar: 'https://img1.mukewang.com/5b88f1f50001688401500150-80-80.jpg',
      job: '页面重构设计',
      introduction: ''
    },
    labels: ['JavaScript']
  },
  {
    category: {
      text: '前端开发',
      code: 0,
    },
    title: 'vue2.5入门',
    introduction: '快速理解Vue编程理念上手Vue2.0开发。',
    img: 'https://img2.mukewang.com/5ad5cc490001e53006000338-240-135.jpg',
    banner: '',
    type: {
      text: '免费',
      code: 0
    },
    hard: {
      text: '中级',
      code: 2,
    },
    price: 0,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: 'Dell',
      avatar: 'https://img4.mukewang.com/5abe468b0001664107390741-80-80.jpg',
      job: 'Web前端工程师',
      introduction: ''
    },
    labels: ['Vue.js']
  },
  {
    category: {
      text: '前端开发',
      code: 0,
    },
    title: 'Vue+Webpack打造todo应用',
    introduction: '用前端最热门框架Vue+最火打包工具Webpack打造todo应用',
    img: 'https://img1.mukewang.com/5a56fdb400017d0306000338-240-135.jpg',
    banner: '',
    type: {
      text: '免费',
      code: 0
    },
    hard: {
      text: '高级',
      code: 3,
    },
    price: 0,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: 'Jokcy',
      avatar: 'https://img1.sycdn.imooc.com/5a697c950001262b05790578-80-80.jpg',
      job: 'Web前端工程师',
      introduction: ''
    },
    labels: ['Vue.js']
  },
  {
    category: {
      text: '前端开发',
      code: 0,
    },
    title: 'Vue+node.js调试入门',
    introduction: '理论实践相结合学习使用 Inspector 调试 Node.js。',
    img: 'https://img3.sycdn.imooc.com/5c3eaa0a08d7052706000338-240-135.jpg',
    banner: '',
    type: {
      text: '免费',
      code: 0
    },
    hard: {
      text: '入门',
      code: 0,
    },
    price: 0,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: 'lewis',
      avatar: 'https://img.mukewang.com/5c3ea1f10001b55908070807-80-80.jpg',
      job: 'Web前端工程师',
      introduction: ''
    },
    labels: ['Node.js']
  },
  {
    category: {
      text: '前端开发',
      code: 0,
    },
    title: 'Nodejs全栈入门',
    introduction: '基于node+mysql+react全栈实战',
    img: 'https://img3.sycdn.imooc.com/5dd7561309f8ae4806000338-240-135.png',
    banner: '',
    type: {
      text: '免费',
      code: 0
    },
    hard: {
      text: '中级',
      code: 2,
    },
    price: 0,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: '一缕孤烟',
      avatar: 'https://img4.mukewang.com/54a2bf390001593c01000100-80-80.jpg',
      job: 'Web前端工程师',
      introduction: ''
    },
    labels: ['Node.js']
  },
  {
    category: {
      text: '后端开发',
      code: 1,
    },
    title: '使用Prometheus实践基于Spring Boot监控告警体系',
    introduction: '基于Spring Boot2.X使用Prometheus实现监控大盘及微服务告警功能。',
    img: 'https://img2.mukewang.com/5e82b5b8099dc26405400300-240-135.png',
    banner: '',
    type: {
      text: '免费',
      code: 0
    },
    hard: {
      text: '中级',
      code: 2,
    },
    price: 0,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: '龙猪GG',
      avatar: 'https://img1.mukewang.com/5b8cd6cb000114e702000112-80-80.jpg',
      job: '架构师',
      introduction: ''
    },
    labels: ['Java']
  },
  {
    category: {
      text: '后端开发',
      code: 1,
    },
    title: '二进制与Java中的基本数据类型',
    introduction: '从认识二进制开始，逐步理解Java是如何存储和处理数据的。',
    img: 'https://img.mukewang.com/5e646d5708f882d512000676-240-135.jpg',
    banner: '',
    type: {
      text: '免费',
      code: 0
    },
    hard: {
      text: '入门',
      code: 0,
    },
    price: 0,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: '舞马',
      avatar: 'https://img.mukewang.com/5e3c0b840001796401500124-80-80.jpg',
      job: '软件工程师',
      introduction: ''
    },
    labels: ['Java']
  },
  {
    category: {
      text: '后端开发',
      code: 1,
    },
    title: '自己动手实现RPC框架',
    introduction: '自己动手实现一个完整的RPC框架，So Easy！',
    img: 'https://img.mukewang.com/5e37d120082e7c7c06000338-240-135.jpg',
    banner: '',
    type: {
      text: '免费',
      code: 0
    },
    hard: {
      text: '中级',
      code: 2,
    },
    price: 0,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: '司马极客',
      avatar: 'https://img4.mukewang.com/5b8cdb710001d95c02000200-80-80.jpg',
      job: '软件工程师',
      introduction: ''
    },
    labels: ['Java']
  },
  {
    category: {
      text: '后端开发',
      code: 1,
    },
    title: 'MUI+个推实现安卓与ios移动端推送',
    introduction: '结合慕信轻聊Netty实战，整合个推到前端与后端，实现安卓与ios移动端推送',
    img: 'https://img4.mukewang.com/5bebce6b0001bd6106000336-240-135.jpg',
    banner: '',
    type: {
      text: '免费',
      code: 0
    },
    hard: {
      text: '初级',
      code: 1,
    },
    price: 0,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: '风间影月',
      avatar: 'https://img4.mukewang.com/5a0c5df20001a1cb05800580-80-80.jpg',
      job: '全栈工程师',
      introduction: ''
    },
    labels: ['Java', 'SpringBoot']
  },
  {
    category: {
      text: '后端开发',
      code: 1,
    },
    title: 'Springboot 微信小程序 – 微信登录功能实战',
    introduction: '简单实现在小程序中对使用微信登录的方式来登录小程序应用',
    img: 'https://img2.mukewang.com/5bbf2def000118ab06000336-240-135.jpg',
    banner: '',
    type: {
      text: '免费',
      code: 0
    },
    hard: {
      text: '初级',
      code: 1,
    },
    price: 0,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: '风间影月',
      avatar: 'https://img4.mukewang.com/5a0c5df20001a1cb05800580-80-80.jpg',
      job: '全栈工程师',
      introduction: ''
    },
    labels: ['Java', 'SpringBoot']
  },
  {
    category: {
      text: '后端开发',
      code: 1,
    },
    title: 'Numpy基础入门',
    introduction: '从基本数组入手全面讲解Numpy中的核心知识',
    img: 'https://img.mukewang.com/5e9683f808f03af912000676-240-135.jpg',
    banner: '',
    type: {
      text: '免费',
      code: 0
    },
    hard: {
      text: '入门',
      code: 0,
    },
    price: 0,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: '夏正东',
      avatar: 'https://img2.mukewang.com/5da6841d0001f79409600960-80-80.jpg',
      job: 'Python工程师',
      introduction: ''
    },
    labels: ['Python']
  },
  {
    category: {
      text: '后端开发',
      code: 1,
    },
    title: 'Python数据预处理（四）- 特征降维与可视化',
    introduction: '教会你使用Python数据预处理',
    img: 'https://img2.mukewang.com/5ce4b199083e469306000338-240-135.jpg',
    banner: '',
    type: {
      text: '免费',
      code: 0
    },
    hard: {
      text: '初级',
      code: 1,
    },
    price: 0,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: '伏草惟存',
      avatar: 'https://img3.mukewang.com/545863cd0001b72a02200220-80-80.jpg',
      job: '算法工程师',
      introduction: ''
    },
    labels: ['Python', '自然语言处理']
  },
  {
    category: {
      text: '移动端开发',
      code: 2,
    },
    title: 'MultiDex从基础原理到实践优化',
    introduction: 'Android进阶学习必备，带你从基础用法到实践优化一站式掌握MultiDex。',
    img: 'https://img.mukewang.com/5e6098b409a0151406000338-240-135.png',
    banner: '',
    type: {
      text: '免费',
      code: 0
    },
    hard: {
      text: '中级',
      code: 2,
    },
    price: 0,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: '凡諾',
      avatar: 'https://img.mukewang.com/5e57662a00012deb11111109-80-80.jpg',
      job: '移动开发工程师',
      introduction: ''
    },
    labels: ['Android']
  },
  {
    category: {
      text: '移动端开发',
      code: 2,
    },
    title: 'Android网络安全之加解密',
    introduction: '在不安全的网络环境中，如何安全的传输敏感数据',
    img: 'https://img4.mukewang.com/5dfc2e870902f80d06000338-240-135.png',
    banner: '',
    type: {
      text: '免费',
      code: 0
    },
    hard: {
      text: '中级',
      code: 2,
    },
    price: 0,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: '凡諾',
      avatar: 'https://img.mukewang.com/5e57662a00012deb11111109-80-80.jpg',
      job: '移动开发工程师',
      introduction: ''
    },
    labels: ['Android']
  },
  {
    category: {
      text: '移动端开发',
      code: 2,
    },
    title: 'Android CMake以及NDK实践基础',
    introduction: 'Android底层开发入门必备，CMake动态库编译和使用，NDK的各种开发技巧。 ',
    img: 'https://img1.mukewang.com/5de8a5740989152106000338-240-135.png',
    banner: '',
    type: {
      text: '免费',
      code: 0
    },
    hard: {
      text: '中级',
      code: 2,
    },
    price: 0,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: 'glumes',
      avatar: 'https://img3.mukewang.com/5462e44b0001421501800180-80-80.jpg',
      job: '移动开发工程师',
      introduction: ''
    },
    labels: ['Android']
  },
  {
    category: {
      text: '计算机基础',
      code: 3,
    },
    title: 'Android 机器学习中的统计学基础',
    introduction: '机器学习中的常用统计学知识点 ',
    img: 'https://img4.mukewang.com/5b470bfe0001cdbf06000338-240-135.jpg',
    banner: '',
    type: {
      text: '免费',
      code: 0
    },
    hard: {
      text: '初级',
      code: 1,
    },
    price: 0,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: '北极小琪',
      avatar: 'https://img4.mukewang.com/5bcd983c0001264203500350-80-80.jpg',
      job: '算法工程师',
      introduction: ''
    },
    labels: ['计算机网络', '算法与数据结构']
  },
  {
    category: {
      text: '计算机基础',
      code: 3,
    },
    title: 'Javascript实现二叉树算法',
    introduction: '感受JS与数据结构的魅力。 ',
    img: 'https://img3.mukewang.com/59ae0e2a0001307706000338-240-135.jpg',
    banner: '',
    type: {
      text: '免费',
      code: 0
    },
    hard: {
      text: '中级',
      code: 2,
    },
    price: 0,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: 'coding迪斯尼',
      avatar: 'https://img.mukewang.com/57a333b400010f6006400478-80-80.jpg',
      job: '全栈工程师',
      introduction: ''
    },
    labels: ['JavaScript', '算法与数据结构']
  }
]"""
    txt = demjson.decode(txt)
    for index, one in enumerate(txt):
        teacher = one["teacher"]
        try:
            item = Teacher(**teacher)
            item.save()
        except django.db.utils.IntegrityError:
            pass


def import_lesson():
    txt = """[
  {
    category: {
      text: '前端开发',
      code: 0,
    },
    title: 'TypeScript  系统入门到项目实战 趁早学习提高职场竞争力',
    introduction: 'Dell老师专为TypeScript小白打造的，全栈式教学TS入门课程',
    img: 'https://img.mukewang.com/szimg/5e1d990f0885d97306000338-360-202.jpg',
    banner: 'https://img1.sycdn.imooc.com/szimg/5e1d991809c5318e40000800.jpg',
    type: {
      text: '实战',
      code: 1
    },
    hard: {
      text: '中级',
      code: 2,
    },
    price: 266,
    isDiscount: true,
    discountPrice: 216,
    teacher: {
      name: 'Dell',
      avatar: 'https://img1.sycdn.imooc.com/user/5abe468b0001664107390741-100-100.jpg',
      job: 'Web前端工程师',
      introduction: 'BAT资深前端工程师，负责数据平台技术研发。曾任去哪儿网高级前端工程师，主导去哪儿网内部前端监控系统设计，负责去哪儿网门票用户端的前端设计开发。曾任国内知名培训机构高级前端讲师，负责React，Angular，Vue，Hybrid，RN的课程讲授，具备丰富前端授课经验。对优雅编程及工程化有深度思考及见解，教会你写代码，同时帮助你把代码写的更漂亮！'
    },
    labels: ['TypeScript']
  },
  {
    category: {
      text: '前端开发',
      code: 0,
    },
    title: '前端要学的测试课 从Jest入门到 TDD/BDD双实战',
    introduction: '以Vue/React项目进行自动化测试实战，让你技术水平和架构思维双提升',
    img: 'https://img.mukewang.com/szimg/5d36a6000837a91d06000338-360-202.jpg',
    banner: 'https://img.mukewang.com/szimg/5d36a60709f5666320000400.jpg',
    type: {
      text: '实战',
      code: 1
    },
    hard: {
      text: '中级',
      code: 2,
    },
    price: 299,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: 'Dell',
      avatar: 'https://img1.sycdn.imooc.com/user/5abe468b0001664107390741-100-100.jpg',
      job: 'Web前端工程师',
      introduction: 'BAT资深前端工程师，负责数据平台技术研发。曾任去哪儿网高级前端工程师，主导去哪儿网内部前端监控系统设计，负责去哪儿网门票用户端的前端设计开发。曾任国内知名培训机构高级前端讲师，负责React，Angular，Vue，Hybrid，RN的课程讲授，具备丰富前端授课经验。对优雅编程及工程化有深度思考及见解，教会你写代码，同时帮助你把代码写的更漂亮！'
    },
    labels: ['Vue.js', 'React.js']
  },
  {
    category: {
      text: '前端开发',
      code: 0,
    },
    title: '从基础到实战 手把手带你掌握新版Webpack4.0',
    introduction: '知识点+项目实例+原理讲解 全方位解析Webpack4最新版本',
    img: 'https://img.mukewang.com/szimg/5c6bdb3e08e4674a06000338-360-202.jpg',
    banner: 'https://img.mukewang.com/szimg/5c6bdb4f09c2401020000400.jpg',
    type: {
      text: '实战',
      code: 1
    },
    hard: {
      text: '中级',
      code: 2,
    },
    price: 299,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: 'Dell',
      avatar: 'https://img1.sycdn.imooc.com/user/5abe468b0001664107390741-100-100.jpg',
      job: 'Web前端工程师',
      introduction: 'BAT资深前端工程师，负责数据平台技术研发。曾任去哪儿网高级前端工程师，主导去哪儿网内部前端监控系统设计，负责去哪儿网门票用户端的前端设计开发。曾任国内知名培训机构高级前端讲师，负责React，Angular，Vue，Hybrid，RN的课程讲授，具备丰富前端授课经验。对优雅编程及工程化有深度思考及见解，教会你写代码，同时帮助你把代码写的更漂亮！'
    },
    labels: ['Vue.js', 'React.js']
  },
  {
    category: {
      text: '前端开发',
      code: 0,
    },
    title: 'React服务器渲染原理解析与实践',
    introduction: '从零开始，带你搭建属于自己的React SSR框架，从根本上解决客户端渲染问题 。',
    img: 'https://img.mukewang.com/szimg/5ba07190000135b505400300-360-202.jpg',
    banner: 'https://img.mukewang.com/szimg/5c6bdb4f09c2401020000400.jpg',
    type: {
      text: '实战',
      code: 1
    },
    hard: {
      text: '中级',
      code: 2,
    },
    price: 299,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: 'Dell',
      avatar: 'https://img1.sycdn.imooc.com/user/5abe468b0001664107390741-100-100.jpg',
      job: 'Web前端工程师',
      introduction: 'BAT资深前端工程师，负责数据平台技术研发。曾任去哪儿网高级前端工程师，主导去哪儿网内部前端监控系统设计，负责去哪儿网门票用户端的前端设计开发。曾任国内知名培训机构高级前端讲师，负责React，Angular，Vue，Hybrid，RN的课程讲授，具备丰富前端授课经验。对优雅编程及工程化有深度思考及见解，教会你写代码，同时帮助你把代码写的更漂亮！'
    },
    labels: ['React.js']
  },
  {
    category: {
      text: '前端开发',
      code: 0,
    },
    title: 'React开发简书项目 从零基础入门到实战 ',
    introduction: '主流新技术 React-redux，React-router4，贯穿基础语法及项目实战。',
    img: 'https://img.mukewang.com/szimg/5b3082da0001d7e905400300-360-202.jpg',
    banner: 'https://img.mukewang.com/szimg/5b508ba90001116220000560.jpg',
    type: {
      text: '实战',
      code: 1
    },
    hard: {
      text: '中级',
      code: 2,
    },
    price: 299,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: 'Dell',
      avatar: 'https://img1.sycdn.imooc.com/user/5abe468b0001664107390741-100-100.jpg',
      job: 'Web前端工程师',
      introduction: 'BAT资深前端工程师，负责数据平台技术研发。曾任去哪儿网高级前端工程师，主导去哪儿网内部前端监控系统设计，负责去哪儿网门票用户端的前端设计开发。曾任国内知名培训机构高级前端讲师，负责React，Angular，Vue，Hybrid，RN的课程讲授，具备丰富前端授课经验。对优雅编程及工程化有深度思考及见解，教会你写代码，同时帮助你把代码写的更漂亮！'
    },
    labels: ['React.js']
  },
  {
    category: {
      text: '前端开发',
      code: 0,
    },
    title: '经典再升级-新版Vue2.6开发去哪儿网App 从零基础入门到实战项目',
    introduction: '基于Vue最新版本，从基础语法到完整项目，一课掌握Vue基础知识点',
    img: 'https://img.mukewang.com/szimg/5b3082da0001d7e905400300-360-202.jpg',
    banner: 'https://img.mukewang.com/szimg/5b50858100011b9220000560.jpg',
    type: {
      text: '实战',
      code: 1
    },
    hard: {
      text: '中级',
      code: 2,
    },
    price: 266,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: 'Dell',
      avatar: 'https://img1.sycdn.imooc.com/user/5abe468b0001664107390741-100-100.jpg',
      job: 'Web前端工程师',
      introduction: 'BAT资深前端工程师，负责数据平台技术研发。曾任去哪儿网高级前端工程师，主导去哪儿网内部前端监控系统设计，负责去哪儿网门票用户端的前端设计开发。曾任国内知名培训机构高级前端讲师，负责React，Angular，Vue，Hybrid，RN的课程讲授，具备丰富前端授课经验。对优雅编程及工程化有深度思考及见解，教会你写代码，同时帮助你把代码写的更漂亮！'
    },
    labels: ['Vue.js']
  },
  {
    category: {
      text: '前端开发',
      code: 0,
    },
    title: '下一代前端开发语言 TypeScript从零重构axios',
    introduction: '掌握TS，学习vue3.0源码必备基础！课程从零开始重构功能完整的JS库，是学习造轮子的不二之选！',
    img: 'https://img.mukewang.com/szimg/5cbf00c608f52a3b06000338-360-202.jpg',
    banner: 'https://img.mukewang.com/szimg/5cbf00cb092626c820000400.jpg',
    type: {
      text: '实战',
      code: 1
    },
    hard: {
      text: '中级',
      code: 2,
    },
    price: 388,
    isDiscount: true,
    discountPrice: 348,
    teacher: {
      name: 'ustbhuangyi',
      avatar: 'https://img.mukewang.com/user/577baef700019c4501400140-100-100.jpg',
      job: 'Web前端工程师',
      introduction: '曾任职百度、滴滴，现担任Zoom前端架构师，推进前后端分离架构方案，同时负责 Zoom 自研组件库。公众号《老黄的前端私房菜》，《Vue.js 技术揭秘》独立作者，《Vue.js 权威指南》主要作者，开源项目 better-scroll 作者。曾主导滴滴开源项目 cube-ui，建立团队技术博客。'
    },
    labels: ['TypeScript']
  },
  {
    category: {
      text: '前端开发',
      code: 0,
    },
    title: 'Vue.js2.5+cube-ui重构饿了么App（经典再升级）',
    introduction: '掌握Vue1.0到2.0再到2.5最全版本应用与迭代，打造极致流畅的WebApp',
    img: 'https://img.mukewang.com/szimg/5becd5ad0001b89306000338-360-202.jpg',
    banner: 'https://img1.sycdn.imooc.com/szimg/5becd5bc0001d45120000560.jpg',
    type: {
      text: '实战',
      code: 1
    },
    hard: {
      text: '中级',
      code: 2,
    },
    price: 198,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: 'ustbhuangyi',
      avatar: 'https://img.mukewang.com/user/577baef700019c4501400140-100-100.jpg',
      job: 'Web前端工程师',
      introduction: '曾任职百度、滴滴，现担任Zoom前端架构师，推进前后端分离架构方案，同时负责 Zoom 自研组件库。公众号《老黄的前端私房菜》，《Vue.js 技术揭秘》独立作者，《Vue.js 权威指南》主要作者，开源项目 better-scroll 作者。曾主导滴滴开源项目 cube-ui，建立团队技术博客。'
    },
    labels: ['Vue.js']
  },
  {
    category: {
      text: '前端开发',
      code: 0,
    },
    title: 'Vue.js源码全方位深入解析 （含Vue3.0源码分析）',
    introduction: '全方位讲解 Vue.js 源码，学精学透 Vue 原理实现，进阶高级工程师',
    img: 'https://img.mukewang.com/szimg/5b17bad10001535305400300-360-202.jpg',
    banner: 'https://img1.sycdn.imooc.com/szimg/5b508b4200014f8a20000560.jpg',
    type: {
      text: '实战',
      code: 1
    },
    hard: {
      text: '高级',
      code: 3,
    },
    price: 488,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: 'ustbhuangyi',
      avatar: 'https://img.mukewang.com/user/577baef700019c4501400140-100-100.jpg',
      job: 'Web前端工程师',
      introduction: '曾任职百度、滴滴，现担任Zoom前端架构师，推进前后端分离架构方案，同时负责 Zoom 自研组件库。公众号《老黄的前端私房菜》，《Vue.js 技术揭秘》独立作者，《Vue.js 权威指南》主要作者，开源项目 better-scroll 作者。曾主导滴滴开源项目 cube-ui，建立团队技术博客。'
    },
    labels: ['Vue.js']
  },
  {
    category: {
      text: '后端开发',
      code: 1,
    },
    title: 'Python Flask高级编程之RESTFul API前后端分离精讲',
    introduction: 'RESTFul+权限管理+token令牌+扩展flask=提升编程思维',
    img: 'https://img.mukewang.com/szimg/5b061fe30001db4505400300-360-202.jpg',
    banner: 'https://img1.sycdn.imooc.com/szimg/5be39cb6000127a520000559.jpg',
    type: {
      text: '实战',
      code: 1
    },
    hard: {
      text: '中级',
      code: 2,
    },
    price: 148,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: '7七月',
      avatar: 'https://img.mukewang.com/user/54584e2c00010a2c02200220-100-100.jpg',
      job: '全栈工程师',
      introduction: '十年研发及团队管理经验，对程序员面临的各种问题深有体会；精通Python、Java、Node.js、JavaScript等语言，对Web的基础研发、高并发处理与分布式有非常深入的理解。课程讲解深入浅出，极为擅长培养学生的编程思维。'
    },
    labels: ['Python']
  },
  {
    category: {
      text: '后端开发',
      code: 1,
    },
    title: 'Python Flask高级编程之从0到1开发《鱼书》精品项目',
    introduction: '7月老师深入浅出剖析Flask核心机制，和你一起探讨Python高级编程',
    img: 'https://img.mukewang.com/szimg/5ab84f650001f0b005400300-360-202.jpg',
    banner: 'https://img.mukewang.com/szimg/5b51c78300015e0220000560.jpg',
    type: {
      text: '实战',
      code: 1
    },
    hard: {
      text: '中级',
      code: 2,
    },
    price: 399,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: '7七月',
      avatar: 'https://img.mukewang.com/user/54584e2c00010a2c02200220-100-100.jpg',
      job: '全栈工程师',
      introduction: '十年研发及团队管理经验，对程序员面临的各种问题深有体会；精通Python、Java、Node.js、JavaScript等语言，对Web的基础研发、高并发处理与分布式有非常深入的理解。课程讲解深入浅出，极为擅长培养学生的编程思维。'
    },
    labels: ['Python']
  },
  {
    category: {
      text: '后端开发',
      code: 1,
    },
    title: '全面系统Python3.8入门+进阶  (程序员必备第二语言)',
    introduction: '语法精讲/配套练习+思考题/原生爬虫实战',
    img: 'https://img.mukewang.com/szimg/59b8a486000107fb05400300-360-202.jpg',
    banner: 'https://img.mukewang.com/szimg/5b51c78300015e0220000560.jpg',
    type: {
      text: '实战',
      code: 1
    },
    hard: {
      text: '初级',
      code: 1,
    },
    price: 366,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: '7七月',
      avatar: 'https://img.mukewang.com/user/54584e2c00010a2c02200220-100-100.jpg',
      job: '全栈工程师',
      introduction: '十年研发及团队管理经验，对程序员面临的各种问题深有体会；精通Python、Java、Node.js、JavaScript等语言，对Web的基础研发、高并发处理与分布式有非常深入的理解。课程讲解深入浅出，极为擅长培养学生的编程思维。'
    },
    labels: ['Python']
  },
  {
    category: {
      text: '后端开发',
      code: 1,
    },
    title: 'Spring Cloud微服务实战 打造企业级优惠券系统',
    introduction: '面试、毕设、升职优选：从0开始，Java主流框架，构建电商都在用的优惠券系统',
    img: 'https://img.mukewang.com/szimg/5d5f7da0093eb24212000676-360-202.jpg',
    banner: 'https://img.mukewang.com/szimg/5d5f7da709b71ad320000400.jpg',
    type: {
      text: '实战',
      code: 1
    },
    hard: {
      text: '中级',
      code: 2,
    },
    price: 299,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: '勤一',
      avatar: 'https://img.mukewang.com/user/5c36c432000158e609600960-100-100.jpg',
      job: 'Java开发工程师',
      introduction: '高级技术专家，曾就职于微软、腾讯，目前就职于知名电商互联网公司，拥有丰富的大型项目开发经验。多年IT从业经验，一线软件设计、研发，熟悉C、CPP、Java等开发语言，对Web框架、数据存储、架构设计等有深入的理解和实践。'
    },
    labels: ['Java', 'Spring Cloud']
  },
  {
    category: {
      text: '后端开发',
      code: 1,
    },
    title: '基于Spring Cloud微服务架构  广告系统设计与实现（2020新版）',
    introduction: '掌握互联网广告系统，学会为公司创收，你自然就是最抢手的人才。可用于毕设。',
    img: 'https://img.mukewang.com/szimg/5d2e7ada09946f6f12000676-360-202.jpg',
    banner: 'https://img.mukewang.com/szimg/5d2e7ae20942ca4d20000400.jpg',
    type: {
      text: '实战',
      code: 1
    },
    hard: {
      text: '中级',
      code: 2,
    },
    price: 299,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: '勤一',
      avatar: 'https://img.mukewang.com/user/5c36c432000158e609600960-100-100.jpg',
      job: 'Java开发工程师',
      introduction: '高级技术专家，曾就职于微软、腾讯，目前就职于知名电商互联网公司，拥有丰富的大型项目开发经验。多年IT从业经验，一线软件设计、研发，熟悉C、CPP、Java等开发语言，对Web框架、数据存储、架构设计等有深入的理解和实践。'
    },
    labels: ['Java', 'Spring Cloud']
  },
  {
    category: {
      text: '后端开发',
      code: 1,
    },
    title: 'Java分布式后台开发  Spring Boot+Kafka+HBase',
    introduction: '从零到一完整搭建企业级架构的通用卡包工程，让你开发技迈向到百度T4+ 。',
    img: 'https://img1.sycdn.imooc.com/szimg/5b55356c0001af0105400300-360-202.jpg',
    banner: 'https://img.mukewang.com/szimg/5b5535400001b72e20000560.jpg',
    type: {
      text: '实战',
      code: 1
    },
    hard: {
      text: '中级',
      code: 2,
    },
    price: 299,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: '勤一',
      avatar: 'https://img.mukewang.com/user/5c36c432000158e609600960-100-100.jpg',
      job: 'Java开发工程师',
      introduction: '高级技术专家，曾就职于微软、腾讯，目前就职于知名电商互联网公司，拥有丰富的大型项目开发经验。多年IT从业经验，一线软件设计、研发，熟悉C、CPP、Java等开发语言，对Web框架、数据存储、架构设计等有深入的理解和实践。'
    },
    labels: ['Java', 'SpringBoot']
  },
  {
    category: {
      text: '移动端开发',
      code: 2,
    },
    title: 'Flutter从入门到进阶 实战携程网App',
    introduction: '从入门到进阶，系统掌握Flutter开发核心技术',
    img: 'https://img.mukewang.com/szimg/5c7e6835087ef3d806000338-360-202.jpg',
    banner: 'https://img.mukewang.com/szimg/5c9304cd097d093d20000400.jpg',
    type: {
      text: '实战',
      code: 1
    },
    hard: {
      text: '中级',
      code: 2,
    },
    price: 348,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: 'CrazyCodeBoy',
      avatar: 'https://img.mukewang.com/user/545847e20001163c02200220-100-100.jpg',
      job: '移动端开发工程师',
      introduction: '深耕移动端领域8年有余，全栈技术专家，CSDN 博客专家，擅长Android、iOS、Flutter、React Native以及小程序项目开发，负责过前端、Java、Android、iOS等多平台项目的研发，有多款React Native App上线及管理经验。他享受编程、热爱开源、酷爱分享，平时除了写写博客外，也分享一些开源技术干货 · Github'
    },
    labels: ['React native', 'Flutter']
  },
  {
    category: {
      text: '移动端开发',
      code: 2,
    },
    title: '新版React Native从入门到实战打造高质量上线App（再升级）',
    introduction: '解锁React Native开发应用新姿势，一网打尽React Native新版本热门技术',
    img: 'https://img.mukewang.com/szimg/5db6916d08d81b8b12000676-360-202.jpg',
    banner: 'https://img.mukewang.com/szimg/5db69b9c086653ff40001120.jpg',
    type: {
      text: '实战',
      code: 1
    },
    hard: {
      text: '中级',
      code: 2,
    },
    price: 399,
    isDiscount: false,
    discountPrice: 0,
    script: {
      text: '升级',
      code: 1
    },
    teacher: {
      name: 'CrazyCodeBoy',
      avatar: 'https://img.mukewang.com/user/545847e20001163c02200220-100-100.jpg',
      job: '移动端开发工程师',
      introduction: '深耕移动端领域8年有余，全栈技术专家，CSDN 博客专家，擅长Android、iOS、Flutter、React Native以及小程序项目开发，负责过前端、Java、Android、iOS等多平台项目的研发，有多款React Native App上线及管理经验。他享受编程、热爱开源、酷爱分享，平时除了写写博客外，也分享一些开源技术干货 · Github'
    },
    labels: ['React native']
  },
  {
    category: {
      text: '移动端开发',
      code: 2,
    },
    title: '实战企业级项目 践行App重构之路',
    introduction: '真实还原大厂App重构过程，以组件化和插件化为核心，进击高级工程师必备',
    img: 'https://img.mukewang.com/szimg/5e4f4f66098b14c512000676-360-202.jpg',
    banner: 'https://img.mukewang.com/szimg/5e4f4f7009aeb1a920000400.jpg',
    type: {
      text: '实战',
      code: 1
    },
    hard: {
      text: '中级',
      code: 2,
    },
    price: 299,
    isDiscount: false,
    discountPrice: 0,
    script: {
      text: '升级',
      code: 1
    },
    teacher: {
      name: 'qndroid',
      avatar: 'http://img3.sycdn.imooc.com/5333a0350001692e02200220-160-160.jpg',
      job: '移动开发工程师',
      introduction: '多年Android开发经验，曾任职于优酷等一线互联网企业，现就职于快手基础架构部，有丰富的Android应用架构和SDK开发经验，喜欢分享，授课风格循序渐进，擅长培养学生的编程思维，深受学员好评。'
    },
    labels: ['Android']
  },
  {
    category: {
      text: '移动端开发',
      code: 2,
    },
    title: '企业级Android应用架构设计与开发',
    introduction: '一门能助你掌握企业级架构设计、功能开发，冲击大厂Android中高级工程师职位的课程',
    img: 'https://img.mukewang.com/szimg/5d5e6d1f0983ee0112000676-360-202.jpg',
    banner: 'https://img1.sycdn.imooc.com/szimg/5d5e6d2809b8706c20000400.jpg',
    type: {
      text: '实战',
      code: 1
    },
    hard: {
      text: '中级',
      code: 2,
    },
    price: 299,
    isDiscount: false,
    discountPrice: 0,
    script: {
      text: '升级',
      code: 1
    },
    teacher: {
      name: 'qndroid',
      avatar: 'http://img3.sycdn.imooc.com/5333a0350001692e02200220-160-160.jpg',
      job: '移动开发工程师',
      introduction: '多年Android开发经验，曾任职于优酷等一线互联网企业，现就职于快手基础架构部，有丰富的Android应用架构和SDK开发经验，喜欢分享，授课风格循序渐进，擅长培养学生的编程思维，深受学员好评。'
    },
    labels: ['Android']
  },
  {
    category: {
      text: '移动端开发',
      code: 2,
    },
    title: 'Gradle3.0自动化项目构建技术精讲+实战',
    introduction: '全面覆盖Gradle核心知识和高级用法，高级工程师必备技能！',
    img: 'https://img.mukewang.com/szimg/5acf37460001aa3405400300-360-202.jpg',
    banner: 'https://img.mukewang.com/szimg/5b5085f900017de520000560.jpg',
    type: {
      text: '实战',
      code: 1
    },
    hard: {
      text: '中级',
      code: 2,
    },
    price: 199,
    isDiscount: false,
    discountPrice: 0,
    script: {
      text: '升级',
      code: 1
    },
    teacher: {
      name: 'qndroid',
      avatar: 'http://img3.sycdn.imooc.com/5333a0350001692e02200220-160-160.jpg',
      job: '移动开发工程师',
      introduction: '多年Android开发经验，曾任职于优酷等一线互联网企业，现就职于快手基础架构部，有丰富的Android应用架构和SDK开发经验，喜欢分享，授课风格循序渐进，擅长培养学生的编程思维，深受学员好评。'
    },
    labels: ['Android']
  },
  {
    category: {
      text: '计算机基础',
      code: 3,
    },
    title: '玩转算法系列--图论精讲  面试升职必备（Java版）',
    introduction: '由于图论算法本身的复杂性和抽象性，让同学们头疼不已，这次bobo带你彻底玩转图论，克服对图论问题的恐惧心理',
    img: 'https://img1.sycdn.imooc.com/szimg/5d31765d08c90cba06000338-360-202.jpg',
    banner: 'https://img.mukewang.com/szimg/5d3176630945ccf020000288.jpg',
    type: {
      text: '实战',
      code: 1
    },
    hard: {
      text: '中级',
      code: 2,
    },
    price: 348,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: 'liuyubobobo',
      avatar: 'https://img1.sycdn.imooc.com/user/5347593e00010cfb01400140-100-100.jpg',
      job: '算法大牛 ACM亚洲区奖牌获得者',
      introduction: '创业者，全栈工程师，持续学习者。对技术开发，产品设计、前后端，ios，html5，智能算法等领域均有接触；拥有多款独立App作品；对一切可编程的东西有浓厚兴趣，对游戏编程格外感兴趣。相信编程改变一切。'
    },
    labels: ['算法和数据结构']
  },
  {
    category: {
      text: '计算机基础',
      code: 3,
    },
    title: '玩转算法系列--数据结构精讲 更适合0算法基础入门到进阶（java版）',
    introduction: '体系完整，细致入微，0基础入门：动态数组/栈/队列/链表/BST/堆/线段树/Trie/并查集/AVL/红黑树…',
    img: 'https://img1.sycdn.imooc.com/szimg/5ad05dc00001eae705400300-360-202.jpg',
    banner: 'https://img.mukewang.com/szimg/5b5086220001ef9420000560.jpg',
    type: {
      text: '实战',
      code: 1
    },
    hard: {
      text: '中级',
      code: 2,
    },
    price: 299,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: 'liuyubobobo',
      avatar: 'https://img1.sycdn.imooc.com/user/5347593e00010cfb01400140-100-100.jpg',
      job: '算法大牛 ACM亚洲区奖牌获得者',
      introduction: '创业者，全栈工程师，持续学习者。对技术开发，产品设计、前后端，ios，html5，智能算法等领域均有接触；拥有多款独立App作品；对一切可编程的东西有浓厚兴趣，对游戏编程格外感兴趣。相信编程改变一切。'
    },
    labels: ['算法和数据结构']
  },
  {
    category: {
      text: '计算机基础',
      code: 3,
    },
    title: '结合编程学数学 专为程序员设计的线性代数',
    introduction: '创新设计，通俗易懂。用编程的方式学数学。这一次，bobo老师带你彻底征服线性代数',
    img: 'https://img1.sycdn.imooc.com/szimg/5b5835a60001907e05400300-360-202.jpg',
    banner: 'https://img1.sycdn.imooc.com/szimg/5b5835cb0001d0c120000560.jpg',
    type: {
      text: '实战',
      code: 1
    },
    hard: {
      text: '初级',
      code: 1,
    },
    price: 348,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: 'liuyubobobo',
      avatar: 'https://img1.sycdn.imooc.com/user/5347593e00010cfb01400140-100-100.jpg',
      job: '算法大牛 ACM亚洲区奖牌获得者',
      introduction: '创业者，全栈工程师，持续学习者。对技术开发，产品设计、前后端，ios，html5，智能算法等领域均有接触；拥有多款独立App作品；对一切可编程的东西有浓厚兴趣，对游戏编程格外感兴趣。相信编程改变一切。'
    },
    labels: ['数学']
  },
  {
    category: {
      text: '计算机基础',
      code: 3,
    },
    title: '看的见的算法 7个经典应用诠释算法精髓',
    introduction: '课程重应用、重实践、重思维，真正应用于实际工作开发中，也可作为毕设作品、面试项目。',
    img: 'https://img1.sycdn.imooc.com/szimg/59b2766f000190d505400300-360-202.jpg',
    banner: 'https://img.mukewang.com/szimg/5b4f355a0001852520000520.jpg',
    type: {
      text: '实战',
      code: 1
    },
    hard: {
      text: '初级',
      code: 1,
    },
    price: 248,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: 'liuyubobobo',
      avatar: 'https://img1.sycdn.imooc.com/user/5347593e00010cfb01400140-100-100.jpg',
      job: '算法大牛 ACM亚洲区奖牌获得者',
      introduction: '创业者，全栈工程师，持续学习者。对技术开发，产品设计、前后端，ios，html5，智能算法等领域均有接触；拥有多款独立App作品；对一切可编程的东西有浓厚兴趣，对游戏编程格外感兴趣。相信编程改变一切。'
    },
    labels: ['算法和数据结构']
  },
  {
    category: {
      text: '前沿技术',
      code: 4,
    },
    title: '看的见的算法 Zookeeper源码分析',
    introduction: '“分而治之”逐一攻克Zookeeper框架各个组件的源码',
    img: 'https://img.mukewang.com/szimg/5d1ad17f08cd16e800000000-360-202.jpg',
    banner: 'https://img.mukewang.com/szimg/5b4f355a0001852520000520.jpg',
    type: {
      text: '实战',
      code: 1
    },
    hard: {
      text: '中级',
      code: 2,
    },
    price: 388,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: '城南大师兄',
      avatar: 'https://img1.sycdn.imooc.com/user/5cac7e810001fe7705270698-100-100.jpg',
      job: '国内知名公司架构师',
      introduction: '目前主要负责后端架构设计，具有十多年一线开发和架构经验，拥有丰富的高性能、高并发处理以及大型服务器软件设计架构经验。深谙各种源码。工作中常常和千万级高并发的问题“正面硬钢” ，因此在高并发调优等方面积累了丰富的实战经验。十几年的架构经验，让讲师早已将理论和实践锻造的炉火纯青。如果你想学习他密不外传的工作‘渡劫’经验，讲师等你打Call~'
    },
    labels: ['微服务']
  },
  {
    category: {
      text: '前沿技术',
      code: 4,
    },
    title: '学习Hyperledger Fabric实战联盟链',
    introduction: '兼顾区块链应用层和底层  进击区块链工程师',
    img: 'https://img.mukewang.com/szimg/5b73d7f60001dc1e05400300-360-202.jpg',
    banner: 'https://img1.sycdn.imooc.com/szimg/5b73d7fc0001e07720000560.jpg',
    type: {
      text: '实战',
      code: 1
    },
    hard: {
      text: '高级',
      code: 3,
    },
    price: 266,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: '自游蜗牛',
      avatar: 'https://img.mukewang.com/user/5b6949e20001c6bf10801080-100-100.jpg',
      job: '区块链底层工程师',
      introduction: '现就职于某世界500强区块链团队，从事区块链底层研究以及BAAS平台搭建。精通区块链底层存储、共识等技术，职业方向偏重联盟链体系。'
    },
    labels: ['区块链']
  },
  {
    category: {
      text: '前沿技术',
      code: 4,
    },
    title: '深度学习之目标检测常用算法原理+实践精讲',
    introduction: '从原理（YOLO / Faster RCNN / SSD / 文本检测 / 多任务网络）到场景实战，掌握目标检测核心技术',
    img: 'https://img1.sycdn.imooc.com/szimg/5bfb523c0001290905400300-360-202.jpg',
    banner: 'https://img1.sycdn.imooc.com/szimg/5bfb52480001858920000559.jpg',
    type: {
      text: '实战',
      code: 1
    },
    hard: {
      text: '高级',
      code: 3,
    },
    price: 499,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: '会写代码的好厨师',
      avatar: 'https://img1.sycdn.imooc.com/user/5b8618950001cd9101440146-100-100.jpg',
      job: '资深机器学习工程师',
      introduction: '现就职于某世界500强区块链团队，从事区块链底层研究以及BAAS平台搭建。精通区块链底层存储、共识等技术，职业方向偏重联盟链体系。'
    },
    labels: ['机器学习']
  },
  {
    category: {
      text: '前沿技术',
      code: 4,
    },
    title: '看的见的算法 Zookeeper源码分析',
    introduction: '“分而治之”逐一攻克Zookeeper框架各个组件的源码',
    img: 'https://img.mukewang.com/szimg/5d1ad17f08cd16e800000000-360-202.jpg',
    banner: 'https://img.mukewang.com/szimg/5b4f355a0001852520000520.jpg',
    type: {
      text: '实战',
      code: 1
    },
    hard: {
      text: '中级',
      code: 2,
    },
    price: 388,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: '城南大师兄',
      avatar: 'https://img1.sycdn.imooc.com/user/5cac7e810001fe7705270698-100-100.jpg',
      job: '国内知名公司架构师',
      introduction: '目前主要负责后端架构设计，具有十多年一线开发和架构经验，拥有丰富的高性能、高并发处理以及大型服务器软件设计架构经验。深谙各种源码。工作中常常和千万级高并发的问题“正面硬钢” ，因此在高并发调优等方面积累了丰富的实战经验。十几年的架构经验，让讲师早已将理论和实践锻造的炉火纯青。如果你想学习他密不外传的工作‘渡劫’经验，讲师等你打Call~'
    },
    labels: ['微服务']
  },
  {
    category: {
      text: '前沿技术',
      code: 4,
    },
    title: '学习Hyperledger Fabric实战联盟链',
    introduction: '兼顾区块链应用层和底层  进击区块链工程师',
    img: 'https://img.mukewang.com/szimg/5b73d7f60001dc1e05400300-360-202.jpg',
    banner: 'https://img1.sycdn.imooc.com/szimg/5b73d7fc0001e07720000560.jpg',
    type: {
      text: '实战',
      code: 1
    },
    hard: {
      text: '高级',
      code: 3,
    },
    price: 266,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: '自游蜗牛',
      avatar: 'https://img.mukewang.com/user/5b6949e20001c6bf10801080-100-100.jpg',
      job: '区块链底层工程师',
      introduction: '现就职于某世界500强区块链团队，从事区块链底层研究以及BAAS平台搭建。精通区块链底层存储、共识等技术，职业方向偏重联盟链体系。'
    },
    labels: ['区块链']
  },
  {
    category: {
      text: '前沿技术',
      code: 4,
    },
    title: '深度学习之目标检测常用算法原理+实践精讲',
    introduction: '从原理（YOLO / Faster RCNN / SSD / 文本检测 / 多任务网络）到场景实战，掌握目标检测核心技术',
    img: 'https://img1.sycdn.imooc.com/szimg/5bfb523c0001290905400300-360-202.jpg',
    banner: 'https://img1.sycdn.imooc.com/szimg/5bfb52480001858920000559.jpg',
    type: {
      text: '实战',
      code: 1
    },
    hard: {
      text: '高级',
      code: 3,
    },
    price: 499,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: '会写代码的好厨师',
      avatar: 'https://img1.sycdn.imooc.com/user/5b8618950001cd9101440146-100-100.jpg',
      job: '资深机器学习工程师',
      introduction: '现就职于某世界500强区块链团队，从事区块链底层研究以及BAAS平台搭建。精通区块链底层存储、共识等技术，职业方向偏重联盟链体系。'
    },
    labels: ['机器学习']
  },
  {
    category: {
      text: '前沿技术',
      code: 4,
    },
    title: '看的见的算法 Zookeeper源码分析',
    introduction: '“分而治之”逐一攻克Zookeeper框架各个组件的源码',
    img: 'https://img.mukewang.com/szimg/5d1ad17f08cd16e800000000-360-202.jpg',
    banner: 'https://img.mukewang.com/szimg/5b4f355a0001852520000520.jpg',
    type: {
      text: '实战',
      code: 1
    },
    hard: {
      text: '中级',
      code: 2,
    },
    price: 388,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: '城南大师兄',
      avatar: 'https://img1.sycdn.imooc.com/user/5cac7e810001fe7705270698-100-100.jpg',
      job: '国内知名公司架构师',
      introduction: '目前主要负责后端架构设计，具有十多年一线开发和架构经验，拥有丰富的高性能、高并发处理以及大型服务器软件设计架构经验。深谙各种源码。工作中常常和千万级高并发的问题“正面硬钢” ，因此在高并发调优等方面积累了丰富的实战经验。十几年的架构经验，让讲师早已将理论和实践锻造的炉火纯青。如果你想学习他密不外传的工作‘渡劫’经验，讲师等你打Call~'
    },
    labels: ['微服务']
  },
  {
    category: {
      text: '前沿技术',
      code: 4,
    },
    title: '学习Hyperledger Fabric实战联盟链',
    introduction: '兼顾区块链应用层和底层  进击区块链工程师',
    img: 'https://img.mukewang.com/szimg/5b73d7f60001dc1e05400300-360-202.jpg',
    banner: 'https://img1.sycdn.imooc.com/szimg/5b73d7fc0001e07720000560.jpg',
    type: {
      text: '实战',
      code: 1
    },
    hard: {
      text: '高级',
      code: 3,
    },
    price: 266,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: '自游蜗牛',
      avatar: 'https://img.mukewang.com/user/5b6949e20001c6bf10801080-100-100.jpg',
      job: '区块链底层工程师',
      introduction: '现就职于某世界500强区块链团队，从事区块链底层研究以及BAAS平台搭建。精通区块链底层存储、共识等技术，职业方向偏重联盟链体系。'
    },
    labels: ['区块链']
  },
  {
    category: {
      text: '前沿技术',
      code: 4,
    },
    title: '深度学习之目标检测常用算法原理+实践精讲',
    introduction: '从原理（YOLO / Faster RCNN / SSD / 文本检测 / 多任务网络）到场景实战，掌握目标检测核心技术',
    img: 'https://img1.sycdn.imooc.com/szimg/5bfb523c0001290905400300-360-202.jpg',
    banner: 'https://img1.sycdn.imooc.com/szimg/5bfb52480001858920000559.jpg',
    type: {
      text: '实战',
      code: 1
    },
    hard: {
      text: '高级',
      code: 3,
    },
    price: 499,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: '会写代码的好厨师',
      avatar: 'https://img1.sycdn.imooc.com/user/5b8618950001cd9101440146-100-100.jpg',
      job: '资深机器学习工程师',
      introduction: '现就职于某世界500强区块链团队，从事区块链底层研究以及BAAS平台搭建。精通区块链底层存储、共识等技术，职业方向偏重联盟链体系。'
    },
    labels: ['机器学习']
  },
  {
    category: {
      text: '前沿技术',
      code: 4,
    },
    title: '看的见的算法 Zookeeper源码分析',
    introduction: '“分而治之”逐一攻克Zookeeper框架各个组件的源码',
    img: 'https://img.mukewang.com/szimg/5d1ad17f08cd16e800000000-360-202.jpg',
    banner: 'https://img.mukewang.com/szimg/5b4f355a0001852520000520.jpg',
    type: {
      text: '实战',
      code: 1
    },
    hard: {
      text: '中级',
      code: 2,
    },
    price: 388,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: '城南大师兄',
      avatar: 'https://img1.sycdn.imooc.com/user/5cac7e810001fe7705270698-100-100.jpg',
      job: '国内知名公司架构师',
      introduction: '目前主要负责后端架构设计，具有十多年一线开发和架构经验，拥有丰富的高性能、高并发处理以及大型服务器软件设计架构经验。深谙各种源码。工作中常常和千万级高并发的问题“正面硬钢” ，因此在高并发调优等方面积累了丰富的实战经验。十几年的架构经验，让讲师早已将理论和实践锻造的炉火纯青。如果你想学习他密不外传的工作‘渡劫’经验，讲师等你打Call~'
    },
    labels: ['微服务']
  },
  {
    category: {
      text: '前沿技术',
      code: 4,
    },
    title: '学习Hyperledger Fabric实战联盟链',
    introduction: '兼顾区块链应用层和底层  进击区块链工程师',
    img: 'https://img.mukewang.com/szimg/5b73d7f60001dc1e05400300-360-202.jpg',
    banner: 'https://img1.sycdn.imooc.com/szimg/5b73d7fc0001e07720000560.jpg',
    type: {
      text: '实战',
      code: 1
    },
    hard: {
      text: '高级',
      code: 3,
    },
    price: 266,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: '自游蜗牛',
      avatar: 'https://img.mukewang.com/user/5b6949e20001c6bf10801080-100-100.jpg',
      job: '区块链底层工程师',
      introduction: '现就职于某世界500强区块链团队，从事区块链底层研究以及BAAS平台搭建。精通区块链底层存储、共识等技术，职业方向偏重联盟链体系。'
    },
    labels: ['区块链']
  },
  {
    category: {
      text: '前沿技术',
      code: 4,
    },
    title: '深度学习之目标检测常用算法原理+实践精讲',
    introduction: '从原理（YOLO / Faster RCNN / SSD / 文本检测 / 多任务网络）到场景实战，掌握目标检测核心技术',
    img: 'https://img1.sycdn.imooc.com/szimg/5bfb523c0001290905400300-360-202.jpg',
    banner: 'https://img1.sycdn.imooc.com/szimg/5bfb52480001858920000559.jpg',
    type: {
      text: '实战',
      code: 1
    },
    hard: {
      text: '高级',
      code: 3,
    },
    price: 499,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: '会写代码的好厨师',
      avatar: 'https://img1.sycdn.imooc.com/user/5b8618950001cd9101440146-100-100.jpg',
      job: '资深机器学习工程师',
      introduction: '现就职于某世界500强区块链团队，从事区块链底层研究以及BAAS平台搭建。精通区块链底层存储、共识等技术，职业方向偏重联盟链体系。'
    },
    labels: ['机器学习']
  },
  {
    category: {
      text: '云计算&大数据',
      code: 5,
    },
    title: 'SparkSQL极速入门  整合Kudu实现广告业务数据分析',
    introduction: '大数据工程师干货课程 带你从入门到实战掌握SparkSQL',
    img: 'https://img1.sycdn.imooc.com/szimg/5d844ae7089e674906000338-360-202.jpg',
    banner: 'https://img1.sycdn.imooc.com/szimg/5d844af609893ec140000800.jpg',
    type: {
      text: '实战',
      code: 1
    },
    hard: {
      text: '中级',
      code: 2,
    },
    price: 388,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: 'Michael_PK',
      avatar: 'https://img1.sycdn.imooc.com/user/533e4d510001c2ad02000200-100-100.jpg',
      job: '资深大数据架构师',
      introduction: '八年互联网公司一线研发经验，担任大数据架构师。主要从事基于Spark/Flink为核心打造的大数据公有云、私有云数据平台产品的研发。改造过Hadoop、Spark等框架的源码为云平台提供更高的执行性能。集群规模过万，有丰富的大数据项目实战经验以及授课经验(授课数千小时，深受学员好评)。'
    },
    labels: ['大数据']
  },
  {
    category: {
      text: '云计算&大数据',
      code: 5,
    },
    title: 'Spark进阶 大数据离线与实时项目实战',
    introduction: '大数据生态圈中多个框架(Spark/Hbase/Redis/Hadoop)的整合应用及调优',
    img: 'https://img1.sycdn.imooc.com/szimg/59f85ec90001103405400300-360-202.jpg',
    banner: 'https://img1.sycdn.imooc.com/szimg/5d844af609893ec140000800.jpg',
    type: {
      text: '实战',
      code: 1
    },
    hard: {
      text: '中级',
      code: 2,
    },
    price: 399,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: 'Michael_PK',
      avatar: 'https://img1.sycdn.imooc.com/user/533e4d510001c2ad02000200-100-100.jpg',
      job: '资深大数据架构师',
      introduction: '八年互联网公司一线研发经验，担任大数据架构师。主要从事基于Spark/Flink为核心打造的大数据公有云、私有云数据平台产品的研发。改造过Hadoop、Spark等框架的源码为云平台提供更高的执行性能。集群规模过万，有丰富的大数据项目实战经验以及授课经验(授课数千小时，深受学员好评)。'
    },
    labels: ['大数据']
  },
  {
    category: {
      text: '云计算&大数据',
      code: 5,
    },
    title: 'Spark Streaming实时流处理项目实战 ',
    introduction: 'Flume+Kafka+Spark Streaming 构建通用实时流处理平台',
    img: 'https://img1.sycdn.imooc.com/szimg/5c203a4b0001dcf306000338-360-202.jpg',
    banner: 'https://img.mukewang.com/szimg/5c203a520001d14320000560.jpg',
    type: {
      text: '实战',
      code: 1
    },
    hard: {
      text: '中级',
      code: 2,
    },
    price: 288,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: 'Michael_PK',
      avatar: 'https://img1.sycdn.imooc.com/user/533e4d510001c2ad02000200-100-100.jpg',
      job: '资深大数据架构师',
      introduction: '八年互联网公司一线研发经验，担任大数据架构师。主要从事基于Spark/Flink为核心打造的大数据公有云、私有云数据平台产品的研发。改造过Hadoop、Spark等框架的源码为云平台提供更高的执行性能。集群规模过万，有丰富的大数据项目实战经验以及授课经验(授课数千小时，深受学员好评)。'
    },
    labels: ['大数据']
  },
  {
    category: {
      text: '运维&测试',
      code: 6,
    },
    title: '跟着360架构师 学习Shell脚本编程',
    introduction: '30%知识讲解+70%实例操作 掌握Shell脚本编程能力',
    img: 'https://img1.sycdn.imooc.com/szimg/5c46c4a308ad3b3406000338-360-202.jpg',
    banner: 'https://img.mukewang.com/szimg/5c46c4ae099dc71320000560.jpg',
    type: {
      text: '实战',
      code: 1
    },
    hard: {
      text: '中级',
      code: 2,
    },
    price: 366,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: '酷田',
      avatar: 'http://img2.sycdn.imooc.com/5c297bb600013f6d11100834-160-160.jpg',
      job: '全栈工程师',
      introduction: '360企业安全集团资深工程师，曾就职于中国移动、亚信科技 ，等知名大型公司，多年工作经验积累，所传授的知识技能可以让你在实际工作中有的放矢，游刃有余。'
    },
    labels: ['运维']
  },
  {
    category: {
      text: '运维&测试',
      code: 6,
    },
    title: '企业级开源四层负载均衡解决方案-LVS',
    introduction: '轻松应对负载均衡，深刻理解网络系统架构，真正解决工作中的实际问题',
    img: 'https://img1.sycdn.imooc.com/szimg/5b99c15f0001ca0206000338-360-202.jpg',
    banner: 'https://img.mukewang.com/szimg/5b99d1e90001903240001120.jpg',
    type: {
      text: '实战',
      code: 1
    },
    hard: {
      text: '中级',
      code: 2,
    },
    price: 199,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: '酷田',
      avatar: 'http://img2.sycdn.imooc.com/5c297bb600013f6d11100834-160-160.jpg',
      job: '全栈工程师',
      introduction: '360企业安全集团资深工程师，曾就职于中国移动、亚信科技 ，等知名大型公司，多年工作经验积累，所传授的知识技能可以让你在实际工作中有的放矢，游刃有余。'
    },
    labels: ['运维']
  },
  {
    category: {
      text: '运维&测试',
      code: 6,
    },
    title: '跟着360架构师 学习Shell脚本编程',
    introduction: '30%知识讲解+70%实例操作 掌握Shell脚本编程能力',
    img: 'https://img1.sycdn.imooc.com/szimg/5c46c4a308ad3b3406000338-360-202.jpg',
    banner: 'https://img.mukewang.com/szimg/5c46c4ae099dc71320000560.jpg',
    type: {
      text: '实战',
      code: 1
    },
    hard: {
      text: '中级',
      code: 2,
    },
    price: 366,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: '酷田',
      avatar: 'http://img2.sycdn.imooc.com/5c297bb600013f6d11100834-160-160.jpg',
      job: '全栈工程师',
      introduction: '360企业安全集团资深工程师，曾就职于中国移动、亚信科技 ，等知名大型公司，多年工作经验积累，所传授的知识技能可以让你在实际工作中有的放矢，游刃有余。'
    },
    labels: ['运维']
  },
  {
    category: {
      text: '运维&测试',
      code: 6,
    },
    title: '企业级开源四层负载均衡解决方案-LVS',
    introduction: '轻松应对负载均衡，深刻理解网络系统架构，真正解决工作中的实际问题',
    img: 'https://img1.sycdn.imooc.com/szimg/5b99c15f0001ca0206000338-360-202.jpg',
    banner: 'https://img.mukewang.com/szimg/5b99d1e90001903240001120.jpg',
    type: {
      text: '实战',
      code: 1
    },
    hard: {
      text: '中级',
      code: 2,
    },
    price: 199,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: '酷田',
      avatar: 'http://img2.sycdn.imooc.com/5c297bb600013f6d11100834-160-160.jpg',
      job: '全栈工程师',
      introduction: '360企业安全集团资深工程师，曾就职于中国移动、亚信科技 ，等知名大型公司，多年工作经验积累，所传授的知识技能可以让你在实际工作中有的放矢，游刃有余。'
    },
    labels: ['运维']
  },
  {
    category: {
      text: '数据库',
      code: 7,
    },
    title: '零基础入门 全角度解读企业主流数据库MySQL8.0',
    introduction: '掌握SQL优化与慢查询优化，具备独当一面的能力，彰显更多个人价值',
    img: 'https://img.mukewang.com/szimg/5ca5e266085019b306000338-360-202.jpg',
    banner: 'https://img.mukewang.com/szimg/5ca5e26e09568dbc20000400.jpg',
    type: {
      text: '实战',
      code: 1
    },
    hard: {
      text: '入门',
      code: 0,
    },
    price: 266,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: 'sqlercn',
      avatar: 'http://img3.sycdn.imooc.com/5ad7144100017a5e07410741-160-160.jpg',
      job: '数据库工程师',
      introduction: '高级数据库工程师（DBA），从事数据库管理工作多年，曾就职于聚美优品、猫扑、TOM等多家大型互联网公司，进行过千万级的数据处理，对大数据业务、高并发时数据优化积累了大量丰富的经验。'
    },
    labels: ['MySql']
  },
  {
    category: {
      text: '数据库',
      code: 7,
    },
    title: '零基础入门 全角度解读企业主流数据库MySQL8.0',
    introduction: '掌握SQL优化与慢查询优化，具备独当一面的能力，彰显更多个人价值',
    img: 'https://img.mukewang.com/szimg/5ca5e266085019b306000338-360-202.jpg',
    banner: 'https://img.mukewang.com/szimg/5ca5e26e09568dbc20000400.jpg',
    type: {
      text: '实战',
      code: 1
    },
    hard: {
      text: '入门',
      code: 0,
    },
    price: 266,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: 'sqlercn',
      avatar: 'http://img3.sycdn.imooc.com/5ad7144100017a5e07410741-160-160.jpg',
      job: '数据库工程师',
      introduction: '高级数据库工程师（DBA），从事数据库管理工作多年，曾就职于聚美优品、猫扑、TOM等多家大型互联网公司，进行过千万级的数据处理，对大数据业务、高并发时数据优化积累了大量丰富的经验。'
    },
    labels: ['MySql']
  },
  {
    category: {
      text: '数据库',
      code: 7,
    },
    title: '中高级开发晋升利器 MySQL面试指南',
    introduction: '9大类常见问题详解，切实提升数据库应用和管理能力，升职加薪必备佳品！',
    img: 'https://img.mukewang.com/szimg/5bdc3b81000178e812000676-360-202.jpg',
    banner: 'https://img.mukewang.com/szimg/5bdc3b8a0001583240001120.jpg',
    type: {
      text: '实战',
      code: 1
    },
    hard: {
      text: '中级',
      code: 2,
    },
    price: 288,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: 'sqlercn',
      avatar: 'http://img3.sycdn.imooc.com/5ad7144100017a5e07410741-160-160.jpg',
      job: '数据库工程师',
      introduction: '高级数据库工程师（DBA），从事数据库管理工作多年，曾就职于聚美优品、猫扑、TOM等多家大型互联网公司，进行过千万级的数据处理，对大数据业务、高并发时数据优化积累了大量丰富的经验。'
    },
    labels: ['MySql']
  },
  {
    category: {
      text: '数据库',
      code: 7,
    },
    title: '零基础入门 全角度解读企业主流数据库MySQL8.0',
    introduction: '掌握SQL优化与慢查询优化，具备独当一面的能力，彰显更多个人价值',
    img: 'https://img.mukewang.com/szimg/5ca5e266085019b306000338-360-202.jpg',
    banner: 'https://img.mukewang.com/szimg/5ca5e26e09568dbc20000400.jpg',
    type: {
      text: '实战',
      code: 1
    },
    hard: {
      text: '入门',
      code: 0,
    },
    price: 266,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: 'sqlercn',
      avatar: 'http://img3.sycdn.imooc.com/5ad7144100017a5e07410741-160-160.jpg',
      job: '数据库工程师',
      introduction: '高级数据库工程师（DBA），从事数据库管理工作多年，曾就职于聚美优品、猫扑、TOM等多家大型互联网公司，进行过千万级的数据处理，对大数据业务、高并发时数据优化积累了大量丰富的经验。'
    },
    labels: ['MySql']
  },
  {
    category: {
      text: '数据库',
      code: 7,
    },
    title: '中高级开发晋升利器 MySQL面试指南',
    introduction: '9大类常见问题详解，切实提升数据库应用和管理能力，升职加薪必备佳品！',
    img: 'https://img.mukewang.com/szimg/5bdc3b81000178e812000676-360-202.jpg',
    banner: 'https://img.mukewang.com/szimg/5bdc3b8a0001583240001120.jpg',
    type: {
      text: '实战',
      code: 1
    },
    hard: {
      text: '中级',
      code: 2,
    },
    price: 288,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: 'sqlercn',
      avatar: 'http://img3.sycdn.imooc.com/5ad7144100017a5e07410741-160-160.jpg',
      job: '数据库工程师',
      introduction: '高级数据库工程师（DBA），从事数据库管理工作多年，曾就职于聚美优品、猫扑、TOM等多家大型互联网公司，进行过千万级的数据处理，对大数据业务、高并发时数据优化积累了大量丰富的经验。'
    },
    labels: ['MySql']
  },
  {
    category: {
      text: '数据库',
      code: 7,
    },
    title: '玩转MongoDB4.0(最新版) 从入门到实践',
    introduction: '30%理论+70%实战，让你用实操去检验真理,一门让你事半功倍的入门进阶课',
    img: 'https://img.mukewang.com/szimg/5c90dc020849c59a06000338-360-202.jpg',
    banner: 'https://img.mukewang.com/szimg/5b4f355a0001852520000520.jpg',
    type: {
      text: '实战',
      code: 1
    },
    hard: {
      text: '入门',
      code: 0,
    },
    price: 288,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: 'Stannum',
      avatar: 'https://img1.sycdn.imooc.com/user/5b558fd00001ca6207410741-100-100.jpg',
      job: 'Java/C++敏捷开发专家',
      introduction: '目前在财经界俗称的“大摩”，一家成立于美国纽约的国际金融服务公司-摩根士丹利担任软件工程师和敏捷开发专家。 主攻Event Sourcing架构模式的应用。是一个“只有男同事,没有女同事”的程序媛一枚,先后就职于多家投资银行，负责开发“每一个bug都很贵”的内部交易系统,主导了股票交易执行系统和衍生品交易风险控制系统。'
    },
    labels: ['MongoDB']
  },
  {
    category: {
      text: 'UI设计&多媒体',
      code: 8,
    },
    title: '高薪设计师必修课 AE移动UI动效设计从入门到实战',
    introduction: '20多个商业实用案例，轻松Get√到AE动效核心技术，让你的作品脱颖而出！',
    img: 'https://img.mukewang.com/szimg/5aa9d2c1000104d510800600-360-202.jpg',
    banner: 'https://img.mukewang.com/szimg/5b51c7100001351220000560.jpg',
    type: {
      text: '实战',
      code: 1
    },
    hard: {
      text: '中级',
      code: 2,
    },
    price: 199,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: '墨染ART',
      avatar: 'http://img4.sycdn.imooc.com/5b1c1e530001c06c07410719-160-160.jpg',
      job: 'UI设计师',
      introduction: '站酷推荐设计师，UI中国推荐设计师。热门UI动效实战系列教程作者，对UI设计、动效设计、多终端响应式设计有深入的研究和经验。'
    },
    labels: ['设计基础']
  },
  {
    category: {
      text: 'UI设计&多媒体',
      code: 8,
    },
    title: '移动端App UI设计入门与实战',
    introduction: '涉及多项实用设计技能训练，成为一名具有“产品思维”的设计师！',
    img: 'https://img.mukewang.com/szimg/5a123d7e00011fa705400300-360-202.jpg',
    banner: 'https://img.mukewang.com/szimg/5b51c7100001351220000560.jpg',
    type: {
      text: '实战',
      code: 1
    },
    hard: {
      text: '中级',
      code: 2,
    },
    price: 199,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: '墨染ART',
      avatar: 'http://img4.sycdn.imooc.com/5b1c1e530001c06c07410719-160-160.jpg',
      job: 'UI设计师',
      introduction: '站酷推荐设计师，UI中国推荐设计师。热门UI动效实战系列教程作者，对UI设计、动效设计、多终端响应式设计有深入的研究和经验。'
    },
    labels: ['设计基础', 'APPUI设计']
  },
  {
    category: {
      text: 'UI设计&多媒体',
      code: 8,
    },
    title: '高薪设计师必修课 AE移动UI动效设计从入门到实战',
    introduction: '20多个商业实用案例，轻松Get√到AE动效核心技术，让你的作品脱颖而出！',
    img: 'https://img.mukewang.com/szimg/5aa9d2c1000104d510800600-360-202.jpg',
    banner: 'https://img.mukewang.com/szimg/5b51c7100001351220000560.jpg',
    type: {
      text: '实战',
      code: 1
    },
    hard: {
      text: '中级',
      code: 2,
    },
    price: 199,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: '墨染ART',
      avatar: 'http://img4.sycdn.imooc.com/5b1c1e530001c06c07410719-160-160.jpg',
      job: 'UI设计师',
      introduction: '站酷推荐设计师，UI中国推荐设计师。热门UI动效实战系列教程作者，对UI设计、动效设计、多终端响应式设计有深入的研究和经验。'
    },
    labels: ['设计基础']
  },
  {
    category: {
      text: 'UI设计&多媒体',
      code: 8,
    },
    title: '移动端App UI设计入门与实战',
    introduction: '涉及多项实用设计技能训练，成为一名具有“产品思维”的设计师！',
    img: 'https://img.mukewang.com/szimg/5a123d7e00011fa705400300-360-202.jpg',
    banner: 'https://img.mukewang.com/szimg/5b51c7100001351220000560.jpg',
    type: {
      text: '实战',
      code: 1
    },
    hard: {
      text: '中级',
      code: 2,
    },
    price: 199,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: '墨染ART',
      avatar: 'http://img4.sycdn.imooc.com/5b1c1e530001c06c07410719-160-160.jpg',
      job: 'UI设计师',
      introduction: '站酷推荐设计师，UI中国推荐设计师。热门UI动效实战系列教程作者，对UI设计、动效设计、多终端响应式设计有深入的研究和经验。'
    },
    labels: ['设计基础', 'APPUI设计']
  },
  {
    category: {
      text: '前端开发',
      code: 0,
    },
    title: '初识HTML(5)+CSS(3)-2020升级版',
    introduction: 'HTML(5)+CSS(3)基础教程8小时带领大家步步深入学习标签用法和意义',
    img: 'https://img4.mukewang.com/529dc3380001379906000338-240-135.jpg',
    banner: '',
    type: {
      text: '免费',
      code: 0
    },
    hard: {
      text: '入门',
      code: 0,
    },
    price: 0,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: '丶五月的夏天',
      avatar: 'https://img2.mukewang.com/54584f6d0001759002200220-80-80.jpg',
      job: 'Web前端工程师',
      introduction: ''
    },
    labels: ['HTML/CSS']
  },
  {
    category: {
      text: '前端开发',
      code: 0,
    },
    title: 'JavaScript入门篇',
    introduction: 'JavaScript做为一名Web工程师的必备技术，本教程让您快速入门',
    img: 'https://img2.mukewang.com/53e1d0470001ad1e06000338-240-135.jpg',
    banner: '',
    type: {
      text: '免费',
      code: 0
    },
    hard: {
      text: '入门',
      code: 0,
    },
    price: 0,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: '慕课官方号',
      avatar: 'https://img1.mukewang.com/5b88f1f50001688401500150-80-80.jpg',
      job: '页面重构设计',
      introduction: ''
    },
    labels: ['JavaScript']
  },
  {
    category: {
      text: '前端开发',
      code: 0,
    },
    title: 'JavaScript进阶篇',
    introduction: '本课程从如何插入JS代码开始，带您进入网页动态交互世界',
    img: 'https://img2.mukewang.com/574678bd00010a7206000338-240-135.jpg',
    banner: '',
    type: {
      text: '免费',
      code: 0
    },
    hard: {
      text: '入门',
      code: 0,
    },
    price: 0,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: '慕课官方号',
      avatar: 'https://img1.mukewang.com/5b88f1f50001688401500150-80-80.jpg',
      job: '页面重构设计',
      introduction: ''
    },
    labels: ['JavaScript']
  },
  {
    category: {
      text: '前端开发',
      code: 0,
    },
    title: 'vue2.5入门',
    introduction: '快速理解Vue编程理念上手Vue2.0开发。',
    img: 'https://img2.mukewang.com/5ad5cc490001e53006000338-240-135.jpg',
    banner: '',
    type: {
      text: '免费',
      code: 0
    },
    hard: {
      text: '中级',
      code: 2,
    },
    price: 0,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: 'Dell',
      avatar: 'https://img4.mukewang.com/5abe468b0001664107390741-80-80.jpg',
      job: 'Web前端工程师',
      introduction: ''
    },
    labels: ['Vue.js']
  },
  {
    category: {
      text: '前端开发',
      code: 0,
    },
    title: 'Vue+Webpack打造todo应用',
    introduction: '用前端最热门框架Vue+最火打包工具Webpack打造todo应用',
    img: 'https://img1.mukewang.com/5a56fdb400017d0306000338-240-135.jpg',
    banner: '',
    type: {
      text: '免费',
      code: 0
    },
    hard: {
      text: '高级',
      code: 3,
    },
    price: 0,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: 'Jokcy',
      avatar: 'https://img1.sycdn.imooc.com/5a697c950001262b05790578-80-80.jpg',
      job: 'Web前端工程师',
      introduction: ''
    },
    labels: ['Vue.js']
  },
  {
    category: {
      text: '前端开发',
      code: 0,
    },
    title: 'Vue+node.js调试入门',
    introduction: '理论实践相结合学习使用 Inspector 调试 Node.js。',
    img: 'https://img3.sycdn.imooc.com/5c3eaa0a08d7052706000338-240-135.jpg',
    banner: '',
    type: {
      text: '免费',
      code: 0
    },
    hard: {
      text: '入门',
      code: 0,
    },
    price: 0,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: 'lewis',
      avatar: 'https://img.mukewang.com/5c3ea1f10001b55908070807-80-80.jpg',
      job: 'Web前端工程师',
      introduction: ''
    },
    labels: ['Node.js']
  },
  {
    category: {
      text: '前端开发',
      code: 0,
    },
    title: 'Nodejs全栈入门',
    introduction: '基于node+mysql+react全栈实战',
    img: 'https://img3.sycdn.imooc.com/5dd7561309f8ae4806000338-240-135.png',
    banner: '',
    type: {
      text: '免费',
      code: 0
    },
    hard: {
      text: '中级',
      code: 2,
    },
    price: 0,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: '一缕孤烟',
      avatar: 'https://img4.mukewang.com/54a2bf390001593c01000100-80-80.jpg',
      job: 'Web前端工程师',
      introduction: ''
    },
    labels: ['Node.js']
  },
  {
    category: {
      text: '后端开发',
      code: 1,
    },
    title: '使用Prometheus实践基于Spring Boot监控告警体系',
    introduction: '基于Spring Boot2.X使用Prometheus实现监控大盘及微服务告警功能。',
    img: 'https://img2.mukewang.com/5e82b5b8099dc26405400300-240-135.png',
    banner: '',
    type: {
      text: '免费',
      code: 0
    },
    hard: {
      text: '中级',
      code: 2,
    },
    price: 0,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: '龙猪GG',
      avatar: 'https://img1.mukewang.com/5b8cd6cb000114e702000112-80-80.jpg',
      job: '架构师',
      introduction: ''
    },
    labels: ['Java']
  },
  {
    category: {
      text: '后端开发',
      code: 1,
    },
    title: '二进制与Java中的基本数据类型',
    introduction: '从认识二进制开始，逐步理解Java是如何存储和处理数据的。',
    img: 'https://img.mukewang.com/5e646d5708f882d512000676-240-135.jpg',
    banner: '',
    type: {
      text: '免费',
      code: 0
    },
    hard: {
      text: '入门',
      code: 0,
    },
    price: 0,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: '舞马',
      avatar: 'https://img.mukewang.com/5e3c0b840001796401500124-80-80.jpg',
      job: '软件工程师',
      introduction: ''
    },
    labels: ['Java']
  },
  {
    category: {
      text: '后端开发',
      code: 1,
    },
    title: '自己动手实现RPC框架',
    introduction: '自己动手实现一个完整的RPC框架，So Easy！',
    img: 'https://img.mukewang.com/5e37d120082e7c7c06000338-240-135.jpg',
    banner: '',
    type: {
      text: '免费',
      code: 0
    },
    hard: {
      text: '中级',
      code: 2,
    },
    price: 0,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: '司马极客',
      avatar: 'https://img4.mukewang.com/5b8cdb710001d95c02000200-80-80.jpg',
      job: '软件工程师',
      introduction: ''
    },
    labels: ['Java']
  },
  {
    category: {
      text: '后端开发',
      code: 1,
    },
    title: 'MUI+个推实现安卓与ios移动端推送',
    introduction: '结合慕信轻聊Netty实战，整合个推到前端与后端，实现安卓与ios移动端推送',
    img: 'https://img4.mukewang.com/5bebce6b0001bd6106000336-240-135.jpg',
    banner: '',
    type: {
      text: '免费',
      code: 0
    },
    hard: {
      text: '初级',
      code: 1,
    },
    price: 0,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: '风间影月',
      avatar: 'https://img4.mukewang.com/5a0c5df20001a1cb05800580-80-80.jpg',
      job: '全栈工程师',
      introduction: ''
    },
    labels: ['Java', 'SpringBoot']
  },
  {
    category: {
      text: '后端开发',
      code: 1,
    },
    title: 'Springboot 微信小程序 – 微信登录功能实战',
    introduction: '简单实现在小程序中对使用微信登录的方式来登录小程序应用',
    img: 'https://img2.mukewang.com/5bbf2def000118ab06000336-240-135.jpg',
    banner: '',
    type: {
      text: '免费',
      code: 0
    },
    hard: {
      text: '初级',
      code: 1,
    },
    price: 0,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: '风间影月',
      avatar: 'https://img4.mukewang.com/5a0c5df20001a1cb05800580-80-80.jpg',
      job: '全栈工程师',
      introduction: ''
    },
    labels: ['Java', 'SpringBoot']
  },
  {
    category: {
      text: '后端开发',
      code: 1,
    },
    title: 'Numpy基础入门',
    introduction: '从基本数组入手全面讲解Numpy中的核心知识',
    img: 'https://img.mukewang.com/5e9683f808f03af912000676-240-135.jpg',
    banner: '',
    type: {
      text: '免费',
      code: 0
    },
    hard: {
      text: '入门',
      code: 0,
    },
    price: 0,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: '夏正东',
      avatar: 'https://img2.mukewang.com/5da6841d0001f79409600960-80-80.jpg',
      job: 'Python工程师',
      introduction: ''
    },
    labels: ['Python']
  },
  {
    category: {
      text: '后端开发',
      code: 1,
    },
    title: 'Python数据预处理（四）- 特征降维与可视化',
    introduction: '教会你使用Python数据预处理',
    img: 'https://img2.mukewang.com/5ce4b199083e469306000338-240-135.jpg',
    banner: '',
    type: {
      text: '免费',
      code: 0
    },
    hard: {
      text: '初级',
      code: 1,
    },
    price: 0,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: '伏草惟存',
      avatar: 'https://img3.mukewang.com/545863cd0001b72a02200220-80-80.jpg',
      job: '算法工程师',
      introduction: ''
    },
    labels: ['Python', '自然语言处理']
  },
  {
    category: {
      text: '移动端开发',
      code: 2,
    },
    title: 'MultiDex从基础原理到实践优化',
    introduction: 'Android进阶学习必备，带你从基础用法到实践优化一站式掌握MultiDex。',
    img: 'https://img.mukewang.com/5e6098b409a0151406000338-240-135.png',
    banner: '',
    type: {
      text: '免费',
      code: 0
    },
    hard: {
      text: '中级',
      code: 2,
    },
    price: 0,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: '凡諾',
      avatar: 'https://img.mukewang.com/5e57662a00012deb11111109-80-80.jpg',
      job: '移动开发工程师',
      introduction: ''
    },
    labels: ['Android']
  },
  {
    category: {
      text: '移动端开发',
      code: 2,
    },
    title: 'Android网络安全之加解密',
    introduction: '在不安全的网络环境中，如何安全的传输敏感数据',
    img: 'https://img4.mukewang.com/5dfc2e870902f80d06000338-240-135.png',
    banner: '',
    type: {
      text: '免费',
      code: 0
    },
    hard: {
      text: '中级',
      code: 2,
    },
    price: 0,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: '凡諾',
      avatar: 'https://img.mukewang.com/5e57662a00012deb11111109-80-80.jpg',
      job: '移动开发工程师',
      introduction: ''
    },
    labels: ['Android']
  },
  {
    category: {
      text: '移动端开发',
      code: 2,
    },
    title: 'Android CMake以及NDK实践基础',
    introduction: 'Android底层开发入门必备，CMake动态库编译和使用，NDK的各种开发技巧。 ',
    img: 'https://img1.mukewang.com/5de8a5740989152106000338-240-135.png',
    banner: '',
    type: {
      text: '免费',
      code: 0
    },
    hard: {
      text: '中级',
      code: 2,
    },
    price: 0,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: 'glumes',
      avatar: 'https://img3.mukewang.com/5462e44b0001421501800180-80-80.jpg',
      job: '移动开发工程师',
      introduction: ''
    },
    labels: ['Android']
  },
  {
    category: {
      text: '计算机基础',
      code: 3,
    },
    title: 'Android 机器学习中的统计学基础',
    introduction: '机器学习中的常用统计学知识点 ',
    img: 'https://img4.mukewang.com/5b470bfe0001cdbf06000338-240-135.jpg',
    banner: '',
    type: {
      text: '免费',
      code: 0
    },
    hard: {
      text: '初级',
      code: 1,
    },
    price: 0,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: '北极小琪',
      avatar: 'https://img4.mukewang.com/5bcd983c0001264203500350-80-80.jpg',
      job: '算法工程师',
      introduction: ''
    },
    labels: ['计算机网络', '算法与数据结构']
  },
  {
    category: {
      text: '计算机基础',
      code: 3,
    },
    title: 'Javascript实现二叉树算法',
    introduction: '感受JS与数据结构的魅力。 ',
    img: 'https://img3.mukewang.com/59ae0e2a0001307706000338-240-135.jpg',
    banner: '',
    type: {
      text: '免费',
      code: 0
    },
    hard: {
      text: '中级',
      code: 2,
    },
    price: 0,
    isDiscount: false,
    discountPrice: 0,
    teacher: {
      name: 'coding迪斯尼',
      avatar: 'https://img.mukewang.com/57a333b400010f6006400478-80-80.jpg',
      job: '全栈工程师',
      introduction: ''
    },
    labels: ['JavaScript', '算法与数据结构']
  }
]"""
    txt = demjson.decode(txt)
    for index, one in enumerate(txt):
        category_code = one["category"]["code"]
        type_code = one["type"]["code"]
        hard_code = one["hard"]["code"]
        teacher_name = one["teacher"]["name"]
        labels = one["labels"]
        script = None
        try:
            script = one["script"]["code"]
            del one["script"]
        except KeyError:
            pass
        del one["category"]
        del one["type"]
        del one["hard"]
        del one["teacher"]
        del one["labels"]
        if not script:
            lesson = Lesson(**one, category=LabelType.objects.get(code=category_code),
                            type=LessonType.objects.get(code=type_code),
                            hard=LessonHardType.objects.get(code=hard_code),
                            teacher=Teacher.objects.get(name=teacher_name),
                            )
        else:
            lesson = Lesson(**one, category=LabelType.objects.get(code=category_code),
                            type=LessonType.objects.get(code=type_code),
                            hard=LessonHardType.objects.get(code=hard_code),
                            teacher=Teacher.objects.get(name=teacher_name),
                            script=LessonScript.objects.get(code=script)
                            )
        try:
            lesson.save()
            lesson.labels.set(Label.objects.filter(title__in=labels))
            lesson.save()
        except django.db.utils.IntegrityError:
            pass


def import_lesson_script():
    txt = """[
      {
        category: {
          text: '前端开发',
          code: 0,
        },
        title: 'TypeScript  系统入门到项目实战 趁早学习提高职场竞争力',
        introduction: 'Dell老师专为TypeScript小白打造的，全栈式教学TS入门课程',
        img: 'https://img.mukewang.com/szimg/5e1d990f0885d97306000338-360-202.jpg',
        banner: 'https://img1.sycdn.imooc.com/szimg/5e1d991809c5318e40000800.jpg',
        type: {
          text: '实战',
          code: 1
        },
        hard: {
          text: '中级',
          code: 2,
        },
        price: 266,
        isDiscount: true,
        discountPrice: 216,
        teacher: {
          name: 'Dell',
          avatar: 'https://img1.sycdn.imooc.com/user/5abe468b0001664107390741-100-100.jpg',
          job: 'Web前端工程师',
          introduction: 'BAT资深前端工程师，负责数据平台技术研发。曾任去哪儿网高级前端工程师，主导去哪儿网内部前端监控系统设计，负责去哪儿网门票用户端的前端设计开发。曾任国内知名培训机构高级前端讲师，负责React，Angular，Vue，Hybrid，RN的课程讲授，具备丰富前端授课经验。对优雅编程及工程化有深度思考及见解，教会你写代码，同时帮助你把代码写的更漂亮！'
        },
        labels: ['TypeScript']
      },
      {
        category: {
          text: '前端开发',
          code: 0,
        },
        title: '前端要学的测试课 从Jest入门到 TDD/BDD双实战',
        introduction: '以Vue/React项目进行自动化测试实战，让你技术水平和架构思维双提升',
        img: 'https://img.mukewang.com/szimg/5d36a6000837a91d06000338-360-202.jpg',
        banner: 'https://img.mukewang.com/szimg/5d36a60709f5666320000400.jpg',
        type: {
          text: '实战',
          code: 1
        },
        hard: {
          text: '中级',
          code: 2,
        },
        price: 299,
        isDiscount: false,
        discountPrice: 0,
        teacher: {
          name: 'Dell',
          avatar: 'https://img1.sycdn.imooc.com/user/5abe468b0001664107390741-100-100.jpg',
          job: 'Web前端工程师',
          introduction: 'BAT资深前端工程师，负责数据平台技术研发。曾任去哪儿网高级前端工程师，主导去哪儿网内部前端监控系统设计，负责去哪儿网门票用户端的前端设计开发。曾任国内知名培训机构高级前端讲师，负责React，Angular，Vue，Hybrid，RN的课程讲授，具备丰富前端授课经验。对优雅编程及工程化有深度思考及见解，教会你写代码，同时帮助你把代码写的更漂亮！'
        },
        labels: ['Vue.js', 'React.js']
      },
      {
        category: {
          text: '前端开发',
          code: 0,
        },
        title: '从基础到实战 手把手带你掌握新版Webpack4.0',
        introduction: '知识点+项目实例+原理讲解 全方位解析Webpack4最新版本',
        img: 'https://img.mukewang.com/szimg/5c6bdb3e08e4674a06000338-360-202.jpg',
        banner: 'https://img.mukewang.com/szimg/5c6bdb4f09c2401020000400.jpg',
        type: {
          text: '实战',
          code: 1
        },
        hard: {
          text: '中级',
          code: 2,
        },
        price: 299,
        isDiscount: false,
        discountPrice: 0,
        teacher: {
          name: 'Dell',
          avatar: 'https://img1.sycdn.imooc.com/user/5abe468b0001664107390741-100-100.jpg',
          job: 'Web前端工程师',
          introduction: 'BAT资深前端工程师，负责数据平台技术研发。曾任去哪儿网高级前端工程师，主导去哪儿网内部前端监控系统设计，负责去哪儿网门票用户端的前端设计开发。曾任国内知名培训机构高级前端讲师，负责React，Angular，Vue，Hybrid，RN的课程讲授，具备丰富前端授课经验。对优雅编程及工程化有深度思考及见解，教会你写代码，同时帮助你把代码写的更漂亮！'
        },
        labels: ['Vue.js', 'React.js']
      },
      {
        category: {
          text: '前端开发',
          code: 0,
        },
        title: 'React服务器渲染原理解析与实践',
        introduction: '从零开始，带你搭建属于自己的React SSR框架，从根本上解决客户端渲染问题 。',
        img: 'https://img.mukewang.com/szimg/5ba07190000135b505400300-360-202.jpg',
        banner: 'https://img.mukewang.com/szimg/5c6bdb4f09c2401020000400.jpg',
        type: {
          text: '实战',
          code: 1
        },
        hard: {
          text: '中级',
          code: 2,
        },
        price: 299,
        isDiscount: false,
        discountPrice: 0,
        teacher: {
          name: 'Dell',
          avatar: 'https://img1.sycdn.imooc.com/user/5abe468b0001664107390741-100-100.jpg',
          job: 'Web前端工程师',
          introduction: 'BAT资深前端工程师，负责数据平台技术研发。曾任去哪儿网高级前端工程师，主导去哪儿网内部前端监控系统设计，负责去哪儿网门票用户端的前端设计开发。曾任国内知名培训机构高级前端讲师，负责React，Angular，Vue，Hybrid，RN的课程讲授，具备丰富前端授课经验。对优雅编程及工程化有深度思考及见解，教会你写代码，同时帮助你把代码写的更漂亮！'
        },
        labels: ['React.js']
      },
      {
        category: {
          text: '前端开发',
          code: 0,
        },
        title: 'React开发简书项目 从零基础入门到实战 ',
        introduction: '主流新技术 React-redux，React-router4，贯穿基础语法及项目实战。',
        img: 'https://img.mukewang.com/szimg/5b3082da0001d7e905400300-360-202.jpg',
        banner: 'https://img.mukewang.com/szimg/5b508ba90001116220000560.jpg',
        type: {
          text: '实战',
          code: 1
        },
        hard: {
          text: '中级',
          code: 2,
        },
        price: 299,
        isDiscount: false,
        discountPrice: 0,
        teacher: {
          name: 'Dell',
          avatar: 'https://img1.sycdn.imooc.com/user/5abe468b0001664107390741-100-100.jpg',
          job: 'Web前端工程师',
          introduction: 'BAT资深前端工程师，负责数据平台技术研发。曾任去哪儿网高级前端工程师，主导去哪儿网内部前端监控系统设计，负责去哪儿网门票用户端的前端设计开发。曾任国内知名培训机构高级前端讲师，负责React，Angular，Vue，Hybrid，RN的课程讲授，具备丰富前端授课经验。对优雅编程及工程化有深度思考及见解，教会你写代码，同时帮助你把代码写的更漂亮！'
        },
        labels: ['React.js']
      },
      {
        category: {
          text: '前端开发',
          code: 0,
        },
        title: '经典再升级-新版Vue2.6开发去哪儿网App 从零基础入门到实战项目',
        introduction: '基于Vue最新版本，从基础语法到完整项目，一课掌握Vue基础知识点',
        img: 'https://img.mukewang.com/szimg/5b3082da0001d7e905400300-360-202.jpg',
        banner: 'https://img.mukewang.com/szimg/5b50858100011b9220000560.jpg',
        type: {
          text: '实战',
          code: 1
        },
        hard: {
          text: '中级',
          code: 2,
        },
        price: 266,
        isDiscount: false,
        discountPrice: 0,
        teacher: {
          name: 'Dell',
          avatar: 'https://img1.sycdn.imooc.com/user/5abe468b0001664107390741-100-100.jpg',
          job: 'Web前端工程师',
          introduction: 'BAT资深前端工程师，负责数据平台技术研发。曾任去哪儿网高级前端工程师，主导去哪儿网内部前端监控系统设计，负责去哪儿网门票用户端的前端设计开发。曾任国内知名培训机构高级前端讲师，负责React，Angular，Vue，Hybrid，RN的课程讲授，具备丰富前端授课经验。对优雅编程及工程化有深度思考及见解，教会你写代码，同时帮助你把代码写的更漂亮！'
        },
        labels: ['Vue.js']
      },
      {
        category: {
          text: '前端开发',
          code: 0,
        },
        title: '下一代前端开发语言 TypeScript从零重构axios',
        introduction: '掌握TS，学习vue3.0源码必备基础！课程从零开始重构功能完整的JS库，是学习造轮子的不二之选！',
        img: 'https://img.mukewang.com/szimg/5cbf00c608f52a3b06000338-360-202.jpg',
        banner: 'https://img.mukewang.com/szimg/5cbf00cb092626c820000400.jpg',
        type: {
          text: '实战',
          code: 1
        },
        hard: {
          text: '中级',
          code: 2,
        },
        price: 388,
        isDiscount: true,
        discountPrice: 348,
        teacher: {
          name: 'ustbhuangyi',
          avatar: 'https://img.mukewang.com/user/577baef700019c4501400140-100-100.jpg',
          job: 'Web前端工程师',
          introduction: '曾任职百度、滴滴，现担任Zoom前端架构师，推进前后端分离架构方案，同时负责 Zoom 自研组件库。公众号《老黄的前端私房菜》，《Vue.js 技术揭秘》独立作者，《Vue.js 权威指南》主要作者，开源项目 better-scroll 作者。曾主导滴滴开源项目 cube-ui，建立团队技术博客。'
        },
        labels: ['TypeScript']
      },
      {
        category: {
          text: '前端开发',
          code: 0,
        },
        title: 'Vue.js2.5+cube-ui重构饿了么App（经典再升级）',
        introduction: '掌握Vue1.0到2.0再到2.5最全版本应用与迭代，打造极致流畅的WebApp',
        img: 'https://img.mukewang.com/szimg/5becd5ad0001b89306000338-360-202.jpg',
        banner: 'https://img1.sycdn.imooc.com/szimg/5becd5bc0001d45120000560.jpg',
        type: {
          text: '实战',
          code: 1
        },
        hard: {
          text: '中级',
          code: 2,
        },
        price: 198,
        isDiscount: false,
        discountPrice: 0,
        teacher: {
          name: 'ustbhuangyi',
          avatar: 'https://img.mukewang.com/user/577baef700019c4501400140-100-100.jpg',
          job: 'Web前端工程师',
          introduction: '曾任职百度、滴滴，现担任Zoom前端架构师，推进前后端分离架构方案，同时负责 Zoom 自研组件库。公众号《老黄的前端私房菜》，《Vue.js 技术揭秘》独立作者，《Vue.js 权威指南》主要作者，开源项目 better-scroll 作者。曾主导滴滴开源项目 cube-ui，建立团队技术博客。'
        },
        labels: ['Vue.js']
      },
      {
        category: {
          text: '前端开发',
          code: 0,
        },
        title: 'Vue.js源码全方位深入解析 （含Vue3.0源码分析）',
        introduction: '全方位讲解 Vue.js 源码，学精学透 Vue 原理实现，进阶高级工程师',
        img: 'https://img.mukewang.com/szimg/5b17bad10001535305400300-360-202.jpg',
        banner: 'https://img1.sycdn.imooc.com/szimg/5b508b4200014f8a20000560.jpg',
        type: {
          text: '实战',
          code: 1
        },
        hard: {
          text: '高级',
          code: 3,
        },
        price: 488,
        isDiscount: false,
        discountPrice: 0,
        teacher: {
          name: 'ustbhuangyi',
          avatar: 'https://img.mukewang.com/user/577baef700019c4501400140-100-100.jpg',
          job: 'Web前端工程师',
          introduction: '曾任职百度、滴滴，现担任Zoom前端架构师，推进前后端分离架构方案，同时负责 Zoom 自研组件库。公众号《老黄的前端私房菜》，《Vue.js 技术揭秘》独立作者，《Vue.js 权威指南》主要作者，开源项目 better-scroll 作者。曾主导滴滴开源项目 cube-ui，建立团队技术博客。'
        },
        labels: ['Vue.js']
      },
      {
        category: {
          text: '后端开发',
          code: 1,
        },
        title: 'Python Flask高级编程之RESTFul API前后端分离精讲',
        introduction: 'RESTFul+权限管理+token令牌+扩展flask=提升编程思维',
        img: 'https://img.mukewang.com/szimg/5b061fe30001db4505400300-360-202.jpg',
        banner: 'https://img1.sycdn.imooc.com/szimg/5be39cb6000127a520000559.jpg',
        type: {
          text: '实战',
          code: 1
        },
        hard: {
          text: '中级',
          code: 2,
        },
        price: 148,
        isDiscount: false,
        discountPrice: 0,
        teacher: {
          name: '7七月',
          avatar: 'https://img.mukewang.com/user/54584e2c00010a2c02200220-100-100.jpg',
          job: '全栈工程师',
          introduction: '十年研发及团队管理经验，对程序员面临的各种问题深有体会；精通Python、Java、Node.js、JavaScript等语言，对Web的基础研发、高并发处理与分布式有非常深入的理解。课程讲解深入浅出，极为擅长培养学生的编程思维。'
        },
        labels: ['Python']
      },
      {
        category: {
          text: '后端开发',
          code: 1,
        },
        title: 'Python Flask高级编程之从0到1开发《鱼书》精品项目',
        introduction: '7月老师深入浅出剖析Flask核心机制，和你一起探讨Python高级编程',
        img: 'https://img.mukewang.com/szimg/5ab84f650001f0b005400300-360-202.jpg',
        banner: 'https://img.mukewang.com/szimg/5b51c78300015e0220000560.jpg',
        type: {
          text: '实战',
          code: 1
        },
        hard: {
          text: '中级',
          code: 2,
        },
        price: 399,
        isDiscount: false,
        discountPrice: 0,
        teacher: {
          name: '7七月',
          avatar: 'https://img.mukewang.com/user/54584e2c00010a2c02200220-100-100.jpg',
          job: '全栈工程师',
          introduction: '十年研发及团队管理经验，对程序员面临的各种问题深有体会；精通Python、Java、Node.js、JavaScript等语言，对Web的基础研发、高并发处理与分布式有非常深入的理解。课程讲解深入浅出，极为擅长培养学生的编程思维。'
        },
        labels: ['Python']
      },
      {
        category: {
          text: '后端开发',
          code: 1,
        },
        title: '全面系统Python3.8入门+进阶  (程序员必备第二语言)',
        introduction: '语法精讲/配套练习+思考题/原生爬虫实战',
        img: 'https://img.mukewang.com/szimg/59b8a486000107fb05400300-360-202.jpg',
        banner: 'https://img.mukewang.com/szimg/5b51c78300015e0220000560.jpg',
        type: {
          text: '实战',
          code: 1
        },
        hard: {
          text: '初级',
          code: 1,
        },
        price: 366,
        isDiscount: false,
        discountPrice: 0,
        teacher: {
          name: '7七月',
          avatar: 'https://img.mukewang.com/user/54584e2c00010a2c02200220-100-100.jpg',
          job: '全栈工程师',
          introduction: '十年研发及团队管理经验，对程序员面临的各种问题深有体会；精通Python、Java、Node.js、JavaScript等语言，对Web的基础研发、高并发处理与分布式有非常深入的理解。课程讲解深入浅出，极为擅长培养学生的编程思维。'
        },
        labels: ['Python']
      },
      {
        category: {
          text: '后端开发',
          code: 1,
        },
        title: 'Spring Cloud微服务实战 打造企业级优惠券系统',
        introduction: '面试、毕设、升职优选：从0开始，Java主流框架，构建电商都在用的优惠券系统',
        img: 'https://img.mukewang.com/szimg/5d5f7da0093eb24212000676-360-202.jpg',
        banner: 'https://img.mukewang.com/szimg/5d5f7da709b71ad320000400.jpg',
        type: {
          text: '实战',
          code: 1
        },
        hard: {
          text: '中级',
          code: 2,
        },
        price: 299,
        isDiscount: false,
        discountPrice: 0,
        teacher: {
          name: '勤一',
          avatar: 'https://img.mukewang.com/user/5c36c432000158e609600960-100-100.jpg',
          job: 'Java开发工程师',
          introduction: '高级技术专家，曾就职于微软、腾讯，目前就职于知名电商互联网公司，拥有丰富的大型项目开发经验。多年IT从业经验，一线软件设计、研发，熟悉C、CPP、Java等开发语言，对Web框架、数据存储、架构设计等有深入的理解和实践。'
        },
        labels: ['Java', 'Spring Cloud']
      },
      {
        category: {
          text: '后端开发',
          code: 1,
        },
        title: '基于Spring Cloud微服务架构  广告系统设计与实现（2020新版）',
        introduction: '掌握互联网广告系统，学会为公司创收，你自然就是最抢手的人才。可用于毕设。',
        img: 'https://img.mukewang.com/szimg/5d2e7ada09946f6f12000676-360-202.jpg',
        banner: 'https://img.mukewang.com/szimg/5d2e7ae20942ca4d20000400.jpg',
        type: {
          text: '实战',
          code: 1
        },
        hard: {
          text: '中级',
          code: 2,
        },
        price: 299,
        isDiscount: false,
        discountPrice: 0,
        teacher: {
          name: '勤一',
          avatar: 'https://img.mukewang.com/user/5c36c432000158e609600960-100-100.jpg',
          job: 'Java开发工程师',
          introduction: '高级技术专家，曾就职于微软、腾讯，目前就职于知名电商互联网公司，拥有丰富的大型项目开发经验。多年IT从业经验，一线软件设计、研发，熟悉C、CPP、Java等开发语言，对Web框架、数据存储、架构设计等有深入的理解和实践。'
        },
        labels: ['Java', 'Spring Cloud']
      },
      {
        category: {
          text: '后端开发',
          code: 1,
        },
        title: 'Java分布式后台开发  Spring Boot+Kafka+HBase',
        introduction: '从零到一完整搭建企业级架构的通用卡包工程，让你开发技迈向到百度T4+ 。',
        img: 'https://img1.sycdn.imooc.com/szimg/5b55356c0001af0105400300-360-202.jpg',
        banner: 'https://img.mukewang.com/szimg/5b5535400001b72e20000560.jpg',
        type: {
          text: '实战',
          code: 1
        },
        hard: {
          text: '中级',
          code: 2,
        },
        price: 299,
        isDiscount: false,
        discountPrice: 0,
        teacher: {
          name: '勤一',
          avatar: 'https://img.mukewang.com/user/5c36c432000158e609600960-100-100.jpg',
          job: 'Java开发工程师',
          introduction: '高级技术专家，曾就职于微软、腾讯，目前就职于知名电商互联网公司，拥有丰富的大型项目开发经验。多年IT从业经验，一线软件设计、研发，熟悉C、CPP、Java等开发语言，对Web框架、数据存储、架构设计等有深入的理解和实践。'
        },
        labels: ['Java', 'SpringBoot']
      },
      {
        category: {
          text: '移动端开发',
          code: 2,
        },
        title: 'Flutter从入门到进阶 实战携程网App',
        introduction: '从入门到进阶，系统掌握Flutter开发核心技术',
        img: 'https://img.mukewang.com/szimg/5c7e6835087ef3d806000338-360-202.jpg',
        banner: 'https://img.mukewang.com/szimg/5c9304cd097d093d20000400.jpg',
        type: {
          text: '实战',
          code: 1
        },
        hard: {
          text: '中级',
          code: 2,
        },
        price: 348,
        isDiscount: false,
        discountPrice: 0,
        teacher: {
          name: 'CrazyCodeBoy',
          avatar: 'https://img.mukewang.com/user/545847e20001163c02200220-100-100.jpg',
          job: '移动端开发工程师',
          introduction: '深耕移动端领域8年有余，全栈技术专家，CSDN 博客专家，擅长Android、iOS、Flutter、React Native以及小程序项目开发，负责过前端、Java、Android、iOS等多平台项目的研发，有多款React Native App上线及管理经验。他享受编程、热爱开源、酷爱分享，平时除了写写博客外，也分享一些开源技术干货 · Github'
        },
        labels: ['React native', 'Flutter']
      },
      {
        category: {
          text: '移动端开发',
          code: 2,
        },
        title: '新版React Native从入门到实战打造高质量上线App（再升级）',
        introduction: '解锁React Native开发应用新姿势，一网打尽React Native新版本热门技术',
        img: 'https://img.mukewang.com/szimg/5db6916d08d81b8b12000676-360-202.jpg',
        banner: 'https://img.mukewang.com/szimg/5db69b9c086653ff40001120.jpg',
        type: {
          text: '实战',
          code: 1
        },
        hard: {
          text: '中级',
          code: 2,
        },
        price: 399,
        isDiscount: false,
        discountPrice: 0,
        script: {
          text: '升级',
          code: 1
        },
        teacher: {
          name: 'CrazyCodeBoy',
          avatar: 'https://img.mukewang.com/user/545847e20001163c02200220-100-100.jpg',
          job: '移动端开发工程师',
          introduction: '深耕移动端领域8年有余，全栈技术专家，CSDN 博客专家，擅长Android、iOS、Flutter、React Native以及小程序项目开发，负责过前端、Java、Android、iOS等多平台项目的研发，有多款React Native App上线及管理经验。他享受编程、热爱开源、酷爱分享，平时除了写写博客外，也分享一些开源技术干货 · Github'
        },
        labels: ['React native']
      },
      {
        category: {
          text: '移动端开发',
          code: 2,
        },
        title: '实战企业级项目 践行App重构之路',
        introduction: '真实还原大厂App重构过程，以组件化和插件化为核心，进击高级工程师必备',
        img: 'https://img.mukewang.com/szimg/5e4f4f66098b14c512000676-360-202.jpg',
        banner: 'https://img.mukewang.com/szimg/5e4f4f7009aeb1a920000400.jpg',
        type: {
          text: '实战',
          code: 1
        },
        hard: {
          text: '中级',
          code: 2,
        },
        price: 299,
        isDiscount: false,
        discountPrice: 0,
        script: {
          text: '升级',
          code: 1
        },
        teacher: {
          name: 'qndroid',
          avatar: 'http://img3.sycdn.imooc.com/5333a0350001692e02200220-160-160.jpg',
          job: '移动开发工程师',
          introduction: '多年Android开发经验，曾任职于优酷等一线互联网企业，现就职于快手基础架构部，有丰富的Android应用架构和SDK开发经验，喜欢分享，授课风格循序渐进，擅长培养学生的编程思维，深受学员好评。'
        },
        labels: ['Android']
      },
      {
        category: {
          text: '移动端开发',
          code: 2,
        },
        title: '企业级Android应用架构设计与开发',
        introduction: '一门能助你掌握企业级架构设计、功能开发，冲击大厂Android中高级工程师职位的课程',
        img: 'https://img.mukewang.com/szimg/5d5e6d1f0983ee0112000676-360-202.jpg',
        banner: 'https://img1.sycdn.imooc.com/szimg/5d5e6d2809b8706c20000400.jpg',
        type: {
          text: '实战',
          code: 1
        },
        hard: {
          text: '中级',
          code: 2,
        },
        price: 299,
        isDiscount: false,
        discountPrice: 0,
        script: {
          text: '升级',
          code: 1
        },
        teacher: {
          name: 'qndroid',
          avatar: 'http://img3.sycdn.imooc.com/5333a0350001692e02200220-160-160.jpg',
          job: '移动开发工程师',
          introduction: '多年Android开发经验，曾任职于优酷等一线互联网企业，现就职于快手基础架构部，有丰富的Android应用架构和SDK开发经验，喜欢分享，授课风格循序渐进，擅长培养学生的编程思维，深受学员好评。'
        },
        labels: ['Android']
      },
      {
        category: {
          text: '移动端开发',
          code: 2,
        },
        title: 'Gradle3.0自动化项目构建技术精讲+实战',
        introduction: '全面覆盖Gradle核心知识和高级用法，高级工程师必备技能！',
        img: 'https://img.mukewang.com/szimg/5acf37460001aa3405400300-360-202.jpg',
        banner: 'https://img.mukewang.com/szimg/5b5085f900017de520000560.jpg',
        type: {
          text: '实战',
          code: 1
        },
        hard: {
          text: '中级',
          code: 2,
        },
        price: 199,
        isDiscount: false,
        discountPrice: 0,
        script: {
          text: '升级',
          code: 1
        },
        teacher: {
          name: 'qndroid',
          avatar: 'http://img3.sycdn.imooc.com/5333a0350001692e02200220-160-160.jpg',
          job: '移动开发工程师',
          introduction: '多年Android开发经验，曾任职于优酷等一线互联网企业，现就职于快手基础架构部，有丰富的Android应用架构和SDK开发经验，喜欢分享，授课风格循序渐进，擅长培养学生的编程思维，深受学员好评。'
        },
        labels: ['Android']
      },
      {
        category: {
          text: '计算机基础',
          code: 3,
        },
        title: '玩转算法系列--图论精讲  面试升职必备（Java版）',
        introduction: '由于图论算法本身的复杂性和抽象性，让同学们头疼不已，这次bobo带你彻底玩转图论，克服对图论问题的恐惧心理',
        img: 'https://img1.sycdn.imooc.com/szimg/5d31765d08c90cba06000338-360-202.jpg',
        banner: 'https://img.mukewang.com/szimg/5d3176630945ccf020000288.jpg',
        type: {
          text: '实战',
          code: 1
        },
        hard: {
          text: '中级',
          code: 2,
        },
        price: 348,
        isDiscount: false,
        discountPrice: 0,
        teacher: {
          name: 'liuyubobobo',
          avatar: 'https://img1.sycdn.imooc.com/user/5347593e00010cfb01400140-100-100.jpg',
          job: '算法大牛 ACM亚洲区奖牌获得者',
          introduction: '创业者，全栈工程师，持续学习者。对技术开发，产品设计、前后端，ios，html5，智能算法等领域均有接触；拥有多款独立App作品；对一切可编程的东西有浓厚兴趣，对游戏编程格外感兴趣。相信编程改变一切。'
        },
        labels: ['算法和数据结构']
      },
      {
        category: {
          text: '计算机基础',
          code: 3,
        },
        title: '玩转算法系列--数据结构精讲 更适合0算法基础入门到进阶（java版）',
        introduction: '体系完整，细致入微，0基础入门：动态数组/栈/队列/链表/BST/堆/线段树/Trie/并查集/AVL/红黑树…',
        img: 'https://img1.sycdn.imooc.com/szimg/5ad05dc00001eae705400300-360-202.jpg',
        banner: 'https://img.mukewang.com/szimg/5b5086220001ef9420000560.jpg',
        type: {
          text: '实战',
          code: 1
        },
        hard: {
          text: '中级',
          code: 2,
        },
        price: 299,
        isDiscount: false,
        discountPrice: 0,
        teacher: {
          name: 'liuyubobobo',
          avatar: 'https://img1.sycdn.imooc.com/user/5347593e00010cfb01400140-100-100.jpg',
          job: '算法大牛 ACM亚洲区奖牌获得者',
          introduction: '创业者，全栈工程师，持续学习者。对技术开发，产品设计、前后端，ios，html5，智能算法等领域均有接触；拥有多款独立App作品；对一切可编程的东西有浓厚兴趣，对游戏编程格外感兴趣。相信编程改变一切。'
        },
        labels: ['算法和数据结构']
      },
      {
        category: {
          text: '计算机基础',
          code: 3,
        },
        title: '结合编程学数学 专为程序员设计的线性代数',
        introduction: '创新设计，通俗易懂。用编程的方式学数学。这一次，bobo老师带你彻底征服线性代数',
        img: 'https://img1.sycdn.imooc.com/szimg/5b5835a60001907e05400300-360-202.jpg',
        banner: 'https://img1.sycdn.imooc.com/szimg/5b5835cb0001d0c120000560.jpg',
        type: {
          text: '实战',
          code: 1
        },
        hard: {
          text: '初级',
          code: 1,
        },
        price: 348,
        isDiscount: false,
        discountPrice: 0,
        teacher: {
          name: 'liuyubobobo',
          avatar: 'https://img1.sycdn.imooc.com/user/5347593e00010cfb01400140-100-100.jpg',
          job: '算法大牛 ACM亚洲区奖牌获得者',
          introduction: '创业者，全栈工程师，持续学习者。对技术开发，产品设计、前后端，ios，html5，智能算法等领域均有接触；拥有多款独立App作品；对一切可编程的东西有浓厚兴趣，对游戏编程格外感兴趣。相信编程改变一切。'
        },
        labels: ['数学']
      },
      {
        category: {
          text: '计算机基础',
          code: 3,
        },
        title: '看的见的算法 7个经典应用诠释算法精髓',
        introduction: '课程重应用、重实践、重思维，真正应用于实际工作开发中，也可作为毕设作品、面试项目。',
        img: 'https://img1.sycdn.imooc.com/szimg/59b2766f000190d505400300-360-202.jpg',
        banner: 'https://img.mukewang.com/szimg/5b4f355a0001852520000520.jpg',
        type: {
          text: '实战',
          code: 1
        },
        hard: {
          text: '初级',
          code: 1,
        },
        price: 248,
        isDiscount: false,
        discountPrice: 0,
        teacher: {
          name: 'liuyubobobo',
          avatar: 'https://img1.sycdn.imooc.com/user/5347593e00010cfb01400140-100-100.jpg',
          job: '算法大牛 ACM亚洲区奖牌获得者',
          introduction: '创业者，全栈工程师，持续学习者。对技术开发，产品设计、前后端，ios，html5，智能算法等领域均有接触；拥有多款独立App作品；对一切可编程的东西有浓厚兴趣，对游戏编程格外感兴趣。相信编程改变一切。'
        },
        labels: ['算法和数据结构']
      },
      {
        category: {
          text: '前沿技术',
          code: 4,
        },
        title: '看的见的算法 Zookeeper源码分析',
        introduction: '“分而治之”逐一攻克Zookeeper框架各个组件的源码',
        img: 'https://img.mukewang.com/szimg/5d1ad17f08cd16e800000000-360-202.jpg',
        banner: 'https://img.mukewang.com/szimg/5b4f355a0001852520000520.jpg',
        type: {
          text: '实战',
          code: 1
        },
        hard: {
          text: '中级',
          code: 2,
        },
        price: 388,
        isDiscount: false,
        discountPrice: 0,
        teacher: {
          name: '城南大师兄',
          avatar: 'https://img1.sycdn.imooc.com/user/5cac7e810001fe7705270698-100-100.jpg',
          job: '国内知名公司架构师',
          introduction: '目前主要负责后端架构设计，具有十多年一线开发和架构经验，拥有丰富的高性能、高并发处理以及大型服务器软件设计架构经验。深谙各种源码。工作中常常和千万级高并发的问题“正面硬钢” ，因此在高并发调优等方面积累了丰富的实战经验。十几年的架构经验，让讲师早已将理论和实践锻造的炉火纯青。如果你想学习他密不外传的工作‘渡劫’经验，讲师等你打Call~'
        },
        labels: ['微服务']
      },
      {
        category: {
          text: '前沿技术',
          code: 4,
        },
        title: '学习Hyperledger Fabric实战联盟链',
        introduction: '兼顾区块链应用层和底层  进击区块链工程师',
        img: 'https://img.mukewang.com/szimg/5b73d7f60001dc1e05400300-360-202.jpg',
        banner: 'https://img1.sycdn.imooc.com/szimg/5b73d7fc0001e07720000560.jpg',
        type: {
          text: '实战',
          code: 1
        },
        hard: {
          text: '高级',
          code: 3,
        },
        price: 266,
        isDiscount: false,
        discountPrice: 0,
        teacher: {
          name: '自游蜗牛',
          avatar: 'https://img.mukewang.com/user/5b6949e20001c6bf10801080-100-100.jpg',
          job: '区块链底层工程师',
          introduction: '现就职于某世界500强区块链团队，从事区块链底层研究以及BAAS平台搭建。精通区块链底层存储、共识等技术，职业方向偏重联盟链体系。'
        },
        labels: ['区块链']
      },
      {
        category: {
          text: '前沿技术',
          code: 4,
        },
        title: '深度学习之目标检测常用算法原理+实践精讲',
        introduction: '从原理（YOLO / Faster RCNN / SSD / 文本检测 / 多任务网络）到场景实战，掌握目标检测核心技术',
        img: 'https://img1.sycdn.imooc.com/szimg/5bfb523c0001290905400300-360-202.jpg',
        banner: 'https://img1.sycdn.imooc.com/szimg/5bfb52480001858920000559.jpg',
        type: {
          text: '实战',
          code: 1
        },
        hard: {
          text: '高级',
          code: 3,
        },
        price: 499,
        isDiscount: false,
        discountPrice: 0,
        teacher: {
          name: '会写代码的好厨师',
          avatar: 'https://img1.sycdn.imooc.com/user/5b8618950001cd9101440146-100-100.jpg',
          job: '资深机器学习工程师',
          introduction: '现就职于某世界500强区块链团队，从事区块链底层研究以及BAAS平台搭建。精通区块链底层存储、共识等技术，职业方向偏重联盟链体系。'
        },
        labels: ['机器学习']
      },
      {
        category: {
          text: '前沿技术',
          code: 4,
        },
        title: '看的见的算法 Zookeeper源码分析',
        introduction: '“分而治之”逐一攻克Zookeeper框架各个组件的源码',
        img: 'https://img.mukewang.com/szimg/5d1ad17f08cd16e800000000-360-202.jpg',
        banner: 'https://img.mukewang.com/szimg/5b4f355a0001852520000520.jpg',
        type: {
          text: '实战',
          code: 1
        },
        hard: {
          text: '中级',
          code: 2,
        },
        price: 388,
        isDiscount: false,
        discountPrice: 0,
        teacher: {
          name: '城南大师兄',
          avatar: 'https://img1.sycdn.imooc.com/user/5cac7e810001fe7705270698-100-100.jpg',
          job: '国内知名公司架构师',
          introduction: '目前主要负责后端架构设计，具有十多年一线开发和架构经验，拥有丰富的高性能、高并发处理以及大型服务器软件设计架构经验。深谙各种源码。工作中常常和千万级高并发的问题“正面硬钢” ，因此在高并发调优等方面积累了丰富的实战经验。十几年的架构经验，让讲师早已将理论和实践锻造的炉火纯青。如果你想学习他密不外传的工作‘渡劫’经验，讲师等你打Call~'
        },
        labels: ['微服务']
      },
      {
        category: {
          text: '前沿技术',
          code: 4,
        },
        title: '学习Hyperledger Fabric实战联盟链',
        introduction: '兼顾区块链应用层和底层  进击区块链工程师',
        img: 'https://img.mukewang.com/szimg/5b73d7f60001dc1e05400300-360-202.jpg',
        banner: 'https://img1.sycdn.imooc.com/szimg/5b73d7fc0001e07720000560.jpg',
        type: {
          text: '实战',
          code: 1
        },
        hard: {
          text: '高级',
          code: 3,
        },
        price: 266,
        isDiscount: false,
        discountPrice: 0,
        teacher: {
          name: '自游蜗牛',
          avatar: 'https://img.mukewang.com/user/5b6949e20001c6bf10801080-100-100.jpg',
          job: '区块链底层工程师',
          introduction: '现就职于某世界500强区块链团队，从事区块链底层研究以及BAAS平台搭建。精通区块链底层存储、共识等技术，职业方向偏重联盟链体系。'
        },
        labels: ['区块链']
      },
      {
        category: {
          text: '前沿技术',
          code: 4,
        },
        title: '深度学习之目标检测常用算法原理+实践精讲',
        introduction: '从原理（YOLO / Faster RCNN / SSD / 文本检测 / 多任务网络）到场景实战，掌握目标检测核心技术',
        img: 'https://img1.sycdn.imooc.com/szimg/5bfb523c0001290905400300-360-202.jpg',
        banner: 'https://img1.sycdn.imooc.com/szimg/5bfb52480001858920000559.jpg',
        type: {
          text: '实战',
          code: 1
        },
        hard: {
          text: '高级',
          code: 3,
        },
        price: 499,
        isDiscount: false,
        discountPrice: 0,
        teacher: {
          name: '会写代码的好厨师',
          avatar: 'https://img1.sycdn.imooc.com/user/5b8618950001cd9101440146-100-100.jpg',
          job: '资深机器学习工程师',
          introduction: '现就职于某世界500强区块链团队，从事区块链底层研究以及BAAS平台搭建。精通区块链底层存储、共识等技术，职业方向偏重联盟链体系。'
        },
        labels: ['机器学习']
      },
      {
        category: {
          text: '前沿技术',
          code: 4,
        },
        title: '看的见的算法 Zookeeper源码分析',
        introduction: '“分而治之”逐一攻克Zookeeper框架各个组件的源码',
        img: 'https://img.mukewang.com/szimg/5d1ad17f08cd16e800000000-360-202.jpg',
        banner: 'https://img.mukewang.com/szimg/5b4f355a0001852520000520.jpg',
        type: {
          text: '实战',
          code: 1
        },
        hard: {
          text: '中级',
          code: 2,
        },
        price: 388,
        isDiscount: false,
        discountPrice: 0,
        teacher: {
          name: '城南大师兄',
          avatar: 'https://img1.sycdn.imooc.com/user/5cac7e810001fe7705270698-100-100.jpg',
          job: '国内知名公司架构师',
          introduction: '目前主要负责后端架构设计，具有十多年一线开发和架构经验，拥有丰富的高性能、高并发处理以及大型服务器软件设计架构经验。深谙各种源码。工作中常常和千万级高并发的问题“正面硬钢” ，因此在高并发调优等方面积累了丰富的实战经验。十几年的架构经验，让讲师早已将理论和实践锻造的炉火纯青。如果你想学习他密不外传的工作‘渡劫’经验，讲师等你打Call~'
        },
        labels: ['微服务']
      },
      {
        category: {
          text: '前沿技术',
          code: 4,
        },
        title: '学习Hyperledger Fabric实战联盟链',
        introduction: '兼顾区块链应用层和底层  进击区块链工程师',
        img: 'https://img.mukewang.com/szimg/5b73d7f60001dc1e05400300-360-202.jpg',
        banner: 'https://img1.sycdn.imooc.com/szimg/5b73d7fc0001e07720000560.jpg',
        type: {
          text: '实战',
          code: 1
        },
        hard: {
          text: '高级',
          code: 3,
        },
        price: 266,
        isDiscount: false,
        discountPrice: 0,
        teacher: {
          name: '自游蜗牛',
          avatar: 'https://img.mukewang.com/user/5b6949e20001c6bf10801080-100-100.jpg',
          job: '区块链底层工程师',
          introduction: '现就职于某世界500强区块链团队，从事区块链底层研究以及BAAS平台搭建。精通区块链底层存储、共识等技术，职业方向偏重联盟链体系。'
        },
        labels: ['区块链']
      },
      {
        category: {
          text: '前沿技术',
          code: 4,
        },
        title: '深度学习之目标检测常用算法原理+实践精讲',
        introduction: '从原理（YOLO / Faster RCNN / SSD / 文本检测 / 多任务网络）到场景实战，掌握目标检测核心技术',
        img: 'https://img1.sycdn.imooc.com/szimg/5bfb523c0001290905400300-360-202.jpg',
        banner: 'https://img1.sycdn.imooc.com/szimg/5bfb52480001858920000559.jpg',
        type: {
          text: '实战',
          code: 1
        },
        hard: {
          text: '高级',
          code: 3,
        },
        price: 499,
        isDiscount: false,
        discountPrice: 0,
        teacher: {
          name: '会写代码的好厨师',
          avatar: 'https://img1.sycdn.imooc.com/user/5b8618950001cd9101440146-100-100.jpg',
          job: '资深机器学习工程师',
          introduction: '现就职于某世界500强区块链团队，从事区块链底层研究以及BAAS平台搭建。精通区块链底层存储、共识等技术，职业方向偏重联盟链体系。'
        },
        labels: ['机器学习']
      },
      {
        category: {
          text: '前沿技术',
          code: 4,
        },
        title: '看的见的算法 Zookeeper源码分析',
        introduction: '“分而治之”逐一攻克Zookeeper框架各个组件的源码',
        img: 'https://img.mukewang.com/szimg/5d1ad17f08cd16e800000000-360-202.jpg',
        banner: 'https://img.mukewang.com/szimg/5b4f355a0001852520000520.jpg',
        type: {
          text: '实战',
          code: 1
        },
        hard: {
          text: '中级',
          code: 2,
        },
        price: 388,
        isDiscount: false,
        discountPrice: 0,
        teacher: {
          name: '城南大师兄',
          avatar: 'https://img1.sycdn.imooc.com/user/5cac7e810001fe7705270698-100-100.jpg',
          job: '国内知名公司架构师',
          introduction: '目前主要负责后端架构设计，具有十多年一线开发和架构经验，拥有丰富的高性能、高并发处理以及大型服务器软件设计架构经验。深谙各种源码。工作中常常和千万级高并发的问题“正面硬钢” ，因此在高并发调优等方面积累了丰富的实战经验。十几年的架构经验，让讲师早已将理论和实践锻造的炉火纯青。如果你想学习他密不外传的工作‘渡劫’经验，讲师等你打Call~'
        },
        labels: ['微服务']
      },
      {
        category: {
          text: '前沿技术',
          code: 4,
        },
        title: '学习Hyperledger Fabric实战联盟链',
        introduction: '兼顾区块链应用层和底层  进击区块链工程师',
        img: 'https://img.mukewang.com/szimg/5b73d7f60001dc1e05400300-360-202.jpg',
        banner: 'https://img1.sycdn.imooc.com/szimg/5b73d7fc0001e07720000560.jpg',
        type: {
          text: '实战',
          code: 1
        },
        hard: {
          text: '高级',
          code: 3,
        },
        price: 266,
        isDiscount: false,
        discountPrice: 0,
        teacher: {
          name: '自游蜗牛',
          avatar: 'https://img.mukewang.com/user/5b6949e20001c6bf10801080-100-100.jpg',
          job: '区块链底层工程师',
          introduction: '现就职于某世界500强区块链团队，从事区块链底层研究以及BAAS平台搭建。精通区块链底层存储、共识等技术，职业方向偏重联盟链体系。'
        },
        labels: ['区块链']
      },
      {
        category: {
          text: '前沿技术',
          code: 4,
        },
        title: '深度学习之目标检测常用算法原理+实践精讲',
        introduction: '从原理（YOLO / Faster RCNN / SSD / 文本检测 / 多任务网络）到场景实战，掌握目标检测核心技术',
        img: 'https://img1.sycdn.imooc.com/szimg/5bfb523c0001290905400300-360-202.jpg',
        banner: 'https://img1.sycdn.imooc.com/szimg/5bfb52480001858920000559.jpg',
        type: {
          text: '实战',
          code: 1
        },
        hard: {
          text: '高级',
          code: 3,
        },
        price: 499,
        isDiscount: false,
        discountPrice: 0,
        teacher: {
          name: '会写代码的好厨师',
          avatar: 'https://img1.sycdn.imooc.com/user/5b8618950001cd9101440146-100-100.jpg',
          job: '资深机器学习工程师',
          introduction: '现就职于某世界500强区块链团队，从事区块链底层研究以及BAAS平台搭建。精通区块链底层存储、共识等技术，职业方向偏重联盟链体系。'
        },
        labels: ['机器学习']
      },
      {
        category: {
          text: '云计算&大数据',
          code: 5,
        },
        title: 'SparkSQL极速入门  整合Kudu实现广告业务数据分析',
        introduction: '大数据工程师干货课程 带你从入门到实战掌握SparkSQL',
        img: 'https://img1.sycdn.imooc.com/szimg/5d844ae7089e674906000338-360-202.jpg',
        banner: 'https://img1.sycdn.imooc.com/szimg/5d844af609893ec140000800.jpg',
        type: {
          text: '实战',
          code: 1
        },
        hard: {
          text: '中级',
          code: 2,
        },
        price: 388,
        isDiscount: false,
        discountPrice: 0,
        teacher: {
          name: 'Michael_PK',
          avatar: 'https://img1.sycdn.imooc.com/user/533e4d510001c2ad02000200-100-100.jpg',
          job: '资深大数据架构师',
          introduction: '八年互联网公司一线研发经验，担任大数据架构师。主要从事基于Spark/Flink为核心打造的大数据公有云、私有云数据平台产品的研发。改造过Hadoop、Spark等框架的源码为云平台提供更高的执行性能。集群规模过万，有丰富的大数据项目实战经验以及授课经验(授课数千小时，深受学员好评)。'
        },
        labels: ['大数据']
      },
      {
        category: {
          text: '云计算&大数据',
          code: 5,
        },
        title: 'Spark进阶 大数据离线与实时项目实战',
        introduction: '大数据生态圈中多个框架(Spark/Hbase/Redis/Hadoop)的整合应用及调优',
        img: 'https://img1.sycdn.imooc.com/szimg/59f85ec90001103405400300-360-202.jpg',
        banner: 'https://img1.sycdn.imooc.com/szimg/5d844af609893ec140000800.jpg',
        type: {
          text: '实战',
          code: 1
        },
        hard: {
          text: '中级',
          code: 2,
        },
        price: 399,
        isDiscount: false,
        discountPrice: 0,
        teacher: {
          name: 'Michael_PK',
          avatar: 'https://img1.sycdn.imooc.com/user/533e4d510001c2ad02000200-100-100.jpg',
          job: '资深大数据架构师',
          introduction: '八年互联网公司一线研发经验，担任大数据架构师。主要从事基于Spark/Flink为核心打造的大数据公有云、私有云数据平台产品的研发。改造过Hadoop、Spark等框架的源码为云平台提供更高的执行性能。集群规模过万，有丰富的大数据项目实战经验以及授课经验(授课数千小时，深受学员好评)。'
        },
        labels: ['大数据']
      },
      {
        category: {
          text: '云计算&大数据',
          code: 5,
        },
        title: 'Spark Streaming实时流处理项目实战 ',
        introduction: 'Flume+Kafka+Spark Streaming 构建通用实时流处理平台',
        img: 'https://img1.sycdn.imooc.com/szimg/5c203a4b0001dcf306000338-360-202.jpg',
        banner: 'https://img.mukewang.com/szimg/5c203a520001d14320000560.jpg',
        type: {
          text: '实战',
          code: 1
        },
        hard: {
          text: '中级',
          code: 2,
        },
        price: 288,
        isDiscount: false,
        discountPrice: 0,
        teacher: {
          name: 'Michael_PK',
          avatar: 'https://img1.sycdn.imooc.com/user/533e4d510001c2ad02000200-100-100.jpg',
          job: '资深大数据架构师',
          introduction: '八年互联网公司一线研发经验，担任大数据架构师。主要从事基于Spark/Flink为核心打造的大数据公有云、私有云数据平台产品的研发。改造过Hadoop、Spark等框架的源码为云平台提供更高的执行性能。集群规模过万，有丰富的大数据项目实战经验以及授课经验(授课数千小时，深受学员好评)。'
        },
        labels: ['大数据']
      },
      {
        category: {
          text: '运维&测试',
          code: 6,
        },
        title: '跟着360架构师 学习Shell脚本编程',
        introduction: '30%知识讲解+70%实例操作 掌握Shell脚本编程能力',
        img: 'https://img1.sycdn.imooc.com/szimg/5c46c4a308ad3b3406000338-360-202.jpg',
        banner: 'https://img.mukewang.com/szimg/5c46c4ae099dc71320000560.jpg',
        type: {
          text: '实战',
          code: 1
        },
        hard: {
          text: '中级',
          code: 2,
        },
        price: 366,
        isDiscount: false,
        discountPrice: 0,
        teacher: {
          name: '酷田',
          avatar: 'http://img2.sycdn.imooc.com/5c297bb600013f6d11100834-160-160.jpg',
          job: '全栈工程师',
          introduction: '360企业安全集团资深工程师，曾就职于中国移动、亚信科技 ，等知名大型公司，多年工作经验积累，所传授的知识技能可以让你在实际工作中有的放矢，游刃有余。'
        },
        labels: ['运维']
      },
      {
        category: {
          text: '运维&测试',
          code: 6,
        },
        title: '企业级开源四层负载均衡解决方案-LVS',
        introduction: '轻松应对负载均衡，深刻理解网络系统架构，真正解决工作中的实际问题',
        img: 'https://img1.sycdn.imooc.com/szimg/5b99c15f0001ca0206000338-360-202.jpg',
        banner: 'https://img.mukewang.com/szimg/5b99d1e90001903240001120.jpg',
        type: {
          text: '实战',
          code: 1
        },
        hard: {
          text: '中级',
          code: 2,
        },
        price: 199,
        isDiscount: false,
        discountPrice: 0,
        teacher: {
          name: '酷田',
          avatar: 'http://img2.sycdn.imooc.com/5c297bb600013f6d11100834-160-160.jpg',
          job: '全栈工程师',
          introduction: '360企业安全集团资深工程师，曾就职于中国移动、亚信科技 ，等知名大型公司，多年工作经验积累，所传授的知识技能可以让你在实际工作中有的放矢，游刃有余。'
        },
        labels: ['运维']
      },
      {
        category: {
          text: '运维&测试',
          code: 6,
        },
        title: '跟着360架构师 学习Shell脚本编程',
        introduction: '30%知识讲解+70%实例操作 掌握Shell脚本编程能力',
        img: 'https://img1.sycdn.imooc.com/szimg/5c46c4a308ad3b3406000338-360-202.jpg',
        banner: 'https://img.mukewang.com/szimg/5c46c4ae099dc71320000560.jpg',
        type: {
          text: '实战',
          code: 1
        },
        hard: {
          text: '中级',
          code: 2,
        },
        price: 366,
        isDiscount: false,
        discountPrice: 0,
        teacher: {
          name: '酷田',
          avatar: 'http://img2.sycdn.imooc.com/5c297bb600013f6d11100834-160-160.jpg',
          job: '全栈工程师',
          introduction: '360企业安全集团资深工程师，曾就职于中国移动、亚信科技 ，等知名大型公司，多年工作经验积累，所传授的知识技能可以让你在实际工作中有的放矢，游刃有余。'
        },
        labels: ['运维']
      },
      {
        category: {
          text: '运维&测试',
          code: 6,
        },
        title: '企业级开源四层负载均衡解决方案-LVS',
        introduction: '轻松应对负载均衡，深刻理解网络系统架构，真正解决工作中的实际问题',
        img: 'https://img1.sycdn.imooc.com/szimg/5b99c15f0001ca0206000338-360-202.jpg',
        banner: 'https://img.mukewang.com/szimg/5b99d1e90001903240001120.jpg',
        type: {
          text: '实战',
          code: 1
        },
        hard: {
          text: '中级',
          code: 2,
        },
        price: 199,
        isDiscount: false,
        discountPrice: 0,
        teacher: {
          name: '酷田',
          avatar: 'http://img2.sycdn.imooc.com/5c297bb600013f6d11100834-160-160.jpg',
          job: '全栈工程师',
          introduction: '360企业安全集团资深工程师，曾就职于中国移动、亚信科技 ，等知名大型公司，多年工作经验积累，所传授的知识技能可以让你在实际工作中有的放矢，游刃有余。'
        },
        labels: ['运维']
      },
      {
        category: {
          text: '数据库',
          code: 7,
        },
        title: '零基础入门 全角度解读企业主流数据库MySQL8.0',
        introduction: '掌握SQL优化与慢查询优化，具备独当一面的能力，彰显更多个人价值',
        img: 'https://img.mukewang.com/szimg/5ca5e266085019b306000338-360-202.jpg',
        banner: 'https://img.mukewang.com/szimg/5ca5e26e09568dbc20000400.jpg',
        type: {
          text: '实战',
          code: 1
        },
        hard: {
          text: '入门',
          code: 0,
        },
        price: 266,
        isDiscount: false,
        discountPrice: 0,
        teacher: {
          name: 'sqlercn',
          avatar: 'http://img3.sycdn.imooc.com/5ad7144100017a5e07410741-160-160.jpg',
          job: '数据库工程师',
          introduction: '高级数据库工程师（DBA），从事数据库管理工作多年，曾就职于聚美优品、猫扑、TOM等多家大型互联网公司，进行过千万级的数据处理，对大数据业务、高并发时数据优化积累了大量丰富的经验。'
        },
        labels: ['MySql']
      },
      {
        category: {
          text: '数据库',
          code: 7,
        },
        title: '零基础入门 全角度解读企业主流数据库MySQL8.0',
        introduction: '掌握SQL优化与慢查询优化，具备独当一面的能力，彰显更多个人价值',
        img: 'https://img.mukewang.com/szimg/5ca5e266085019b306000338-360-202.jpg',
        banner: 'https://img.mukewang.com/szimg/5ca5e26e09568dbc20000400.jpg',
        type: {
          text: '实战',
          code: 1
        },
        hard: {
          text: '入门',
          code: 0,
        },
        price: 266,
        isDiscount: false,
        discountPrice: 0,
        teacher: {
          name: 'sqlercn',
          avatar: 'http://img3.sycdn.imooc.com/5ad7144100017a5e07410741-160-160.jpg',
          job: '数据库工程师',
          introduction: '高级数据库工程师（DBA），从事数据库管理工作多年，曾就职于聚美优品、猫扑、TOM等多家大型互联网公司，进行过千万级的数据处理，对大数据业务、高并发时数据优化积累了大量丰富的经验。'
        },
        labels: ['MySql']
      },
      {
        category: {
          text: '数据库',
          code: 7,
        },
        title: '中高级开发晋升利器 MySQL面试指南',
        introduction: '9大类常见问题详解，切实提升数据库应用和管理能力，升职加薪必备佳品！',
        img: 'https://img.mukewang.com/szimg/5bdc3b81000178e812000676-360-202.jpg',
        banner: 'https://img.mukewang.com/szimg/5bdc3b8a0001583240001120.jpg',
        type: {
          text: '实战',
          code: 1
        },
        hard: {
          text: '中级',
          code: 2,
        },
        price: 288,
        isDiscount: false,
        discountPrice: 0,
        teacher: {
          name: 'sqlercn',
          avatar: 'http://img3.sycdn.imooc.com/5ad7144100017a5e07410741-160-160.jpg',
          job: '数据库工程师',
          introduction: '高级数据库工程师（DBA），从事数据库管理工作多年，曾就职于聚美优品、猫扑、TOM等多家大型互联网公司，进行过千万级的数据处理，对大数据业务、高并发时数据优化积累了大量丰富的经验。'
        },
        labels: ['MySql']
      },
      {
        category: {
          text: '数据库',
          code: 7,
        },
        title: '零基础入门 全角度解读企业主流数据库MySQL8.0',
        introduction: '掌握SQL优化与慢查询优化，具备独当一面的能力，彰显更多个人价值',
        img: 'https://img.mukewang.com/szimg/5ca5e266085019b306000338-360-202.jpg',
        banner: 'https://img.mukewang.com/szimg/5ca5e26e09568dbc20000400.jpg',
        type: {
          text: '实战',
          code: 1
        },
        hard: {
          text: '入门',
          code: 0,
        },
        price: 266,
        isDiscount: false,
        discountPrice: 0,
        teacher: {
          name: 'sqlercn',
          avatar: 'http://img3.sycdn.imooc.com/5ad7144100017a5e07410741-160-160.jpg',
          job: '数据库工程师',
          introduction: '高级数据库工程师（DBA），从事数据库管理工作多年，曾就职于聚美优品、猫扑、TOM等多家大型互联网公司，进行过千万级的数据处理，对大数据业务、高并发时数据优化积累了大量丰富的经验。'
        },
        labels: ['MySql']
      },
      {
        category: {
          text: '数据库',
          code: 7,
        },
        title: '中高级开发晋升利器 MySQL面试指南',
        introduction: '9大类常见问题详解，切实提升数据库应用和管理能力，升职加薪必备佳品！',
        img: 'https://img.mukewang.com/szimg/5bdc3b81000178e812000676-360-202.jpg',
        banner: 'https://img.mukewang.com/szimg/5bdc3b8a0001583240001120.jpg',
        type: {
          text: '实战',
          code: 1
        },
        hard: {
          text: '中级',
          code: 2,
        },
        price: 288,
        isDiscount: false,
        discountPrice: 0,
        teacher: {
          name: 'sqlercn',
          avatar: 'http://img3.sycdn.imooc.com/5ad7144100017a5e07410741-160-160.jpg',
          job: '数据库工程师',
          introduction: '高级数据库工程师（DBA），从事数据库管理工作多年，曾就职于聚美优品、猫扑、TOM等多家大型互联网公司，进行过千万级的数据处理，对大数据业务、高并发时数据优化积累了大量丰富的经验。'
        },
        labels: ['MySql']
      },
      {
        category: {
          text: '数据库',
          code: 7,
        },
        title: '玩转MongoDB4.0(最新版) 从入门到实践',
        introduction: '30%理论+70%实战，让你用实操去检验真理,一门让你事半功倍的入门进阶课',
        img: 'https://img.mukewang.com/szimg/5c90dc020849c59a06000338-360-202.jpg',
        banner: 'https://img.mukewang.com/szimg/5b4f355a0001852520000520.jpg',
        type: {
          text: '实战',
          code: 1
        },
        hard: {
          text: '入门',
          code: 0,
        },
        price: 288,
        isDiscount: false,
        discountPrice: 0,
        teacher: {
          name: 'Stannum',
          avatar: 'https://img1.sycdn.imooc.com/user/5b558fd00001ca6207410741-100-100.jpg',
          job: 'Java/C++敏捷开发专家',
          introduction: '目前在财经界俗称的“大摩”，一家成立于美国纽约的国际金融服务公司-摩根士丹利担任软件工程师和敏捷开发专家。 主攻Event Sourcing架构模式的应用。是一个“只有男同事,没有女同事”的程序媛一枚,先后就职于多家投资银行，负责开发“每一个bug都很贵”的内部交易系统,主导了股票交易执行系统和衍生品交易风险控制系统。'
        },
        labels: ['MongoDB']
      },
      {
        category: {
          text: 'UI设计&多媒体',
          code: 8,
        },
        title: '高薪设计师必修课 AE移动UI动效设计从入门到实战',
        introduction: '20多个商业实用案例，轻松Get√到AE动效核心技术，让你的作品脱颖而出！',
        img: 'https://img.mukewang.com/szimg/5aa9d2c1000104d510800600-360-202.jpg',
        banner: 'https://img.mukewang.com/szimg/5b51c7100001351220000560.jpg',
        type: {
          text: '实战',
          code: 1
        },
        hard: {
          text: '中级',
          code: 2,
        },
        price: 199,
        isDiscount: false,
        discountPrice: 0,
        teacher: {
          name: '墨染ART',
          avatar: 'http://img4.sycdn.imooc.com/5b1c1e530001c06c07410719-160-160.jpg',
          job: 'UI设计师',
          introduction: '站酷推荐设计师，UI中国推荐设计师。热门UI动效实战系列教程作者，对UI设计、动效设计、多终端响应式设计有深入的研究和经验。'
        },
        labels: ['设计基础']
      },
      {
        category: {
          text: 'UI设计&多媒体',
          code: 8,
        },
        title: '移动端App UI设计入门与实战',
        introduction: '涉及多项实用设计技能训练，成为一名具有“产品思维”的设计师！',
        img: 'https://img.mukewang.com/szimg/5a123d7e00011fa705400300-360-202.jpg',
        banner: 'https://img.mukewang.com/szimg/5b51c7100001351220000560.jpg',
        type: {
          text: '实战',
          code: 1
        },
        hard: {
          text: '中级',
          code: 2,
        },
        price: 199,
        isDiscount: false,
        discountPrice: 0,
        teacher: {
          name: '墨染ART',
          avatar: 'http://img4.sycdn.imooc.com/5b1c1e530001c06c07410719-160-160.jpg',
          job: 'UI设计师',
          introduction: '站酷推荐设计师，UI中国推荐设计师。热门UI动效实战系列教程作者，对UI设计、动效设计、多终端响应式设计有深入的研究和经验。'
        },
        labels: ['设计基础', 'APPUI设计']
      },
      {
        category: {
          text: 'UI设计&多媒体',
          code: 8,
        },
        title: '高薪设计师必修课 AE移动UI动效设计从入门到实战',
        introduction: '20多个商业实用案例，轻松Get√到AE动效核心技术，让你的作品脱颖而出！',
        img: 'https://img.mukewang.com/szimg/5aa9d2c1000104d510800600-360-202.jpg',
        banner: 'https://img.mukewang.com/szimg/5b51c7100001351220000560.jpg',
        type: {
          text: '实战',
          code: 1
        },
        hard: {
          text: '中级',
          code: 2,
        },
        price: 199,
        isDiscount: false,
        discountPrice: 0,
        teacher: {
          name: '墨染ART',
          avatar: 'http://img4.sycdn.imooc.com/5b1c1e530001c06c07410719-160-160.jpg',
          job: 'UI设计师',
          introduction: '站酷推荐设计师，UI中国推荐设计师。热门UI动效实战系列教程作者，对UI设计、动效设计、多终端响应式设计有深入的研究和经验。'
        },
        labels: ['设计基础']
      },
      {
        category: {
          text: 'UI设计&多媒体',
          code: 8,
        },
        title: '移动端App UI设计入门与实战',
        introduction: '涉及多项实用设计技能训练，成为一名具有“产品思维”的设计师！',
        img: 'https://img.mukewang.com/szimg/5a123d7e00011fa705400300-360-202.jpg',
        banner: 'https://img.mukewang.com/szimg/5b51c7100001351220000560.jpg',
        type: {
          text: '实战',
          code: 1
        },
        hard: {
          text: '中级',
          code: 2,
        },
        price: 199,
        isDiscount: false,
        discountPrice: 0,
        teacher: {
          name: '墨染ART',
          avatar: 'http://img4.sycdn.imooc.com/5b1c1e530001c06c07410719-160-160.jpg',
          job: 'UI设计师',
          introduction: '站酷推荐设计师，UI中国推荐设计师。热门UI动效实战系列教程作者，对UI设计、动效设计、多终端响应式设计有深入的研究和经验。'
        },
        labels: ['设计基础', 'APPUI设计']
      },
      {
        category: {
          text: '前端开发',
          code: 0,
        },
        title: '初识HTML(5)+CSS(3)-2020升级版',
        introduction: 'HTML(5)+CSS(3)基础教程8小时带领大家步步深入学习标签用法和意义',
        img: 'https://img4.mukewang.com/529dc3380001379906000338-240-135.jpg',
        banner: '',
        type: {
          text: '免费',
          code: 0
        },
        hard: {
          text: '入门',
          code: 0,
        },
        price: 0,
        isDiscount: false,
        discountPrice: 0,
        teacher: {
          name: '丶五月的夏天',
          avatar: 'https://img2.mukewang.com/54584f6d0001759002200220-80-80.jpg',
          job: 'Web前端工程师',
          introduction: ''
        },
        labels: ['HTML/CSS']
      },
      {
        category: {
          text: '前端开发',
          code: 0,
        },
        title: 'JavaScript入门篇',
        introduction: 'JavaScript做为一名Web工程师的必备技术，本教程让您快速入门',
        img: 'https://img2.mukewang.com/53e1d0470001ad1e06000338-240-135.jpg',
        banner: '',
        type: {
          text: '免费',
          code: 0
        },
        hard: {
          text: '入门',
          code: 0,
        },
        price: 0,
        isDiscount: false,
        discountPrice: 0,
        teacher: {
          name: '慕课官方号',
          avatar: 'https://img1.mukewang.com/5b88f1f50001688401500150-80-80.jpg',
          job: '页面重构设计',
          introduction: ''
        },
        labels: ['JavaScript']
      },
      {
        category: {
          text: '前端开发',
          code: 0,
        },
        title: 'JavaScript进阶篇',
        introduction: '本课程从如何插入JS代码开始，带您进入网页动态交互世界',
        img: 'https://img2.mukewang.com/574678bd00010a7206000338-240-135.jpg',
        banner: '',
        type: {
          text: '免费',
          code: 0
        },
        hard: {
          text: '入门',
          code: 0,
        },
        price: 0,
        isDiscount: false,
        discountPrice: 0,
        teacher: {
          name: '慕课官方号',
          avatar: 'https://img1.mukewang.com/5b88f1f50001688401500150-80-80.jpg',
          job: '页面重构设计',
          introduction: ''
        },
        labels: ['JavaScript']
      },
      {
        category: {
          text: '前端开发',
          code: 0,
        },
        title: 'vue2.5入门',
        introduction: '快速理解Vue编程理念上手Vue2.0开发。',
        img: 'https://img2.mukewang.com/5ad5cc490001e53006000338-240-135.jpg',
        banner: '',
        type: {
          text: '免费',
          code: 0
        },
        hard: {
          text: '中级',
          code: 2,
        },
        price: 0,
        isDiscount: false,
        discountPrice: 0,
        teacher: {
          name: 'Dell',
          avatar: 'https://img4.mukewang.com/5abe468b0001664107390741-80-80.jpg',
          job: 'Web前端工程师',
          introduction: ''
        },
        labels: ['Vue.js']
      },
      {
        category: {
          text: '前端开发',
          code: 0,
        },
        title: 'Vue+Webpack打造todo应用',
        introduction: '用前端最热门框架Vue+最火打包工具Webpack打造todo应用',
        img: 'https://img1.mukewang.com/5a56fdb400017d0306000338-240-135.jpg',
        banner: '',
        type: {
          text: '免费',
          code: 0
        },
        hard: {
          text: '高级',
          code: 3,
        },
        price: 0,
        isDiscount: false,
        discountPrice: 0,
        teacher: {
          name: 'Jokcy',
          avatar: 'https://img1.sycdn.imooc.com/5a697c950001262b05790578-80-80.jpg',
          job: 'Web前端工程师',
          introduction: ''
        },
        labels: ['Vue.js']
      },
      {
        category: {
          text: '前端开发',
          code: 0,
        },
        title: 'Vue+node.js调试入门',
        introduction: '理论实践相结合学习使用 Inspector 调试 Node.js。',
        img: 'https://img3.sycdn.imooc.com/5c3eaa0a08d7052706000338-240-135.jpg',
        banner: '',
        type: {
          text: '免费',
          code: 0
        },
        hard: {
          text: '入门',
          code: 0,
        },
        price: 0,
        isDiscount: false,
        discountPrice: 0,
        teacher: {
          name: 'lewis',
          avatar: 'https://img.mukewang.com/5c3ea1f10001b55908070807-80-80.jpg',
          job: 'Web前端工程师',
          introduction: ''
        },
        labels: ['Node.js']
      },
      {
        category: {
          text: '前端开发',
          code: 0,
        },
        title: 'Nodejs全栈入门',
        introduction: '基于node+mysql+react全栈实战',
        img: 'https://img3.sycdn.imooc.com/5dd7561309f8ae4806000338-240-135.png',
        banner: '',
        type: {
          text: '免费',
          code: 0
        },
        hard: {
          text: '中级',
          code: 2,
        },
        price: 0,
        isDiscount: false,
        discountPrice: 0,
        teacher: {
          name: '一缕孤烟',
          avatar: 'https://img4.mukewang.com/54a2bf390001593c01000100-80-80.jpg',
          job: 'Web前端工程师',
          introduction: ''
        },
        labels: ['Node.js']
      },
      {
        category: {
          text: '后端开发',
          code: 1,
        },
        title: '使用Prometheus实践基于Spring Boot监控告警体系',
        introduction: '基于Spring Boot2.X使用Prometheus实现监控大盘及微服务告警功能。',
        img: 'https://img2.mukewang.com/5e82b5b8099dc26405400300-240-135.png',
        banner: '',
        type: {
          text: '免费',
          code: 0
        },
        hard: {
          text: '中级',
          code: 2,
        },
        price: 0,
        isDiscount: false,
        discountPrice: 0,
        teacher: {
          name: '龙猪GG',
          avatar: 'https://img1.mukewang.com/5b8cd6cb000114e702000112-80-80.jpg',
          job: '架构师',
          introduction: ''
        },
        labels: ['Java']
      },
      {
        category: {
          text: '后端开发',
          code: 1,
        },
        title: '二进制与Java中的基本数据类型',
        introduction: '从认识二进制开始，逐步理解Java是如何存储和处理数据的。',
        img: 'https://img.mukewang.com/5e646d5708f882d512000676-240-135.jpg',
        banner: '',
        type: {
          text: '免费',
          code: 0
        },
        hard: {
          text: '入门',
          code: 0,
        },
        price: 0,
        isDiscount: false,
        discountPrice: 0,
        teacher: {
          name: '舞马',
          avatar: 'https://img.mukewang.com/5e3c0b840001796401500124-80-80.jpg',
          job: '软件工程师',
          introduction: ''
        },
        labels: ['Java']
      },
      {
        category: {
          text: '后端开发',
          code: 1,
        },
        title: '自己动手实现RPC框架',
        introduction: '自己动手实现一个完整的RPC框架，So Easy！',
        img: 'https://img.mukewang.com/5e37d120082e7c7c06000338-240-135.jpg',
        banner: '',
        type: {
          text: '免费',
          code: 0
        },
        hard: {
          text: '中级',
          code: 2,
        },
        price: 0,
        isDiscount: false,
        discountPrice: 0,
        teacher: {
          name: '司马极客',
          avatar: 'https://img4.mukewang.com/5b8cdb710001d95c02000200-80-80.jpg',
          job: '软件工程师',
          introduction: ''
        },
        labels: ['Java']
      },
      {
        category: {
          text: '后端开发',
          code: 1,
        },
        title: 'MUI+个推实现安卓与ios移动端推送',
        introduction: '结合慕信轻聊Netty实战，整合个推到前端与后端，实现安卓与ios移动端推送',
        img: 'https://img4.mukewang.com/5bebce6b0001bd6106000336-240-135.jpg',
        banner: '',
        type: {
          text: '免费',
          code: 0
        },
        hard: {
          text: '初级',
          code: 1,
        },
        price: 0,
        isDiscount: false,
        discountPrice: 0,
        teacher: {
          name: '风间影月',
          avatar: 'https://img4.mukewang.com/5a0c5df20001a1cb05800580-80-80.jpg',
          job: '全栈工程师',
          introduction: ''
        },
        labels: ['Java', 'SpringBoot']
      },
      {
        category: {
          text: '后端开发',
          code: 1,
        },
        title: 'Springboot 微信小程序 – 微信登录功能实战',
        introduction: '简单实现在小程序中对使用微信登录的方式来登录小程序应用',
        img: 'https://img2.mukewang.com/5bbf2def000118ab06000336-240-135.jpg',
        banner: '',
        type: {
          text: '免费',
          code: 0
        },
        hard: {
          text: '初级',
          code: 1,
        },
        price: 0,
        isDiscount: false,
        discountPrice: 0,
        teacher: {
          name: '风间影月',
          avatar: 'https://img4.mukewang.com/5a0c5df20001a1cb05800580-80-80.jpg',
          job: '全栈工程师',
          introduction: ''
        },
        labels: ['Java', 'SpringBoot']
      },
      {
        category: {
          text: '后端开发',
          code: 1,
        },
        title: 'Numpy基础入门',
        introduction: '从基本数组入手全面讲解Numpy中的核心知识',
        img: 'https://img.mukewang.com/5e9683f808f03af912000676-240-135.jpg',
        banner: '',
        type: {
          text: '免费',
          code: 0
        },
        hard: {
          text: '入门',
          code: 0,
        },
        price: 0,
        isDiscount: false,
        discountPrice: 0,
        teacher: {
          name: '夏正东',
          avatar: 'https://img2.mukewang.com/5da6841d0001f79409600960-80-80.jpg',
          job: 'Python工程师',
          introduction: ''
        },
        labels: ['Python']
      },
      {
        category: {
          text: '后端开发',
          code: 1,
        },
        title: 'Python数据预处理（四）- 特征降维与可视化',
        introduction: '教会你使用Python数据预处理',
        img: 'https://img2.mukewang.com/5ce4b199083e469306000338-240-135.jpg',
        banner: '',
        type: {
          text: '免费',
          code: 0
        },
        hard: {
          text: '初级',
          code: 1,
        },
        price: 0,
        isDiscount: false,
        discountPrice: 0,
        teacher: {
          name: '伏草惟存',
          avatar: 'https://img3.mukewang.com/545863cd0001b72a02200220-80-80.jpg',
          job: '算法工程师',
          introduction: ''
        },
        labels: ['Python', '自然语言处理']
      },
      {
        category: {
          text: '移动端开发',
          code: 2,
        },
        title: 'MultiDex从基础原理到实践优化',
        introduction: 'Android进阶学习必备，带你从基础用法到实践优化一站式掌握MultiDex。',
        img: 'https://img.mukewang.com/5e6098b409a0151406000338-240-135.png',
        banner: '',
        type: {
          text: '免费',
          code: 0
        },
        hard: {
          text: '中级',
          code: 2,
        },
        price: 0,
        isDiscount: false,
        discountPrice: 0,
        teacher: {
          name: '凡諾',
          avatar: 'https://img.mukewang.com/5e57662a00012deb11111109-80-80.jpg',
          job: '移动开发工程师',
          introduction: ''
        },
        labels: ['Android']
      },
      {
        category: {
          text: '移动端开发',
          code: 2,
        },
        title: 'Android网络安全之加解密',
        introduction: '在不安全的网络环境中，如何安全的传输敏感数据',
        img: 'https://img4.mukewang.com/5dfc2e870902f80d06000338-240-135.png',
        banner: '',
        type: {
          text: '免费',
          code: 0
        },
        hard: {
          text: '中级',
          code: 2,
        },
        price: 0,
        isDiscount: false,
        discountPrice: 0,
        teacher: {
          name: '凡諾',
          avatar: 'https://img.mukewang.com/5e57662a00012deb11111109-80-80.jpg',
          job: '移动开发工程师',
          introduction: ''
        },
        labels: ['Android']
      },
      {
        category: {
          text: '移动端开发',
          code: 2,
        },
        title: 'Android CMake以及NDK实践基础',
        introduction: 'Android底层开发入门必备，CMake动态库编译和使用，NDK的各种开发技巧。 ',
        img: 'https://img1.mukewang.com/5de8a5740989152106000338-240-135.png',
        banner: '',
        type: {
          text: '免费',
          code: 0
        },
        hard: {
          text: '中级',
          code: 2,
        },
        price: 0,
        isDiscount: false,
        discountPrice: 0,
        teacher: {
          name: 'glumes',
          avatar: 'https://img3.mukewang.com/5462e44b0001421501800180-80-80.jpg',
          job: '移动开发工程师',
          introduction: ''
        },
        labels: ['Android']
      },
      {
        category: {
          text: '计算机基础',
          code: 3,
        },
        title: 'Android 机器学习中的统计学基础',
        introduction: '机器学习中的常用统计学知识点 ',
        img: 'https://img4.mukewang.com/5b470bfe0001cdbf06000338-240-135.jpg',
        banner: '',
        type: {
          text: '免费',
          code: 0
        },
        hard: {
          text: '初级',
          code: 1,
        },
        price: 0,
        isDiscount: false,
        discountPrice: 0,
        teacher: {
          name: '北极小琪',
          avatar: 'https://img4.mukewang.com/5bcd983c0001264203500350-80-80.jpg',
          job: '算法工程师',
          introduction: ''
        },
        labels: ['计算机网络', '算法与数据结构']
      },
      {
        category: {
          text: '计算机基础',
          code: 3,
        },
        title: 'Javascript实现二叉树算法',
        introduction: '感受JS与数据结构的魅力。 ',
        img: 'https://img3.mukewang.com/59ae0e2a0001307706000338-240-135.jpg',
        banner: '',
        type: {
          text: '免费',
          code: 0
        },
        hard: {
          text: '中级',
          code: 2,
        },
        price: 0,
        isDiscount: false,
        discountPrice: 0,
        teacher: {
          name: 'coding迪斯尼',
          avatar: 'https://img.mukewang.com/57a333b400010f6006400478-80-80.jpg',
          job: '全栈工程师',
          introduction: ''
        },
        labels: ['JavaScript', '算法与数据结构']
      }
    ]"""
    txt = demjson.decode(txt)
    for index, one in enumerate(txt):
        try:
            script = one["script"]
            try:
                item = LessonScript(**script)
                item.save()
            except django.db.utils.IntegrityError:
                pass
        except KeyError:
            pass


def import_free_catalog():
    one_txt = """
    {
  introduction: "简介：对于很多刚接触Vue的同学，最难做到的就是编程思路的切换，这门课程，我们将通过形象的例子给大家讲解Vue的基础语法及编程思路，带大家快速的上手Vue的基础开发，这门课也包含了关于组件话和vue-cli等内容的基础讲解。",
  isComplete: true,
  type: {
    text: "免费课程",
    code: 0
  },
  chapter: [
    {
      title: "第1章 课程介绍",
      introduce: "对课程讲解内容做完整陈述，帮助大家理清学习思路。",
      term: [
        {
          title: "1-1 课程介绍",
          seconds: 145
        }
      ]
    },
    {
      title: "第2章 Vue基础语法",
      introduce: "本章节通过浅显易懂的实例来给大家讲解Vue2.0的基本语法，包含计算属性，侦听器，基础模版指令等。",
      term: [
        {
          title: "2-1 创建第一个Vue实例",
          seconds: 558
        },
        {
          title: "2-2 挂载点，模版与实例",
          seconds: 264
        },
        {
          title: "2-3 Vue实例中的数据,事件和方法",
          seconds: 746
        },
        {
          title: "2-4 Vue中的属性绑定和双向数据绑定",
          seconds: 518
        },
        {
          title: "2-5 Vue中的计算属性和侦听器",
          seconds: 540
        },
        {
          title: "2-6 v-if, v-show与v-for指令",
          seconds: 541
        }
      ]
    },
    {
      title: "第3章 Vue中的组件",
      introduce: "本章节讲解Vue中组件的概念和使用，结合对组件的完整理解，我们还将做一个TodoList功能模块。",
      term: [
        {
          title: "3-1 todolist功能开发",
          seconds: 410
        },
        {
          title: "3-2 todolist组件拆分",
          seconds: 669
        },
        {
          title: "3-3 组件与实例的关系",
          seconds: 303
        },
        {
          title: "3-4 实现todolist的删除功能",
          seconds: 691
        }
      ]
    },
    {
      title: "第4章 Vue-cli的使用",
      introduce: "本章节我们讲给大家介绍如何使用Vue-cli脚手架工具构建项目，并讲解单文件组件和局部全局样式的知识。",
      term: [
        {
          title: "4-1 vue-cli的简介与使用",
          seconds: 999
        },
        {
          title: "4-2 使用vue-cli开发TodoList",
          seconds: 1044
        },
        {
          title: "4-3 全局样式与局部样式",
          seconds: 258
        },
        {
          title: "4-4 课程总结",
          seconds: 244
        }
      ]
    }
  ]
}
    """
    free_ids = Lesson.objects.filter(type__code="0").values_list("id", flat=True)  # 免费
    one_txt = demjson.decode(one_txt)
    for index, one in enumerate(free_ids):
        item = Catalog(lessonid=one, introduction=one_txt["introduction"], isComplete=one_txt["isComplete"])
        item.save()


def import_chapter():
    txt = """
    [
    {
      title: "第1章 课程介绍",
      introduce: "对课程讲解内容做完整陈述，帮助大家理清学习思路。",
      term: [
        {
          title: "1-1 课程介绍",
          seconds: 145
        }
      ]
    },
    {
      title: "第2章 Vue基础语法",
      introduce: "本章节通过浅显易懂的实例来给大家讲解Vue2.0的基本语法，包含计算属性，侦听器，基础模版指令等。",
      term: [
        {
          title: "2-1 创建第一个Vue实例",
          seconds: 558
        },
        {
          title: "2-2 挂载点，模版与实例",
          seconds: 264
        },
        {
          title: "2-3 Vue实例中的数据,事件和方法",
          seconds: 746
        },
        {
          title: "2-4 Vue中的属性绑定和双向数据绑定",
          seconds: 518
        },
        {
          title: "2-5 Vue中的计算属性和侦听器",
          seconds: 540
        },
        {
          title: "2-6 v-if, v-show与v-for指令",
          seconds: 541
        }
      ]
    },
    {
      title: "第3章 Vue中的组件",
      introduce: "本章节讲解Vue中组件的概念和使用，结合对组件的完整理解，我们还将做一个TodoList功能模块。",
      term: [
        {
          title: "3-1 todolist功能开发",
          seconds: 410
        },
        {
          title: "3-2 todolist组件拆分",
          seconds: 669
        },
        {
          title: "3-3 组件与实例的关系",
          seconds: 303
        },
        {
          title: "3-4 实现todolist的删除功能",
          seconds: 691
        }
      ]
    },
    {
      title: "第4章 Vue-cli的使用",
      introduce: "本章节我们讲给大家介绍如何使用Vue-cli脚手架工具构建项目，并讲解单文件组件和局部全局样式的知识。",
      term: [
        {
          title: "4-1 vue-cli的简介与使用",
          seconds: 999
        },
        {
          title: "4-2 使用vue-cli开发TodoList",
          seconds: 1044
        },
        {
          title: "4-3 全局样式与局部样式",
          seconds: 258
        },
        {
          title: "4-4 课程总结",
          seconds: 244
        }
      ]
    }
  ]
    """
    txt = demjson.decode(txt)
    free_ids = Lesson.objects.filter(type__code="0").values_list("id", flat=True)  # 免费
    for one_id in free_ids:
        for index, one in enumerate(txt):
            try:
                del one["term"]
            except KeyError:
                pass
            item = Chapter(**one, lesson_id=one_id)
            item.save()


def import_term():
    txt = """
        [
        {
          title: "第1章 课程介绍",
          introduce: "对课程讲解内容做完整陈述，帮助大家理清学习思路。",
          term: [
            {
              title: "1-1 课程介绍",
              seconds: 145
            }
          ]
        },
        {
          title: "第2章 Vue基础语法",
          introduce: "本章节通过浅显易懂的实例来给大家讲解Vue2.0的基本语法，包含计算属性，侦听器，基础模版指令等。",
          term: [
            {
              title: "2-1 创建第一个Vue实例",
              seconds: 558
            },
            {
              title: "2-2 挂载点，模版与实例",
              seconds: 264
            },
            {
              title: "2-3 Vue实例中的数据,事件和方法",
              seconds: 746
            },
            {
              title: "2-4 Vue中的属性绑定和双向数据绑定",
              seconds: 518
            },
            {
              title: "2-5 Vue中的计算属性和侦听器",
              seconds: 540
            },
            {
              title: "2-6 v-if, v-show与v-for指令",
              seconds: 541
            }
          ]
        },
        {
          title: "第3章 Vue中的组件",
          introduce: "本章节讲解Vue中组件的概念和使用，结合对组件的完整理解，我们还将做一个TodoList功能模块。",
          term: [
            {
              title: "3-1 todolist功能开发",
              seconds: 410
            },
            {
              title: "3-2 todolist组件拆分",
              seconds: 669
            },
            {
              title: "3-3 组件与实例的关系",
              seconds: 303
            },
            {
              title: "3-4 实现todolist的删除功能",
              seconds: 691
            }
          ]
        },
        {
          title: "第4章 Vue-cli的使用",
          introduce: "本章节我们讲给大家介绍如何使用Vue-cli脚手架工具构建项目，并讲解单文件组件和局部全局样式的知识。",
          term: [
            {
              title: "4-1 vue-cli的简介与使用",
              seconds: 999
            },
            {
              title: "4-2 使用vue-cli开发TodoList",
              seconds: 1044
            },
            {
              title: "4-3 全局样式与局部样式",
              seconds: 258
            },
            {
              title: "4-4 课程总结",
              seconds: 244
            }
          ]
        }
      ]
        """
    txt = demjson.decode(txt)
    free_ids = Lesson.objects.filter(type__code="0").values_list("id", flat=True)  # 免费
    for one_id in free_ids:
        for index, one in enumerate(txt):
            for term in one["term"]:
                item = Term(**term, chapter=Chapter.objects.get(lesson_id=one_id, title=one["title"]))
                item.save()


def import_comment():
    txt = """[
  {
    name: "网络侦探",
    avatar: "https://img.mukewang.com/5599e8e100010c2110800960-40-40.jpg",
    content_score: 9.6,
    easy_score: 9.5,
    logic_score: 9.7,
    time: "2019-08-01",
    comment: "就弱基础Vue入门来说真的是很不错的入门课程，html引入Vue的写法和Vue的工程化开发方式也有介绍，认真学完再去学官方文档会轻松不少。"
  },
  {
    name: "Cassie_MC",
    avatar: "https://img3.mukewang.com/58f85af900019f2102240224-40-40.jpg",
    content_score: 9.6,
    easy_score: 9.2,
    logic_score: 9.8,
    time: "2019-08-01",
    comment: "非常适合入门了，没有上来就搭环境，而是深入浅出的结合小demo，把Vue的基础知识结构快速搭建起来，让入学者没有负担，还能有所收获。"
  },
  {
    name: "凌晨晚餐",
    avatar: "https://img.mukewang.com/5a3f4e1c0001b4bf02500250-40-40.jpg",
    content_score: 9.9,
    easy_score: 9.3,
    logic_score: 9.4,
    time: "2019-08-01",
    comment: "之前只用过react，看这个课程，对vue有了初步的了解，挺好的"
  },
  {
    name: "慕丝3222080",
    avatar: "https://img1.mukewang.com/5458655200013d9802200220-40-40.jpg",
    content_score: 8,
    easy_score: 9.3,
    logic_score: 9.4,
    time: "2019-08-01",
    comment: "感谢老师，入门很有帮助！"
  },
  {
    name: "熬夜会牙痛_代码打多会掉头发",
    avatar: "https://img2.mukewang.com/545862fe00017c2602200220-40-40.jpg",
    content_score: 7,
    easy_score: 8.3,
    logic_score: 8.4,
    time: "2019-08-01",
    comment: "老师讲的很细，思路清晰，视频时长也不算长，学起来很轻松"
  },
  {
    name: "网络侦探",
    avatar: "https://img.mukewang.com/5599e8e100010c2110800960-40-40.jpg",
    content_score: 9,
    easy_score: 8.3,
    logic_score: 8.4,
    time: "2019-08-01",
    comment: "就弱基础Vue入门来说真的是很不错的入门课程，html引入Vue的写法和Vue的工程化开发方式也有介绍，认真学完再去学官方文档会轻松不少。"
  },
  {
    name: "Cassie_MC",
    avatar: "https://img3.mukewang.com/58f85af900019f2102240224-40-40.jpg",
    content_score: 9,
    easy_score: 9.3,
    logic_score: 9.4,
    time: "2019-08-01",
    comment: "非常适合入门了，没有上来就搭环境，而是深入浅出的结合小demo，把Vue的基础知识结构快速搭建起来，让入学者没有负担，还能有所收获。"
  },
  {
    name: "凌晨晚餐",
    avatar: "https://img.mukewang.com/5a3f4e1c0001b4bf02500250-40-40.jpg",
    content_score: 8.5,
    easy_score: 9,
    logic_score: 9,
    time: "2019-08-01",
    comment: "之前只用过react，看这个课程，对vue有了初步的了解，挺好的"
  },
  {
    name: "慕丝3222080",
    avatar: "https://img1.mukewang.com/5458655200013d9802200220-40-40.jpg",
    content_score: 9.9,
    easy_score: 9,
    logic_score: 9,
    time: "2019-08-01",
    comment: "感谢老师，入门很有帮助！"
  },
  {
    name: "熬夜会牙痛_代码打多会掉头发",
    avatar: "https://img2.mukewang.com/545862fe00017c2602200220-40-40.jpg",
    content_score: 6.6,
    easy_score: 8,
    logic_score: 8,
    time: "2019-08-01",
    comment: "老师讲的很细，思路清晰，视频时长也不算长，学起来很轻松"
  },
  {
    name: "网络侦探",
    avatar: "https://img.mukewang.com/5599e8e100010c2110800960-40-40.jpg",
    content_score: 9.6,
    easy_score: 9.5,
    logic_score: 9.7,
    time: "2019-08-01",
    comment: "就弱基础Vue入门来说真的是很不错的入门课程，html引入Vue的写法和Vue的工程化开发方式也有介绍，认真学完再去学官方文档会轻松不少。"
  },
  {
    name: "Cassie_MC",
    avatar: "https://img3.mukewang.com/58f85af900019f2102240224-40-40.jpg",
    content_score: 9.6,
    easy_score: 9.2,
    logic_score: 9.8,
    time: "2019-08-01",
    comment: "非常适合入门了，没有上来就搭环境，而是深入浅出的结合小demo，把Vue的基础知识结构快速搭建起来，让入学者没有负担，还能有所收获。"
  },
  {
    name: "凌晨晚餐",
    avatar: "https://img.mukewang.com/5a3f4e1c0001b4bf02500250-40-40.jpg",
    content_score: 9.9,
    easy_score: 9.3,
    logic_score: 9.4,
    time: "2019-08-01",
    comment: "之前只用过react，看这个课程，对vue有了初步的了解，挺好的"
  },
  {
    name: "慕丝3222080",
    avatar: "https://img1.mukewang.com/5458655200013d9802200220-40-40.jpg",
    content_score: 8,
    easy_score: 9.3,
    logic_score: 9.4,
    time: "2019-08-01",
    comment: "感谢老师，入门很有帮助！"
  },
  {
    name: "熬夜会牙痛_代码打多会掉头发",
    avatar: "https://img2.mukewang.com/545862fe00017c2602200220-40-40.jpg",
    content_score: 7,
    easy_score: 8.3,
    logic_score: 8.4,
    time: "2019-08-01",
    comment: "老师讲的很细，思路清晰，视频时长也不算长，学起来很轻松"
  },
  {
    name: "网络侦探",
    avatar: "https://img.mukewang.com/5599e8e100010c2110800960-40-40.jpg",
    content_score: 9,
    easy_score: 8.3,
    logic_score: 8.4,
    time: "2019-08-01",
    comment: "就弱基础Vue入门来说真的是很不错的入门课程，html引入Vue的写法和Vue的工程化开发方式也有介绍，认真学完再去学官方文档会轻松不少。"
  },
  {
    name: "Cassie_MC",
    avatar: "https://img3.mukewang.com/58f85af900019f2102240224-40-40.jpg",
    content_score: 9,
    easy_score: 9.3,
    logic_score: 9.4,
    time: "2019-08-01",
    comment: "非常适合入门了，没有上来就搭环境，而是深入浅出的结合小demo，把Vue的基础知识结构快速搭建起来，让入学者没有负担，还能有所收获。"
  },
  {
    name: "凌晨晚餐",
    avatar: "https://img.mukewang.com/5a3f4e1c0001b4bf02500250-40-40.jpg",
    content_score: 8.5,
    easy_score: 9,
    logic_score: 9,
    time: "2019-08-01",
    comment: "之前只用过react，看这个课程，对vue有了初步的了解，挺好的"
  },
  {
    name: "慕丝3222080",
    avatar: "https://img1.mukewang.com/5458655200013d9802200220-40-40.jpg",
    content_score: 9.9,
    easy_score: 9,
    logic_score: 9,
    time: "2019-08-01",
    comment: "感谢老师，入门很有帮助！"
  },
  {
    name: "熬夜会牙痛_代码打多会掉头发",
    avatar: "https://img2.mukewang.com/545862fe00017c2602200220-40-40.jpg",
    content_score: 6.6,
    easy_score: 8,
    logic_score: 8,
    time: "2019-08-01",
    comment: "老师讲的很细，思路清晰，视频时长也不算长，学起来很轻松"
  }
]
"""
    txt = demjson.decode(txt)
    free_ids = Lesson.objects.filter(type__code="0").values_list("id", flat=True)  # 免费
    for one_id in free_ids:
        for index, one in enumerate(txt):
            try:
                del one["time"]
            except KeyError:
                pass
            comment = Comment(lessonid=one_id, **one)
            comment.save()


def import_qa_type():
    txt = """
    [
  {
    title: "jest-enzyme支持typescript吗，根据官网怎么配都不行。",
    avatar: "https://img.mukewang.com/user/577220cf00016fe902790279-100-100.jpg",
    answer: {
      teacher: 'DellLee',
      content: "这个我没实验过，我自己研究下再告诉你",
    },
    answers: 1,
    views: 5,
    chapter: "5-4 Enzyme 的配置及使用",
    time: "2020-04-30",
    status: {
      text: '待解决',
      code: 0
    }
  },
  {
    title: "老师，能不能把前几节课的代码上传一下",
    avatar: "https://img.mukewang.com/user/545847c10001f40702200220-100-100.jpg",
    answer: {
      teacher: 'DellLee',
      content: "这个我没实验过，我自己研究下再告诉你",
    },
    answers: 1,
    views: 5,
    chapter: "5-4 Enzyme 的配置及使用",
    time: "2020-04-30",
    status: {
      text: '已采纳',
      code: 1
    }
  },
  {
    title: "这一节课有个小问题",
    avatar: "https://img.mukewang.com/user/5a01401500018d9903000300-100-100.jpg",
    answer: {
      teacher: 'DellLee',
      content: "这个我没实验过，我自己研究下再告诉你",
    },
    answers: 1,
    views: 30,
    chapter: "5-4 Enzyme 的配置及使用",
    time: "2019-12-01",
    status: {
      text: '已采纳',
      code: 1
    }
  },
  {
    title: "jest coverage配置问题",
    avatar: "https://img.mukewang.com/user/545863080001255902200220-100-100.jpg",
    answer: {
      teacher: 'DellLee',
      content: "这个我没实验过，我自己研究下再告诉你",
    },
    answers: 1,
    views: 5,
    chapter: "5-4 Enzyme 的配置及使用",
    time: "2020-03-30",
    status: {
      text: '已采纳',
      code: 1
    }
  },
  {
    title: "jQuery requires a window with a document",
    avatar: "https://img.mukewang.com/user/5405241d00010c6501000100-100-100.jpg",
    answer: {
      teacher: 'DellLee',
      content: "这个我没实验过，我自己研究下再告诉你",
    },
    answers: 1,
    views: 5,
    chapter: "5-4 Enzyme 的配置及使用",
    time: "2020-02-30",
    status: {
      text: '已采纳',
      code: 1
    }
  },
  {
    title: "老师，做UI测试用哪个库比较好，主要就是测试一下是否精确的还原UI给的设计稿",
    avatar: "https://img.mukewang.com/user/57613b890001cba501000100-100-100.jpg",
    answer: {
      teacher: 'DellLee',
      content: "这个我没实验过，我自己研究下再告诉你",
    },
    answers: 1,
    views: 5,
    chapter: "5-4 Enzyme 的配置及使用",
    time: "2020-01-30",
    status: {
      text: '未解决',
      code: 0
    }
  }
]

    """
    txt = demjson.decode(txt)
    for index, one in enumerate(txt):
        try:
            one_status = one["status"]
            item = QaType(**one_status)
            item.save()
        except django.db.utils.IntegrityError:
            pass


def import_qa():
    txt = """
        [
      {
        title: "jest-enzyme支持typescript吗，根据官网怎么配都不行。",
        avatar: "https://img.mukewang.com/user/577220cf00016fe902790279-100-100.jpg",
        answer: {
          teacher: 'DellLee',
          content: "这个我没实验过，我自己研究下再告诉你",
        },
        answers: 1,
        views: 5,
        chapter: "5-4 Enzyme 的配置及使用",
        time: "2020-04-30",
        status: {
          text: '待解决',
          code: 0
        }
      },
      {
        title: "老师，能不能把前几节课的代码上传一下",
        avatar: "https://img.mukewang.com/user/545847c10001f40702200220-100-100.jpg",
        answer: {
          teacher: 'DellLee',
          content: "这个我没实验过，我自己研究下再告诉你",
        },
        answers: 1,
        views: 5,
        chapter: "5-4 Enzyme 的配置及使用",
        time: "2020-04-30",
        status: {
          text: '已采纳',
          code: 1
        }
      },
      {
        title: "这一节课有个小问题",
        avatar: "https://img.mukewang.com/user/5a01401500018d9903000300-100-100.jpg",
        answer: {
          teacher: 'DellLee',
          content: "这个我没实验过，我自己研究下再告诉你",
        },
        answers: 1,
        views: 30,
        chapter: "5-4 Enzyme 的配置及使用",
        time: "2019-12-01",
        status: {
          text: '已采纳',
          code: 1
        }
      },
      {
        title: "jest coverage配置问题",
        avatar: "https://img.mukewang.com/user/545863080001255902200220-100-100.jpg",
        answer: {
          teacher: 'DellLee',
          content: "这个我没实验过，我自己研究下再告诉你",
        },
        answers: 1,
        views: 5,
        chapter: "5-4 Enzyme 的配置及使用",
        time: "2020-03-30",
        status: {
          text: '已采纳',
          code: 1
        }
      },
      {
        title: "jQuery requires a window with a document",
        avatar: "https://img.mukewang.com/user/5405241d00010c6501000100-100-100.jpg",
        answer: {
          teacher: 'DellLee',
          content: "这个我没实验过，我自己研究下再告诉你",
        },
        answers: 1,
        views: 5,
        chapter: "5-4 Enzyme 的配置及使用",
        time: "2020-02-30",
        status: {
          text: '已采纳',
          code: 1
        }
      },
      {
        title: "老师，做UI测试用哪个库比较好，主要就是测试一下是否精确的还原UI给的设计稿",
        avatar: "https://img.mukewang.com/user/57613b890001cba501000100-100-100.jpg",
        answer: {
          teacher: 'DellLee',
          content: "这个我没实验过，我自己研究下再告诉你",
        },
        answers: 1,
        views: 5,
        chapter: "5-4 Enzyme 的配置及使用",
        time: "2020-01-30",
        status: {
          text: '未解决',
          code: 0
        }
      }
    ]

        """
    txt = demjson.decode(txt)
    free_ids = Lesson.objects.filter(type__code="0").values_list("id", flat=True)  # 免费
    for index, one in enumerate(txt):
        status_code = one["status"]["code"]
        for id in free_ids:
            try:
                del one["status"]
                del one["answer"]
            except:
                pass
            item = Qa(**one, lessonid=id, type=QaType.objects.get(code=status_code))
            item.save()


def import_notice():
    txt = """[
  {
    code: 1,
    isRead: false,
    title: "多知多懂的程序猿，慕丝2069084诚恳的向你抛来了一个问题，不要吝惜你的才华，帮帮他吧！",
    time: "2019-08-13 16:32:01"
  },
  {
    code: 1,
    isRead: false,
    title: "你购买的“前端要学的测试课 从Jest入门到 TDD/BDD双实战”课程又更新了，一如既往的坚持学习吧",
    time: "2019-08-12 13:36:45"
  },
  {
    code: 1,
    isRead: true,
    title: "多知多懂的程序猿，qq_慕尼黑1028606诚恳的向你抛来了一个问题,，不要吝惜你的才华，帮帮他吧！",
    time: "2019-08-13 16:32:01"
  },
  {
    code: 1,
    isRead: true,
    title: "你购买的“前端要学的测试课 从Jest入门到 TDD/BDD双实战”课程又更新了，一如既往的坚持学习吧！",
    time: "2019-08-13 16:32:01"
  },
  {
    code: 2,
    isRead: false,
    title: "您于07月18日14时27分收到支付宝充值余额1000元",
    time: "2019-08-13 16:32:01"
  },
  {
    code: 2,
    isRead: false,
    title: "尊敬的用户，您有8张优惠券即将过期，机不可失，来选一门心仪的课程吧！",
    time: "2019-08-13 16:32:01"
  },
  {
    code: 2,
    isRead: true,
    title: "尊敬的用户，您有8张优惠券即将过期，机不可失，来选一门心仪的课程吧！",
    time: "2019-08-13 16:32:01"
  },
  {
    code: 1,
    isRead: true,
    title: "你购买的“前端下一代开发语言TypeScript  从基础到axios实战”课程又更新了，一如既往的坚持学习吧",
    time: "2019-08-13 16:32:01"
  },
  {
    code: 1,
    isRead: false,
    title: "多知多懂的程序猿，慕丝2069084诚恳的向你抛来了一个问题，不要吝惜你的才华，帮帮他吧！",
    time: "2019-08-13 16:32:01"
  },
  {
    code: 1,
    isRead: false,
    title: "你购买的“前端要学的测试课 从Jest入门到 TDD/BDD双实战”课程又更新了，一如既往的坚持学习吧",
    time: "2019-08-12 13:36:45"
  },
  {
    code: 1,
    isRead: true,
    title: "多知多懂的程序猿，qq_慕尼黑1028606诚恳的向你抛来了一个问题,，不要吝惜你的才华，帮帮他吧！",
    time: "2019-08-13 16:32:01"
  },
  {
    code: 1,
    isRead: true,
    title: "你购买的“前端要学的测试课 从Jest入门到 TDD/BDD双实战”课程又更新了，一如既往的坚持学习吧！",
    time: "2019-08-13 16:32:01"
  },
  {
    code: 2,
    isRead: false,
    title: "您于07月18日14时27分收到支付宝充值余额1000元",
    time: "2019-08-13 16:32:01"
  },
  {
    code: 2,
    isRead: false,
    title: "尊敬的用户，您有8张优惠券即将过期，机不可失，来选一门心仪的课程吧！",
    time: "2019-08-13 16:32:01"
  },
  {
    code: 2,
    isRead: true,
    title: "尊敬的用户，您有8张优惠券即将过期，机不可失，来选一门心仪的课程吧！",
    time: "2019-08-13 16:32:01"
  },
  {
    code: 1,
    isRead: true,
    title: "你购买的“前端下一代开发语言TypeScript  从基础到axios实战”课程又更新了，一如既往的坚持学习吧",
    time: "2019-08-13 16:32:01"
  },
  {
    code: 1,
    isRead: false,
    title: "多知多懂的程序猿，慕丝2069084诚恳的向你抛来了一个问题，不要吝惜你的才华，帮帮他吧！",
    time: "2019-08-13 16:32:01"
  },
  {
    code: 1,
    isRead: false,
    title: "你购买的“前端要学的测试课 从Jest入门到 TDD/BDD双实战”课程又更新了，一如既往的坚持学习吧",
    time: "2019-08-12 13:36:45"
  },
  {
    code: 1,
    isRead: true,
    title: "多知多懂的程序猿，qq_慕尼黑1028606诚恳的向你抛来了一个问题,，不要吝惜你的才华，帮帮他吧！",
    time: "2019-08-13 16:32:01"
  },
  {
    code: 1,
    isRead: true,
    title: "你购买的“前端要学的测试课 从Jest入门到 TDD/BDD双实战”课程又更新了，一如既往的坚持学习吧！",
    time: "2019-08-13 16:32:01"
  },
  {
    code: 2,
    isRead: false,
    title: "您于07月18日14时27分收到支付宝充值余额1000元",
    time: "2019-08-13 16:32:01"
  },
  {
    code: 2,
    isRead: false,
    title: "尊敬的用户，您有8张优惠券即将过期，机不可失，来选一门心仪的课程吧！",
    time: "2019-08-13 16:32:01"
  },
  {
    code: 2,
    isRead: true,
    title: "尊敬的用户，您有8张优惠券即将过期，机不可失，来选一门心仪的课程吧！",
    time: "2019-08-13 16:32:01"
  },
  {
    code: 1,
    isRead: true,
    title: "你购买的“前端下一代开发语言TypeScript  从基础到axios实战”课程又更新了，一如既往的坚持学习吧",
    time: "2019-08-13 16:32:01"
  }
]"""
    txt = demjson.decode(txt)
    for index, one in enumerate(txt):
        del one["isRead"]
        notice = Notice(**one)
        notice.save()


def import_user_notice():
    message_ids = Notice.objects.all().values_list("id", flat=True)
    for message in message_ids:
        user_notice = UserNotice(messageid_id=message, userid=1, isRead=False, isDelete=False)
        user_notice.save()


def import_recharge_action():
    txt = """
    [
  {
    time: "2019-07-18 14:29:56",
    money: "1.00",
    action: {
      text: "转入",
      code: 0
    },
    way: {
      text: '支付宝',
      code: 0
    },
    total: "1.00",
    remark: "支付宝充值",
  },
  {
    time: "2019-07-19 14:29:56",
    money: "9.00",
    action: {
      text: "转入",
      code: 0
    },
    way: {
      text: '支付宝',
      code: 0
    },
    total: "10.00",
    remark: "支付宝充值"
  },
  {
    time: "2019-07-20 14:29:56",
    money: "30.00",
    action: {
      text: "转入",
      code: 0
    },
    way: {
      text: '支付宝',
      code: 0
    },
    total: "40.00",
    remark: "支付宝充值"
  },
  {
    time: "2019-07-21 14:29:56",
    money: "50.00",
    action: {
      text: "转入",
      code: 0
    },
    way: {
      text: '微信',
      code: 1
    },
    total: "90.00",
    remark: "微信充值"
  },
  {
    time: "2019-07-22 14:29:56",
    money: "900.00",
    action: {
      text: "转入",
      code: 0
    },
    way: {
      text: '微信',
      code: 1
    },
    total: "990.00",
    remark: "微信充值"
  },
  {
    time: "2019-07-18 14:29:56",
    money: "1.00",
    action: {
      text: "转入",
      code: 0
    },
    way: {
      text: '支付宝',
      code: 0
    },
    total: "1.00",
    remark: "支付宝充值",
  },
  {
    time: "2019-07-19 14:29:56",
    money: "9.00",
    action: {
      text: "转入",
      code: 0
    },
    way: {
      text: '支付宝',
      code: 0
    },
    total: "10.00",
    remark: "支付宝充值"
  },
  {
    time: "2019-07-20 14:29:56",
    money: "30.00",
    action: {
      text: "转入",
      code: 0
    },
    way: {
      text: '支付宝',
      code: 0
    },
    total: "40.00",
    remark: "支付宝充值"
  },
  {
    time: "2019-07-21 14:29:56",
    money: "50.00",
    action: {
      text: "转入",
      code: 0
    },
    way: {
      text: '微信',
      code: 1
    },
    total: "90.00",
    remark: "微信充值"
  },
  {
    time: "2019-07-22 14:29:56",
    money: "900.00",
    action: {
      text: "转入",
      code: 0
    },
    way: {
      text: '微信',
      code: 1
    },
    total: "990.00",
    remark: "微信充值"
  },
  {
    time: "2019-07-18 14:29:56",
    money: "1.00",
    action: {
      text: "转入",
      code: 0
    },
    way: {
      text: '支付宝',
      code: 0
    },
    total: "1.00",
    remark: "支付宝充值",
  },
  {
    time: "2019-07-19 14:29:56",
    money: "9.00",
    action: {
      text: "转入",
      code: 0
    },
    way: {
      text: '支付宝',
      code: 0
    },
    total: "10.00",
    remark: "支付宝充值"
  },
  {
    time: "2019-07-20 14:29:56",
    money: "30.00",
    action: {
      text: "转入",
      code: 0
    },
    way: {
      text: '支付宝',
      code: 0
    },
    total: "40.00",
    remark: "支付宝充值"
  },
  {
    time: "2019-07-21 14:29:56",
    money: "50.00",
    action: {
      text: "转入",
      code: 0
    },
    way: {
      text: '微信',
      code: 1
    },
    total: "90.00",
    remark: "微信充值"
  },
  {
    time: "2019-07-22 14:29:56",
    money: "900.00",
    action: {
      text: "转入",
      code: 0
    },
    way: {
      text: '微信',
      code: 1
    },
    total: "990.00",
    remark: "微信充值"
  },
  {
    time: "2019-07-18 14:29:56",
    money: "1.00",
    action: {
      text: "转入",
      code: 0
    },
    way: {
      text: '支付宝',
      code: 0
    },
    total: "1.00",
    remark: "支付宝充值",
  },
  {
    time: "2019-07-19 14:29:56",
    money: "9.00",
    action: {
      text: "转入",
      code: 0
    },
    way: {
      text: '支付宝',
      code: 0
    },
    total: "10.00",
    remark: "支付宝充值"
  },
  {
    time: "2019-07-20 14:29:56",
    money: "30.00",
    action: {
      text: "转入",
      code: 0
    },
    way: {
      text: '支付宝',
      code: 0
    },
    total: "40.00",
    remark: "支付宝充值"
  },
  {
    time: "2019-07-21 14:29:56",
    money: "50.00",
    action: {
      text: "转入",
      code: 0
    },
    way: {
      text: '微信',
      code: 1
    },
    total: "90.00",
    remark: "微信充值"
  },
  {
    time: "2019-07-22 14:29:56",
    money: "900.00",
    action: {
      text: "转入",
      code: 0
    },
    way: {
      text: '微信',
      code: 1
    },
    total: "990.00",
    remark: "微信充值"
  },
  {
    time: "2019-07-18 14:29:56",
    money: "1.00",
    action: {
      text: "转入",
      code: 0
    },
    way: {
      text: '支付宝',
      code: 0
    },
    total: "1.00",
    remark: "支付宝充值",
  },
  {
    time: "2019-07-19 14:29:56",
    money: "9.00",
    action: {
      text: "转入",
      code: 0
    },
    way: {
      text: '支付宝',
      code: 0
    },
    total: "10.00",
    remark: "支付宝充值"
  },
  {
    time: "2019-07-20 14:29:56",
    money: "30.00",
    action: {
      text: "转入",
      code: 0
    },
    way: {
      text: '支付宝',
      code: 0
    },
    total: "40.00",
    remark: "支付宝充值"
  },
  {
    time: "2019-07-21 14:29:56",
    money: "50.00",
    action: {
      text: "转入",
      code: 0
    },
    way: {
      text: '微信',
      code: 1
    },
    total: "90.00",
    remark: "微信充值"
  },
  {
    time: "2019-07-22 14:29:56",
    money: "900.00",
    action: {
      text: "转入",
      code: 0
    },
    way: {
      text: '微信',
      code: 1
    },
    total: "990.00",
    remark: "微信充值"
  }
]

    """
    txt = demjson.decode(txt)
    for index, one in enumerate(txt):
        one_action = one["action"]
        one_way = one["way"]
        notice1 = RechargeAction(**one_action)
        notice2 = RechargePay(**one_way)
        try:
            notice1.save()
        except django.db.utils.IntegrityError:
            pass
        try:
            notice2.save()
        except django.db.utils.IntegrityError:
            pass


def import_recharge():
    txt = """
    [
  {
    time: "2019-07-18 14:29:56",
    money: "1.00",
    action: {
      text: "转入",
      code: 0
    },
    way: {
      text: '支付宝',
      code: 0
    },
    total: "1.00",
    remark: "支付宝充值",
  },
  {
    time: "2019-07-19 14:29:56",
    money: "9.00",
    action: {
      text: "转入",
      code: 0
    },
    way: {
      text: '支付宝',
      code: 0
    },
    total: "10.00",
    remark: "支付宝充值"
  },
  {
    time: "2019-07-20 14:29:56",
    money: "30.00",
    action: {
      text: "转入",
      code: 0
    },
    way: {
      text: '支付宝',
      code: 0
    },
    total: "40.00",
    remark: "支付宝充值"
  },
  {
    time: "2019-07-21 14:29:56",
    money: "50.00",
    action: {
      text: "转入",
      code: 0
    },
    way: {
      text: '微信',
      code: 1
    },
    total: "90.00",
    remark: "微信充值"
  },
  {
    time: "2019-07-22 14:29:56",
    money: "900.00",
    action: {
      text: "转入",
      code: 0
    },
    way: {
      text: '微信',
      code: 1
    },
    total: "990.00",
    remark: "微信充值"
  },
  {
    time: "2019-07-18 14:29:56",
    money: "1.00",
    action: {
      text: "转入",
      code: 0
    },
    way: {
      text: '支付宝',
      code: 0
    },
    total: "1.00",
    remark: "支付宝充值",
  },
  {
    time: "2019-07-19 14:29:56",
    money: "9.00",
    action: {
      text: "转入",
      code: 0
    },
    way: {
      text: '支付宝',
      code: 0
    },
    total: "10.00",
    remark: "支付宝充值"
  },
  {
    time: "2019-07-20 14:29:56",
    money: "30.00",
    action: {
      text: "转入",
      code: 0
    },
    way: {
      text: '支付宝',
      code: 0
    },
    total: "40.00",
    remark: "支付宝充值"
  },
  {
    time: "2019-07-21 14:29:56",
    money: "50.00",
    action: {
      text: "转入",
      code: 0
    },
    way: {
      text: '微信',
      code: 1
    },
    total: "90.00",
    remark: "微信充值"
  },
  {
    time: "2019-07-22 14:29:56",
    money: "900.00",
    action: {
      text: "转入",
      code: 0
    },
    way: {
      text: '微信',
      code: 1
    },
    total: "990.00",
    remark: "微信充值"
  },
  {
    time: "2019-07-18 14:29:56",
    money: "1.00",
    action: {
      text: "转入",
      code: 0
    },
    way: {
      text: '支付宝',
      code: 0
    },
    total: "1.00",
    remark: "支付宝充值",
  },
  {
    time: "2019-07-19 14:29:56",
    money: "9.00",
    action: {
      text: "转入",
      code: 0
    },
    way: {
      text: '支付宝',
      code: 0
    },
    total: "10.00",
    remark: "支付宝充值"
  },
  {
    time: "2019-07-20 14:29:56",
    money: "30.00",
    action: {
      text: "转入",
      code: 0
    },
    way: {
      text: '支付宝',
      code: 0
    },
    total: "40.00",
    remark: "支付宝充值"
  },
  {
    time: "2019-07-21 14:29:56",
    money: "50.00",
    action: {
      text: "转入",
      code: 0
    },
    way: {
      text: '微信',
      code: 1
    },
    total: "90.00",
    remark: "微信充值"
  },
  {
    time: "2019-07-22 14:29:56",
    money: "900.00",
    action: {
      text: "转入",
      code: 0
    },
    way: {
      text: '微信',
      code: 1
    },
    total: "990.00",
    remark: "微信充值"
  },
  {
    time: "2019-07-18 14:29:56",
    money: "1.00",
    action: {
      text: "转入",
      code: 0
    },
    way: {
      text: '支付宝',
      code: 0
    },
    total: "1.00",
    remark: "支付宝充值",
  },
  {
    time: "2019-07-19 14:29:56",
    money: "9.00",
    action: {
      text: "转入",
      code: 0
    },
    way: {
      text: '支付宝',
      code: 0
    },
    total: "10.00",
    remark: "支付宝充值"
  },
  {
    time: "2019-07-20 14:29:56",
    money: "30.00",
    action: {
      text: "转入",
      code: 0
    },
    way: {
      text: '支付宝',
      code: 0
    },
    total: "40.00",
    remark: "支付宝充值"
  },
  {
    time: "2019-07-21 14:29:56",
    money: "50.00",
    action: {
      text: "转入",
      code: 0
    },
    way: {
      text: '微信',
      code: 1
    },
    total: "90.00",
    remark: "微信充值"
  },
  {
    time: "2019-07-22 14:29:56",
    money: "900.00",
    action: {
      text: "转入",
      code: 0
    },
    way: {
      text: '微信',
      code: 1
    },
    total: "990.00",
    remark: "微信充值"
  },
  {
    time: "2019-07-18 14:29:56",
    money: "1.00",
    action: {
      text: "转入",
      code: 0
    },
    way: {
      text: '支付宝',
      code: 0
    },
    total: "1.00",
    remark: "支付宝充值",
  },
  {
    time: "2019-07-19 14:29:56",
    money: "9.00",
    action: {
      text: "转入",
      code: 0
    },
    way: {
      text: '支付宝',
      code: 0
    },
    total: "10.00",
    remark: "支付宝充值"
  },
  {
    time: "2019-07-20 14:29:56",
    money: "30.00",
    action: {
      text: "转入",
      code: 0
    },
    way: {
      text: '支付宝',
      code: 0
    },
    total: "40.00",
    remark: "支付宝充值"
  },
  {
    time: "2019-07-21 14:29:56",
    money: "50.00",
    action: {
      text: "转入",
      code: 0
    },
    way: {
      text: '微信',
      code: 1
    },
    total: "90.00",
    remark: "微信充值"
  },
  {
    time: "2019-07-22 14:29:56",
    money: "900.00",
    action: {
      text: "转入",
      code: 0
    },
    way: {
      text: '微信',
      code: 1
    },
    total: "990.00",
    remark: "微信充值"
  }
]

    """
    txt = demjson.decode(txt)
    for index, one in enumerate(txt):
        one_action_code = one["action"]["code"]
        one_way_code = one["way"]["code"]
        del one["action"]
        del one["way"]
        del one["total"]
        one["money"] = float(one["money"]) * 100
        recharge = Recharge(**one, action=RechargeAction.objects.get(code=one_action_code), way=RechargePay.objects.get(code=one_way_code))
        recharge.save()


def import_coupon_range():
    txt = """[
  {
    number: "10",
    limit: "50",
    starttime: "2020.05.01",
    endtime: "2020.05.15",
    range: {
      text: '实战课程',
      code: 0,
    },
    status: {
      text: '未使用',
      code: 0
    }
  },
  {
    number: "30",
    limit: "99",
    starttime: "2020.05.01",
    endtime: "2020.05.15",
    range: {
      text: '实战课程',
      code: 0,
    },
    status: {
      text: '未使用',
      code: 0
    }
  },
  {
    number: "60",
    limit: "199",
    starttime: "2020.05.01",
    endtime: "2020.05.15",
    range: {
      text: '实战课程',
      code: 0,
    },
    status: {
      text: '未使用',
      code: 0
    }
  },
  {
    number: "90",
    limit: "399",
    starttime: "2020.05.01",
    endtime: "2020.05.15",
    range: {
      text: '实战课程',
      code: 0,
    },
    status: {
      text: '未使用',
      code: 0
    }
  },
  {
    number: "120",
    limit: "599",
    starttime: "2020.05.01",
    endtime: "2020.05.15",
    range: {
      text: '实战课程',
      code: 0,
    },
    status: {
      text: '未使用',
      code: 0
    }
  },
  {
    number: "30",
    limit: "99",
    starttime: "2020.05.01",
    endtime: "2020.05.15",
    range: {
      text: '实战课程',
      code: 0,
    },
    status: {
      text: '未使用',
      code: 0
    }
  },
  {
    number: "30",
    limit: "99",
    starttime: "2019.03.01",
    endtime: "2019.07.01",
    range: {
      text: '实战课程',
      code: 0,
    },
    status: {
      text: '已使用',
      code: 1
    }
  },
  {
    number: "60",
    limit: "199",
    starttime: "2020.05.01",
    endtime: "2020.05.15",
    range: {
      text: '实战课程',
      code: 0,
    },
    status: {
      text: '已使用',
      code: 1
    }
  },
  {
    number: "60",
    limit: "299",
    starttime: "2019.03.01",
    endtime: "2019.07.01",
    range: {
      text: '实战课程',
      code: 0,
    },
    status: {
      text: '已使用',
      code: 1
    }
  },
  {
    number: "90",
    limit: "399",
    starttime: "2019.03.01",
    endtime: "2019.07.01",
    range: {
      text: '实战课程',
      code: 0,
    },
    status: {
      text: '已使用',
      code: 1
    }
  },
  {
    number: "120",
    limit: "599",
    starttime: "2019.03.01",
    endtime: "2019.07.01",
    range: {
      text: '实战课程',
      code: 0,
    },
    status: {
      text: '已使用',
      code: 1
    }
  },
  {
    number: "30",
    limit: "99",
    starttime: "2019.03.01",
    endtime: "2019.07.01",
    range: {
      text: '实战课程',
      code: 0,
    },
    status: {
      text: '已过期',
      code: 2
    }
  },
  {
    number: "60",
    limit: "199",
    starttime: "2020.05.01",
    endtime: "2020.05.15",
    range: {
      text: '实战课程',
      code: 0,
    },
    status: {
      text: '已过期',
      code: 2
    }
  },
  {
    number: "60",
    limit: "299",
    starttime: "2019.03.01",
    endtime: "2019.07.01",
    range: {
      text: '实战课程',
      code: 0,
    },
    status: {
      text: '已过期',
      code: 2
    }
  },
  {
    number: "90",
    limit: "399",
    starttime: "2019.03.01",
    endtime: "2019.07.01",
    range: {
      text: '实战课程',
      code: 0,
    },
    status: {
      text: '已过期',
      code: 2
    }
  },
  {
    number: "120",
    limit: "599",
    starttime: "2019.03.01",
    endtime: "2019.07.01",
    range: {
      text: '实战课程',
      code: 0,
    },
    status: {
      text: '已过期',
      code: 2
    }
  }
]"""
    txt = demjson.decode(txt)
    for index, one in enumerate(txt):
        one_action = one["range"]
        one_way = one["status"]
        notice1 = CouponRange(**one_action)
        notice2 = CouponStatus(**one_way)
        try:
            notice1.save()
        except django.db.utils.IntegrityError:
            pass
        try:
            notice2.save()
        except django.db.utils.IntegrityError:
            pass


def import_coupon():
    txt = """[
      {
        number: "10",
        limit: "50",
        starttime: "2020.05.01",
        endtime: "2020.05.15",
        range: {
          text: '实战课程',
          code: 0,
        },
        status: {
          text: '未使用',
          code: 0
        }
      },
      {
        number: "30",
        limit: "99",
        starttime: "2020.05.01",
        endtime: "2020.05.15",
        range: {
          text: '实战课程',
          code: 0,
        },
        status: {
          text: '未使用',
          code: 0
        }
      },
      {
        number: "60",
        limit: "199",
        starttime: "2020.05.01",
        endtime: "2020.05.15",
        range: {
          text: '实战课程',
          code: 0,
        },
        status: {
          text: '未使用',
          code: 0
        }
      },
      {
        number: "90",
        limit: "399",
        starttime: "2020.05.01",
        endtime: "2020.05.15",
        range: {
          text: '实战课程',
          code: 0,
        },
        status: {
          text: '未使用',
          code: 0
        }
      },
      {
        number: "120",
        limit: "599",
        starttime: "2020.05.01",
        endtime: "2020.05.15",
        range: {
          text: '实战课程',
          code: 0,
        },
        status: {
          text: '未使用',
          code: 0
        }
      },
      {
        number: "30",
        limit: "99",
        starttime: "2020.05.01",
        endtime: "2020.05.15",
        range: {
          text: '实战课程',
          code: 0,
        },
        status: {
          text: '未使用',
          code: 0
        }
      },
      {
        number: "30",
        limit: "99",
        starttime: "2019.03.01",
        endtime: "2019.07.01",
        range: {
          text: '实战课程',
          code: 0,
        },
        status: {
          text: '已使用',
          code: 1
        }
      },
      {
        number: "60",
        limit: "199",
        starttime: "2020.05.01",
        endtime: "2020.05.15",
        range: {
          text: '实战课程',
          code: 0,
        },
        status: {
          text: '已使用',
          code: 1
        }
      },
      {
        number: "60",
        limit: "299",
        starttime: "2019.03.01",
        endtime: "2019.07.01",
        range: {
          text: '实战课程',
          code: 0,
        },
        status: {
          text: '已使用',
          code: 1
        }
      },
      {
        number: "90",
        limit: "399",
        starttime: "2019.03.01",
        endtime: "2019.07.01",
        range: {
          text: '实战课程',
          code: 0,
        },
        status: {
          text: '已使用',
          code: 1
        }
      },
      {
        number: "120",
        limit: "599",
        starttime: "2019.03.01",
        endtime: "2019.07.01",
        range: {
          text: '实战课程',
          code: 0,
        },
        status: {
          text: '已使用',
          code: 1
        }
      },
      {
        number: "30",
        limit: "99",
        starttime: "2019.03.01",
        endtime: "2019.07.01",
        range: {
          text: '实战课程',
          code: 0,
        },
        status: {
          text: '已过期',
          code: 2
        }
      },
      {
        number: "60",
        limit: "199",
        starttime: "2020.05.01",
        endtime: "2020.05.15",
        range: {
          text: '实战课程',
          code: 0,
        },
        status: {
          text: '已过期',
          code: 2
        }
      },
      {
        number: "60",
        limit: "299",
        starttime: "2019.03.01",
        endtime: "2019.07.01",
        range: {
          text: '实战课程',
          code: 0,
        },
        status: {
          text: '已过期',
          code: 2
        }
      },
      {
        number: "90",
        limit: "399",
        starttime: "2019.03.01",
        endtime: "2019.07.01",
        range: {
          text: '实战课程',
          code: 0,
        },
        status: {
          text: '已过期',
          code: 2
        }
      },
      {
        number: "120",
        limit: "599",
        starttime: "2019.03.01",
        endtime: "2019.07.01",
        range: {
          text: '实战课程',
          code: 0,
        },
        status: {
          text: '已过期',
          code: 2
        }
      }
    ]"""
    txt = demjson.decode(txt)
    for index, one in enumerate(txt):
        one_range_code = one["range"]["code"]
        one_status_code = one["status"]["code"]
        del one["range"]
        del one["status"]
        one["starttime"] = datetime.strptime(one["starttime"], '%Y.%m.%d')
        one["endtime"] = datetime.strptime(one["endtime"], '%Y.%m.%d')
        recharge = Coupon(**one, range=CouponRange.objects.get(code=one_range_code), status=CouponStatus.objects.get(code=one_status_code))
        recharge.save()


def import_bill():
    txt = """ [
  {
    name: "基于TypeScript从零重构axios",
    time: "2019-04-24 10:36:38",
    cost: "328.00",
    way: {
      text: "支付宝",
      code: 0
    }
  },
  {
    name: "Vue 2.0开发企业级移动端音乐Web APP",
    time: "2019-04-24 10:36:38",
    cost: "305.79",
    way: {
      text: "支付宝",
      code: 0
    }
  },
  {
    name: "Get全栈技能点 Vue2.0 / Node.js / MongoDB 打造商城系统",
    time: "2019-03-15 19:26:01",
    cost: "266.71",
    way: {
      text: "支付宝",
      code: 0
    }
  },
  {
    name: "纯正商业级应用-微信小程序开发实战",
    time: "2019-03-15 19:26:01",
    cost: "280.50",
    way: {
      text: "支付宝",
      code: 0
    }
  },
  {
    name: "基于TypeScript从零重构axios",
    time: "2019-04-24 10:36:38",
    cost: "328.00",
    way: {
      text: "支付宝",
      code: 0
    }
  },
  {
    name: "Vue 2.0开发企业级移动端音乐Web APP",
    time: "2019-04-24 10:36:38",
    cost: "305.79",
    way: {
      text: "微信",
      code: 1
    }
  },
  {
    name: "Get全栈技能点 Vue2.0 / Node.js / MongoDB 打造商城系统",
    time: "2019-03-15 19:26:01",
    cost: "266.71",
    way: {
      text: "微信",
      code: 1
    }
  },
  {
    name: "纯正商业级应用-微信小程序开发实战",
    time: "2019-03-15 19:26:01",
    cost: "280.50",
    way: {
      text: "微信",
      code: 1
    }
  },
  {
    name: "基于TypeScript从零重构axios",
    time: "2019-04-24 10:36:38",
    cost: "328.00",
    way: {
      text: "微信",
      code: 1
    }
  },
  {
    name: "Vue 2.0开发企业级移动端音乐Web APP",
    time: "2019-04-24 10:36:38",
    cost: "305.79",
    way: {
      text: "微信",
      code: 1
    }
  },
  {
    name: "Get全栈技能点 Vue2.0 / Node.js / MongoDB 打造商城系统",
    time: "2019-03-15 19:26:01",
    cost: "266.71",
    way: {
      text: "微信",
      code: 1
    }
  },
  {
    name: "纯正商业级应用-微信小程序开发实战",
    time: "2019-03-15 19:26:01",
    cost: "280.50",
    way: {
      text: "微信",
      code: 1
    }
  },
  {
    name: "基于TypeScript从零重构axios",
    time: "2019-04-24 10:36:38",
    cost: "328.00",
    way: {
      text: "微信",
      code: 1
    }
  }
]"""
    txt = demjson.decode(txt)
    for index, one in enumerate(txt):
        one_way_code = one["way"]["code"]
        del one["way"]
        one["cost"] = float(one["cost"]) * 100
        recharge = Bill(**one, way=RechargePay.objects.get(code=one_way_code))
        recharge.save()


def import_order_status():
    order_dict = [
        {
            "text": "未支付",
            "code": 0
        },
        {
            "text": "已完成",
            "code": 1
        },
        {
            "text": "已关闭",
            "code": 2
        }
    ]
    for one in order_dict:
        order_status = OrderStatus(**one)
        order_status.save()


def import_consult():
    txt = """[
    {
      "like": false,
      "number": 0,
      "title": "课程有效期是多久呢？",
      "answer": "亲，您好~课程无限期的，您可以根据自己的时间安排学习进度。祝您学习愉快~",
      "time": "2019-07-18",
      "from": "Flutter从入门到进阶 实战携程网App"
    },
    {
      "like": true,
      "number": 99,
      "title": "试听一节课",
      "answer": "亲，您好~课程界面上有课程的导学试听。祝您学习愉快~",
      "time": "2019-07-18",
      "from": "Flutter从入门到进阶 实战携程网App"
    },
    {
      "like": true,
      "number": 30,
      "title": "老师除了视频，还会有辅助资料吗，遇到不懂的，可以问您吗？",
      "answer": "亲，您好~每一小节的代码，我都会提供给大家，另外我为大家建立了git仓库，一些高级的webpack内容，我会不断向仓库中新增。我们还有群，大家可以互相探讨Webpack的最佳实践，是非常好的学习沟通资源。同学们有问题，随时可以在慕课留言区提问，我会及时给大家解答。祝您学习愉快~",
      "time": "2019-07-18",
      "from": "从基础到实战 手把手带你掌握新版Webpack4.0"
    },
    {
      "like": true,
      "number": 44,
      "title": "课程中讲到的内容，是否是目前企业中常用的解决方案，能够直接应用到实际工作中吗？",
      "answer": "亲，您好~课程中的问题，都是在业务中非常常见的配置，你可以直接应用在实际工作中，帮助你解决配置问题。祝您学习愉快~",
      "time": "2019-07-18",
      "from": "从基础到实战 手把手带你掌握新版Webpack4.0"
    },
    {
      "like": true,
      "number": 12,
      "title": "最近VUE的课程络绎不绝，这个课程对于其他来说特点在哪里呢？",
      "answer": "亲，您好~这门课程是vue入门的课程，针对没有vue基础，学要学习vue的用户人群。所以课程的前部分是讲解vue的入门基础语法，后半部分是一个实战的项目，所以是入门到实战的完美过渡的课程。学习完成这门课程再学习其它的vue高级课程其实是最好的学习路径了。祝您学习愉快~",
      "time": "2019-07-18",
      "from": "Vue2.5开发去哪儿网App 从零基础入门到实战项目"
    },
    {
      "like": true,
      "number": 30,
      "title": "有关于通过路由控制权限的讲解吗",
      "answer": "亲，您好~这部分内容课程中没有讲， 但是很简单 可以随时问我，在qq群@我，或者在平台问答区提问。祝您学习愉快~",
      "time": "2019-07-18",
      "from": "Vue2.5开发去哪儿网App 从零基础入门到实战项目"
    }
  ]"""
    txt = demjson.decode(txt)
    for index, one in enumerate(txt):
        one["course_name"] = one["from"]
        del one["from"]
        recharge = Consult(**one)
        recharge.save()


def import_question():
    txt = """
    [
  {
    title: "Chrome59到底支不支持forEach函数？",
    answers: 23,
    views: 11519,
    tags: ["JavaScript"],
    icon: "https://img.mukewang.com/59e96f340001faac02400240.jpg",
    isResolve: true
  },
  {
    title: "慕课网适合非计算机专业的人学习吗",
    answers: 56,
    views: 15635,
    tags: ["HTML/CSS", "JavaScript"],
    icon: "https://img.mukewang.com/59e96ff90001ab0402400240.jpg",
    isResolve: true
  },
  {
    title: "我是网页设计从业者，怎么入门前端",
    answers: 57,
    views: 11053,
    tags: ["HTML/CSS", "JavaScript"],
    icon: "https://img.mukewang.com/59e96ff90001ab0402400240.jpg",
    isResolve: true
  },
  {
    title: "大三暑假没有实习，这段时间应该怎么安排来提高前端水平？",
    answers: 29,
    views: 5971,
    tags: ["Vue.js"],
    icon: "https://img.mukewang.com/59e96deb0001f9d302400240.jpg",
    isResolve: true
  },
  {
    title: "貌似整个函数都没有调用？",
    answers: 15,
    views: 3972,
    tags: ["JavaScript"],
    icon: "https://img.mukewang.com/59e96f340001faac02400240.jpg",
    isResolve: true
  },
  {
    title: "怎么用html 或CSS写出下列的表单样子",
    answers: 20,
    views: 6987,
    tags: ["CSS3", "HTML/CSS", "React.js"],
    icon: "https://img.mukewang.com/59e96ebe0001a9ad02400240.jpg",
    isResolve: false
  },
  {
    title: "/* margin:0;padding:0（消除文本与div边框之间的间隙）*/",
    answers: 4,
    views: 2278,
    tags: ["CSS3"],
    icon: "https://img.mukewang.com/59e96ebe0001a9ad02400240.jpg",
    isResolve: false
  },
  {
    title: "关于VUE路由单页面使用JQUERY第三方插件的问题？跳转过去插件部分就不起作用了",
    answers: 7,
    views: 6805,
    tags: ["Vue.js", "前端工具"],
    icon: "https://img.mukewang.com/59e96deb0001f9d302400240.jpg",
    isResolve: false
  },
  {
    title: "HTML 打印机",
    answers: 20,
    views: 6987,
    tags: ["CSS3", "HTML/CSS", "React.js"],
    icon: "https://img.mukewang.com/59e96ebe0001a9ad02400240.jpg",
    isResolve: false
  },
  {
    title: "【花式填坑第9期】解密高级前端攻城狮の极速进化",
    answers: 4,
    views: 2278,
    tags: ["CSS3"],
    icon: "https://img.mukewang.com/59e96ebe0001a9ad02400240.jpg",
    isResolve: false
  },
  {
    title: "transform-style:preserve-3d",
    answers: 7,
    views: 6805,
    tags: ["Vue.js", "前端工具"],
    icon: "https://img.mukewang.com/59e96deb0001f9d302400240.jpg",
    isResolve: false
  },
  {
    title: "大佬们 请问在HTML中<input/>标签和<input></input>有什么区别？",
    answers: 20,
    views: 6987,
    tags: ["CSS3", "HTML/CSS", "React.js"],
    icon: "https://img.mukewang.com/59e96ebe0001a9ad02400240.jpg",
    isResolve: false
  },
  {
    title: "盒子1下边界30px 盒子2的上边界50px  那盒子1的下边界还会30px吗",
    answers: 4,
    views: 2278,
    tags: ["CSS3"],
    icon: "https://img.mukewang.com/59e96ebe0001a9ad02400240.jpg",
    isResolve: false
  },
  {
    title: "把sum放到前面初始化 ，运行是合计为空，是不是js按循序运行的？？求解",
    answers: 7,
    views: 6805,
    tags: ["Vue.js", "前端工具"],
    icon: "https://img.mukewang.com/59e96deb0001f9d302400240.jpg",
    isResolve: false
  },
  {
    title: "Chrome59到底支不支持forEach函数？",
    answers: 23,
    views: 11519,
    tags: ["JavaScript"],
    icon: "https://img.mukewang.com/59e96f340001faac02400240.jpg",
    isResolve: true
  },
  {
    title: "慕课网适合非计算机专业的人学习吗",
    answers: 56,
    views: 15635,
    tags: ["HTML/CSS", "JavaScript"],
    icon: "https://img.mukewang.com/59e96ff90001ab0402400240.jpg",
    isResolve: true
  },
  {
    title: "我是网页设计从业者，怎么入门前端",
    answers: 57,
    views: 11053,
    tags: ["HTML/CSS", "JavaScript"],
    icon: "https://img.mukewang.com/59e96ff90001ab0402400240.jpg",
    isResolve: true
  },
  {
    title: "大三暑假没有实习，这段时间应该怎么安排来提高前端水平？",
    answers: 29,
    views: 5971,
    tags: ["Vue.js"],
    icon: "https://img.mukewang.com/59e96deb0001f9d302400240.jpg",
    isResolve: true
  },
  {
    title: "貌似整个函数都没有调用？",
    answers: 15,
    views: 3972,
    tags: ["JavaScript"],
    icon: "https://img.mukewang.com/59e96f340001faac02400240.jpg",
    isResolve: true
  },
  {
    title: "怎么用html 或CSS写出下列的表单样子",
    answers: 20,
    views: 6987,
    tags: ["CSS3", "HTML/CSS", "React.js"],
    icon: "https://img.mukewang.com/59e96ebe0001a9ad02400240.jpg",
    isResolve: false
  },
  {
    title: "/* margin:0;padding:0（消除文本与div边框之间的间隙）*/",
    answers: 4,
    views: 2278,
    tags: ["CSS3"],
    icon: "https://img.mukewang.com/59e96ebe0001a9ad02400240.jpg",
    isResolve: false
  },
  {
    title: "关于VUE路由单页面使用JQUERY第三方插件的问题？跳转过去插件部分就不起作用了",
    answers: 7,
    views: 6805,
    tags: ["Vue.js", "前端工具"],
    icon: "https://img.mukewang.com/59e96deb0001f9d302400240.jpg",
    isResolve: false
  },
  {
    title: "HTML 打印机",
    answers: 20,
    views: 6987,
    tags: ["CSS3", "HTML/CSS", "React.js"],
    icon: "https://img.mukewang.com/59e96ebe0001a9ad02400240.jpg",
    isResolve: false
  },
  {
    title: "【花式填坑第9期】解密高级前端攻城狮の极速进化",
    answers: 4,
    views: 2278,
    tags: ["CSS3"],
    icon: "https://img.mukewang.com/59e96ebe0001a9ad02400240.jpg",
    isResolve: false
  },
  {
    title: "transform-style:preserve-3d",
    answers: 7,
    views: 6805,
    tags: ["Vue.js", "前端工具"],
    icon: "https://img.mukewang.com/59e96deb0001f9d302400240.jpg",
    isResolve: false
  },
  {
    title: "大佬们 请问在HTML中<input/>标签和<input></input>有什么区别？",
    answers: 20,
    views: 6987,
    tags: ["CSS3", "HTML/CSS", "React.js"],
    icon: "https://img.mukewang.com/59e96ebe0001a9ad02400240.jpg",
    isResolve: false
  },
  {
    title: "盒子1下边界30px 盒子2的上边界50px  那盒子1的下边界还会30px吗",
    answers: 4,
    views: 2278,
    tags: ["CSS3"],
    icon: "https://img.mukewang.com/59e96ebe0001a9ad02400240.jpg",
    isResolve: false
  },
  {
    title: "把sum放到前面初始化 ，运行是合计为空，是不是js按循序运行的？？求解",
    answers: 7,
    views: 6805,
    tags: ["Vue.js", "前端工具"],
    icon: "https://img.mukewang.com/59e96deb0001f9d302400240.jpg",
    isResolve: false
  }
]
    """
    txt = demjson.decode(txt)
    for index, one in enumerate(txt):
        tags = one["tags"]
        del one["tags"]
        question = Question(**one)
        question.save()
        question.tags.set(Label.objects.filter(title__in=tags))
        question.save()


def import_read_type():
    types = ['前端开发', '后端开发', '数据库', '面试', '其它']
    for one in types:
        rt = ReadType(value=one, sort=0)
        rt.save()


def import_read():
    txt = """[
  {
    type: "前端开发",
    title: "从0到1 实战朋友圈移动Web App开发",
    img: "https://img3.mukewang.com/5d5bd52600016bbc02940333.jpg",
    detailImg: 'https://img3.sycdn.imooc.com/5d3138f000015f4c05400720.jpg',
    desc: "全栈开发进阶系列课",
    author: {
      avatar: "https://img1.mukewang.com/5a6f01bc0001a6f405680495-100-100.jpg",
      name: "吕小鸣",
      job: "高级web前端工程师"
    },
    price: "48",
    persons: "472",
    term: "36",
    isRecommend: true,
    chapter: [
      {
        title: "第1章 优化的概念",
        data: [
          {
            title: "01 导读：移动 web 的趋势",
            isTry: true,
            time: "2019-07"
          },
          {
            title: "02 项目技术栈介绍",
            isTry: true,
            time: "2019-07"
          },
          {
            title: "03 开发环境准备",
            isTry: true,
            time: "2019-07"
          },
          {
            title: "04 使用 PWA 改造真正的 webApp",
            isTry: true,
            time: "2019-07"
          }
        ]
      },
      {
        title: "第2章 性能工具介绍",
        data: [
          {
            title: "5 性能优化百宝箱（上）",
            isTry: false,
            time: "2019-07"
          },
          {
            title: "6 性能优化百宝箱（下）",
            isTry: false,
            time: "2019-07"
          }
        ]
      },
      {
        title: "第3章 网络部分",
        data: [
          {
            title: "7 聊聊 DNS Prefetch",
            isTry: false,
            time: "2019-07"
          },
          {
            title: "8 Webpack 性能优化两三事",
            isTry: false,
            time: "2019-07"
          },
          {
            title: "9 图片加载优化（上）",
            isTry: false,
            time: "2019-07"
          },
          {
            title: "10 图片加载优化（下）",
            isTry: false,
            time: "2019-07"
          }
        ]
      },
      {
        title: "第4章 缓存部分",
        data: [
          {
            title: "11 十八般缓存",
            isTry: false,
            time: "2019-07"
          },
          {
            title: "12 CDN 缓存",
            isTry: false,
            time: "2019-07"
          },
          {
            title: "13 本地缓存（Web Storage）",
            isTry: false,
            time: "2019-07"
          },
          {
            title: "14 浏览器缓存（上）",
            isTry: false,
            time: "2019-07"
          }
        ]
      }
    ]
  },
  {
    type: "前端开发",
    title: "你不知道的前端性能优化技巧",
    img: "https://img2.mukewang.com/5d5bd510000104f102940333.jpg",
    detailImg: 'https://img4.sycdn.imooc.com/5d283a2c0001b89205400720.jpg',
    desc: "前端进阶必修系列课",
    author: {
      avatar: "https://img3.mukewang.com/54584dad0001dd7802200220-100-100.jpg",
      name: "BinaryCoding",
      job: "前端性能优化极客"
    },
    price: "48",
    persons: "508",
    term: "27",
    isRecommend: true,
    chapter: [
      {
        title: "第1章 优化的概念",
        data: [
          {
            title: "1 你的前端性能还能再抢救一下",
            isTry: true,
            time: "2019-07"
          },
          {
            title: "2 解读雅虎35条军规（上）",
            isTry: true,
            time: "2019-07"
          },
          {
            title: "3 解读雅虎35条军规（下）",
            isTry: true,
            time: "2019-07"
          },
          {
            title: "4 你要不要看这些优化指标？",
            isTry: false,
            time: "2019-07"
          }
        ]
      },
      {
        title: "第2章 性能工具介绍",
        data: [
          {
            title: "5 性能优化百宝箱（上）",
            isTry: false,
            time: "2019-07"
          },
          {
            title: "6 性能优化百宝箱（下）",
            isTry: false,
            time: "2019-07"
          }
        ]
      },
      {
        title: "第3章 网络部分",
        data: [
          {
            title: "7 聊聊 DNS Prefetch",
            isTry: false,
            time: "2019-07"
          },
          {
            title: "8 Webpack 性能优化两三事",
            isTry: false,
            time: "2019-07"
          },
          {
            title: "9 图片加载优化（上）",
            isTry: false,
            time: "2019-07"
          },
          {
            title: "10 图片加载优化（下）",
            isTry: false,
            time: "2019-07"
          }
        ]
      },
      {
        title: "第4章 缓存部分",
        data: [
          {
            title: "11 十八般缓存",
            isTry: false,
            time: "2019-07"
          },
          {
            title: "12 CDN 缓存",
            isTry: false,
            time: "2019-07"
          },
          {
            title: "13 本地缓存（Web Storage）",
            isTry: false,
            time: "2019-07"
          },
          {
            title: "14 浏览器缓存（上）",
            isTry: false,
            time: "2019-07"
          }
        ]
      }
    ]
  },
  {
    type: "前端开发",
    title: "零基础实现微信电商小程序开发",
    img: "https://img.mukewang.com/5d5bd4fe0001e01602940333.jpg",
    detailImg: 'https://img1.sycdn.imooc.com/5d22a6be0001d12805400720.jpg',
    desc: "小程序开发一线战地笔记",
    author: {
      avatar: "https://img1.mukewang.com/5d23fb440001901e11111081-100-100.jpg",
      name: "刘捷Jay",
      job: "首批微信开发从业者"
    },
    price: "68",
    persons: "491",
    term: "50",
    isRecommend: true,
    chapter: [
      {
        title: "第1章 优化的概念",
        data: [
          {
            title: "01 为什么你觉得学编程好难？",
            isTry: true,
            time: "2019-07"
          },
          {
            title: "02 分类拆解法简介： 助你马上起飞的编程方法论",
            isTry: true,
            time: "2019-07"
          },
          {
            title: "03 专栏使用指南：他们都说一开始就要敲重点",
            isTry: true,
            time: "2019-07"
          },
          {
            title: "04 解剖分类拆解法详解",
            isTry: true,
            time: "2019-07"
          }
        ]
      },
      {
        title: "第2章 性能工具介绍",
        data: [
          {
            title: "5 性能优化百宝箱（上）",
            isTry: false,
            time: "2019-07"
          },
          {
            title: "6 性能优化百宝箱（下）",
            isTry: false,
            time: "2019-07"
          }
        ]
      },
      {
        title: "第3章 网络部分",
        data: [
          {
            title: "7 聊聊 DNS Prefetch",
            isTry: false,
            time: "2019-07"
          },
          {
            title: "8 Webpack 性能优化两三事",
            isTry: false,
            time: "2019-07"
          },
          {
            title: "9 图片加载优化（上）",
            isTry: false,
            time: "2019-07"
          },
          {
            title: "10 图片加载优化（下）",
            isTry: false,
            time: "2019-07"
          }
        ]
      },
      {
        title: "第4章 缓存部分",
        data: [
          {
            title: "11 十八般缓存",
            isTry: false,
            time: "2019-07"
          },
          {
            title: "12 CDN 缓存",
            isTry: false,
            time: "2019-07"
          },
          {
            title: "13 本地缓存（Web Storage）",
            isTry: false,
            time: "2019-07"
          },
          {
            title: "14 浏览器缓存（上）",
            isTry: false,
            time: "2019-07"
          }
        ]
      }
    ]
  },
  {
    type: "后端开发",
    title: "Python入门指南",
    img: "https://img2.mukewang.com/5d5bd56b00012afd02940333.jpg",
    detailImg: "https://img3.sycdn.imooc.com/5d5510fa00011fa605400720.jpg",
    desc: "无门槛快速学Python",
    author: {
      avatar: "https://img3.mukewang.com/5d5496f200014b7e11001100-100-100.jpg",
      name: "黄浮云",
      job: "资深云计算工程师"
    },
    price: "46",
    persons: "86",
    term: "33",
    chapter: [
      {
        title: "第1章 优化的概念",
        data: [
          {
            title: "01 你为什么要学 Python ？",
            isTry: true,
            time: "2019-07"
          },
          {
            title: "02 我会怎样带你学 Python？",
            isTry: true,
            time: "2019-07"
          },
          {
            title: "03 让 Python 在你的电脑上安家落户",
            isTry: true,
            time: "2019-07"
          }
        ]
      },
      {
        title: "第2章 性能工具介绍",
        data: [
          {
            title: "5 性能优化百宝箱（上）",
            isTry: false,
            time: "2019-07"
          },
          {
            title: "6 性能优化百宝箱（下）",
            isTry: false,
            time: "2019-07"
          }
        ]
      },
      {
        title: "第3章 网络部分",
        data: [
          {
            title: "7 聊聊 DNS Prefetch",
            isTry: false,
            time: "2019-07"
          },
          {
            title: "8 Webpack 性能优化两三事",
            isTry: false,
            time: "2019-07"
          },
          {
            title: "9 图片加载优化（上）",
            isTry: false,
            time: "2019-07"
          },
          {
            title: "10 图片加载优化（下）",
            isTry: false,
            time: "2019-07"
          }
        ]
      },
      {
        title: "第4章 缓存部分",
        data: [
          {
            title: "11 十八般缓存",
            isTry: false,
            time: "2019-07"
          },
          {
            title: "12 CDN 缓存",
            isTry: false,
            time: "2019-07"
          },
          {
            title: "13 本地缓存（Web Storage）",
            isTry: false,
            time: "2019-07"
          },
          {
            title: "14 浏览器缓存（上）",
            isTry: false,
            time: "2019-07"
          }
        ]
      }
    ]
  },
  {
    type: "后端开发",
    title: "Spring Cloud微服务开发实践",
    img: "https://img.mukewang.com/5d5bd44a0001fa2902940333.jpg",
    detailImg: "https://img2.sycdn.imooc.com/5d12d7e500013ada03600480.jpg",
    desc: "Java工程师晋升必学",
    author: {
      avatar: "https://img4.mukewang.com/533e4d7c0001828702000200-100-100.jpg",
      name: "江南一点雨",
      job: "资深Java工程师"
    },
    price: "88",
    persons: "299",
    term: "39",
    isRecommend: true,
    chapter: [
      {
        title: "第1章 优化的概念",
        data: [
          {
            title: "01 Spring Cloud专栏介绍",
            isTry: true,
            time: "2019-07"
          },
          {
            title: "02 为什么要使用微服务架构？",
            isTry: true,
            time: "2019-07"
          },
          {
            title: "03 Spring Cloud 介绍以及发展前景",
            isTry: true,
            time: "2019-07"
          },
          {
            title: "04 Spring Boot 的设计理念和简单实践",
            isTry: true,
            time: "2019-07"
          }
        ]
      },
      {
        title: "第2章 性能工具介绍",
        data: [
          {
            title: "5 性能优化百宝箱（上）",
            isTry: false,
            time: "2019-07"
          },
          {
            title: "6 性能优化百宝箱（下）",
            isTry: false,
            time: "2019-07"
          }
        ]
      },
      {
        title: "第3章 网络部分",
        data: [
          {
            title: "7 聊聊 DNS Prefetch",
            isTry: false,
            time: "2019-07"
          },
          {
            title: "8 Webpack 性能优化两三事",
            isTry: false,
            time: "2019-07"
          },
          {
            title: "9 图片加载优化（上）",
            isTry: false,
            time: "2019-07"
          },
          {
            title: "10 图片加载优化（下）",
            isTry: false,
            time: "2019-07"
          }
        ]
      },
      {
        title: "第4章 缓存部分",
        data: [
          {
            title: "11 十八般缓存",
            isTry: false,
            time: "2019-07"
          },
          {
            title: "12 CDN 缓存",
            isTry: false,
            time: "2019-07"
          },
          {
            title: "13 本地缓存（Web Storage）",
            isTry: false,
            time: "2019-07"
          },
          {
            title: "14 浏览器缓存（上）",
            isTry: false,
            time: "2019-07"
          }
        ]
      }
    ]
  },
  {
    type: "数据库",
    title: "一线数据库工程师带你深入理解 MySQL",
    img: "https://img.mukewang.com/5d5bd53d00019b5302940333.jpg",
    detailImg: "https://img2.sycdn.imooc.com/5d3ac78f0001b10a05400720.jpg",
    desc: "你的数据库优化管理第一课",
    author: {
      avatar: "https://img2.mukewang.com/5d30228f00016ccc19201080-100-100.jpg",
      name: "马听老师",
      job: "一线数据库工程师"
    },
    price: "35",
    persons: "621",
    term: "32",
    isRecommend: true,
    chapter: [
      {
        title: "第1章 优化的概念",
        data: [
          {
            title: "01 开篇词",
            isTry: true,
            time: "2019-07"
          },
          {
            title: "02 快速学会分析SQL执行效率（上）",
            isTry: true,
            time: "2019-07"
          },
          {
            title: "02 快速学会分析SQL执行效率（下）",
            isTry: true,
            time: "2019-07"
          }
        ]
      },
      {
        title: "第2章 性能工具介绍",
        data: [
          {
            title: "5 性能优化百宝箱（上）",
            isTry: false,
            time: "2019-07"
          },
          {
            title: "6 性能优化百宝箱（下）",
            isTry: false,
            time: "2019-07"
          }
        ]
      },
      {
        title: "第3章 网络部分",
        data: [
          {
            title: "7 聊聊 DNS Prefetch",
            isTry: false,
            time: "2019-07"
          },
          {
            title: "8 Webpack 性能优化两三事",
            isTry: false,
            time: "2019-07"
          },
          {
            title: "9 图片加载优化（上）",
            isTry: false,
            time: "2019-07"
          },
          {
            title: "10 图片加载优化（下）",
            isTry: false,
            time: "2019-07"
          }
        ]
      },
      {
        title: "第4章 缓存部分",
        data: [
          {
            title: "11 十八般缓存",
            isTry: false,
            time: "2019-07"
          },
          {
            title: "12 CDN 缓存",
            isTry: false,
            time: "2019-07"
          },
          {
            title: "13 本地缓存（Web Storage）",
            isTry: false,
            time: "2019-07"
          },
          {
            title: "14 浏览器缓存（上）",
            isTry: false,
            time: "2019-07"
          }
        ]
      }
    ]
  },
  {
    type: "面试",
    title: "面试高频算法习题精讲",
    img: "https://img4.mukewang.com/5d5bd54f0001e41902940333.jpg",
    detailImg: "https://img2.sycdn.imooc.com/5d424c5800015b5c05400720.jpg",
    desc: "一网打尽面试官最喜欢的算法习题",
    author: {
      avatar: "https://img4.mukewang.com/5d4146160001d2b803500350-100-100.jpg",
      name: "Lisanaaa",
      job: "GitHub 开源算法项目万星作者"
    },
    price: "49",
    persons: "350",
    term: "44",
    chapter: [
      {
        title: "第1章 优化的概念",
        data: [
          {
            title: "01 开篇：这个专栏能给你带来什么？",
            isTry: true,
            time: "2019-07"
          },
          {
            title: "02 online judge 的原理",
            isTry: true,
            time: "2019-07"
          },
          {
            title: "03 时间复杂度与空间复杂度分析",
            isTry: true,
            time: "2019-07"
          }
        ]
      },
      {
        title: "第2章 性能工具介绍",
        data: [
          {
            title: "5 性能优化百宝箱（上）",
            isTry: false,
            time: "2019-07"
          },
          {
            title: "6 性能优化百宝箱（下）",
            isTry: false,
            time: "2019-07"
          }
        ]
      },
      {
        title: "第3章 网络部分",
        data: [
          {
            title: "7 聊聊 DNS Prefetch",
            isTry: false,
            time: "2019-07"
          },
          {
            title: "8 Webpack 性能优化两三事",
            isTry: false,
            time: "2019-07"
          },
          {
            title: "9 图片加载优化（上）",
            isTry: false,
            time: "2019-07"
          },
          {
            title: "10 图片加载优化（下）",
            isTry: false,
            time: "2019-07"
          }
        ]
      },
      {
        title: "第4章 缓存部分",
        data: [
          {
            title: "11 十八般缓存",
            isTry: false,
            time: "2019-07"
          },
          {
            title: "12 CDN 缓存",
            isTry: false,
            time: "2019-07"
          },
          {
            title: "13 本地缓存（Web Storage）",
            isTry: false,
            time: "2019-07"
          },
          {
            title: "14 浏览器缓存（上）",
            isTry: false,
            time: "2019-07"
          }
        ]
      }
    ]
  },
  {
    type: "其它",
    title: "用技术人的眼光看世界 • 程序员技术指北",
    img: "https://img3.mukewang.com/5d5bd3f9000130dd02940333.jpg",
    detailImg: 'https://img2.sycdn.imooc.com/5cd10384000145f305400720.jpg',
    desc: "bobo老师出品必是精品",
    author: {
      avatar: "https://img1.mukewang.com/5347593e00010cfb01400140-100-100.jpg",
      name: "liuyubobobo",
      job: "算法大神"
    },
    price: "99",
    persons: "824",
    term: "62",
    chapter: [
      {
        title: "第1章 优化的概念",
        data: [
          {
            title: "01 开篇词",
            isTry: true,
            time: "2019-07"
          },
          {
            title: "02 编程语言的发展趋势：从没有分号，到DSL",
            isTry: true,
            time: "2019-07"
          },
          {
            title: "03 科技，死亡，和永生",
            isTry: true,
            time: "2019-07"
          },
          {
            title: "04 新西兰恐袭，疯狂删帖的小编，背锅的算法工程师",
            isTry: true,
            time: "2019-07"
          }
        ]
      },
      {
        title: "第2章 性能工具介绍",
        data: [
          {
            title: "5 性能优化百宝箱（上）",
            isTry: false,
            time: "2019-07"
          },
          {
            title: "6 性能优化百宝箱（下）",
            isTry: false,
            time: "2019-07"
          }
        ]
      },
      {
        title: "第3章 网络部分",
        data: [
          {
            title: "7 聊聊 DNS Prefetch",
            isTry: false,
            time: "2019-07"
          },
          {
            title: "8 Webpack 性能优化两三事",
            isTry: false,
            time: "2019-07"
          },
          {
            title: "9 图片加载优化（上）",
            isTry: false,
            time: "2019-07"
          },
          {
            title: "10 图片加载优化（下）",
            isTry: false,
            time: "2019-07"
          }
        ]
      },
      {
        title: "第4章 缓存部分",
        data: [
          {
            title: "11 十八般缓存",
            isTry: false,
            time: "2019-07"
          },
          {
            title: "12 CDN 缓存",
            isTry: false,
            time: "2019-07"
          },
          {
            title: "13 本地缓存（Web Storage）",
            isTry: false,
            time: "2019-07"
          },
          {
            title: "14 浏览器缓存（上）",
            isTry: false,
            time: "2019-07"
          }
        ]
      }
    ]
  },
  {
    type: "前端开发",
    title: "从0到1 实战朋友圈移动Web App开发",
    img: "https://img3.mukewang.com/5d5bd52600016bbc02940333.jpg",
    detailImg: 'https://img3.sycdn.imooc.com/5d3138f000015f4c05400720.jpg',
    desc: "全栈开发进阶系列课",
    author: {
      avatar: "https://img1.mukewang.com/5a6f01bc0001a6f405680495-100-100.jpg",
      name: "吕小鸣",
      job: "高级web前端工程师"
    },
    price: "48",
    persons: "472",
    term: "36",
    chapter: [
      {
        title: "第1章 优化的概念",
        data: [
          {
            title: "01 导读：移动 web 的趋势",
            isTry: true,
            time: "2019-07"
          },
          {
            title: "02 项目技术栈介绍",
            isTry: true,
            time: "2019-07"
          },
          {
            title: "03 开发环境准备",
            isTry: true,
            time: "2019-07"
          },
          {
            title: "04 使用 PWA 改造真正的 webApp",
            isTry: true,
            time: "2019-07"
          }
        ]
      },
      {
        title: "第2章 性能工具介绍",
        data: [
          {
            title: "5 性能优化百宝箱（上）",
            isTry: false,
            time: "2019-07"
          },
          {
            title: "6 性能优化百宝箱（下）",
            isTry: false,
            time: "2019-07"
          }
        ]
      },
      {
        title: "第3章 网络部分",
        data: [
          {
            title: "7 聊聊 DNS Prefetch",
            isTry: false,
            time: "2019-07"
          },
          {
            title: "8 Webpack 性能优化两三事",
            isTry: false,
            time: "2019-07"
          },
          {
            title: "9 图片加载优化（上）",
            isTry: false,
            time: "2019-07"
          },
          {
            title: "10 图片加载优化（下）",
            isTry: false,
            time: "2019-07"
          }
        ]
      },
      {
        title: "第4章 缓存部分",
        data: [
          {
            title: "11 十八般缓存",
            isTry: false,
            time: "2019-07"
          },
          {
            title: "12 CDN 缓存",
            isTry: false,
            time: "2019-07"
          },
          {
            title: "13 本地缓存（Web Storage）",
            isTry: false,
            time: "2019-07"
          },
          {
            title: "14 浏览器缓存（上）",
            isTry: false,
            time: "2019-07"
          }
        ]
      }
    ]
  },
  {
    type: "前端开发",
    title: "你不知道的前端性能优化技巧",
    img: "https://img2.mukewang.com/5d5bd510000104f102940333.jpg",
    detailImg: 'https://img4.sycdn.imooc.com/5d283a2c0001b89205400720.jpg',
    desc: "前端进阶必修系列课",
    author: {
      avatar: "https://img3.mukewang.com/54584dad0001dd7802200220-100-100.jpg",
      name: "BinaryCoding",
      job: "前端性能优化极客"
    },
    price: "48",
    persons: "508",
    term: "27",
    chapter: [
      {
        title: "第1章 优化的概念",
        data: [
          {
            title: "1 你的前端性能还能再抢救一下",
            isTry: true,
            time: "2019-07"
          },
          {
            title: "2 解读雅虎35条军规（上）",
            isTry: true,
            time: "2019-07"
          },
          {
            title: "3 解读雅虎35条军规（下）",
            isTry: true,
            time: "2019-07"
          },
          {
            title: "4 你要不要看这些优化指标？",
            isTry: false,
            time: "2019-07"
          }
        ]
      },
      {
        title: "第2章 性能工具介绍",
        data: [
          {
            title: "5 性能优化百宝箱（上）",
            isTry: false,
            time: "2019-07"
          },
          {
            title: "6 性能优化百宝箱（下）",
            isTry: false,
            time: "2019-07"
          }
        ]
      },
      {
        title: "第3章 网络部分",
        data: [
          {
            title: "7 聊聊 DNS Prefetch",
            isTry: false,
            time: "2019-07"
          },
          {
            title: "8 Webpack 性能优化两三事",
            isTry: false,
            time: "2019-07"
          },
          {
            title: "9 图片加载优化（上）",
            isTry: false,
            time: "2019-07"
          },
          {
            title: "10 图片加载优化（下）",
            isTry: false,
            time: "2019-07"
          }
        ]
      },
      {
        title: "第4章 缓存部分",
        data: [
          {
            title: "11 十八般缓存",
            isTry: false,
            time: "2019-07"
          },
          {
            title: "12 CDN 缓存",
            isTry: false,
            time: "2019-07"
          },
          {
            title: "13 本地缓存（Web Storage）",
            isTry: false,
            time: "2019-07"
          },
          {
            title: "14 浏览器缓存（上）",
            isTry: false,
            time: "2019-07"
          }
        ]
      }
    ]
  },
  {
    type: "前端开发",
    title: "零基础实现微信电商小程序开发",
    img: "https://img.mukewang.com/5d5bd4fe0001e01602940333.jpg",
    detailImg: 'https://img1.sycdn.imooc.com/5d22a6be0001d12805400720.jpg',
    desc: "小程序开发一线战地笔记",
    author: {
      avatar: "https://img1.mukewang.com/5d23fb440001901e11111081-100-100.jpg",
      name: "刘捷Jay",
      job: "首批微信开发从业者"
    },
    price: "68",
    persons: "491",
    term: "50",
    chapter: [
      {
        title: "第1章 优化的概念",
        data: [
          {
            title: "01 为什么你觉得学编程好难？",
            isTry: true,
            time: "2019-07"
          },
          {
            title: "02 分类拆解法简介： 助你马上起飞的编程方法论",
            isTry: true,
            time: "2019-07"
          },
          {
            title: "03 专栏使用指南：他们都说一开始就要敲重点",
            isTry: true,
            time: "2019-07"
          },
          {
            title: "04 解剖分类拆解法详解",
            isTry: true,
            time: "2019-07"
          }
        ]
      },
      {
        title: "第2章 性能工具介绍",
        data: [
          {
            title: "5 性能优化百宝箱（上）",
            isTry: false,
            time: "2019-07"
          },
          {
            title: "6 性能优化百宝箱（下）",
            isTry: false,
            time: "2019-07"
          }
        ]
      },
      {
        title: "第3章 网络部分",
        data: [
          {
            title: "7 聊聊 DNS Prefetch",
            isTry: false,
            time: "2019-07"
          },
          {
            title: "8 Webpack 性能优化两三事",
            isTry: false,
            time: "2019-07"
          },
          {
            title: "9 图片加载优化（上）",
            isTry: false,
            time: "2019-07"
          },
          {
            title: "10 图片加载优化（下）",
            isTry: false,
            time: "2019-07"
          }
        ]
      },
      {
        title: "第4章 缓存部分",
        data: [
          {
            title: "11 十八般缓存",
            isTry: false,
            time: "2019-07"
          },
          {
            title: "12 CDN 缓存",
            isTry: false,
            time: "2019-07"
          },
          {
            title: "13 本地缓存（Web Storage）",
            isTry: false,
            time: "2019-07"
          },
          {
            title: "14 浏览器缓存（上）",
            isTry: false,
            time: "2019-07"
          }
        ]
      }
    ]
  },
  {
    type: "后端开发",
    title: "Python入门指南",
    img: "https://img2.mukewang.com/5d5bd56b00012afd02940333.jpg",
    detailImg: "https://img3.sycdn.imooc.com/5d5510fa00011fa605400720.jpg",
    desc: "无门槛快速学Python",
    author: {
      avatar: "https://img3.mukewang.com/5d5496f200014b7e11001100-100-100.jpg",
      name: "黄浮云",
      job: "资深云计算工程师"
    },
    price: "46",
    persons: "86",
    term: "33",
    chapter: [
      {
        title: "第1章 优化的概念",
        data: [
          {
            title: "01 你为什么要学 Python ？",
            isTry: true,
            time: "2019-07"
          },
          {
            title: "02 我会怎样带你学 Python？",
            isTry: true,
            time: "2019-07"
          },
          {
            title: "03 让 Python 在你的电脑上安家落户",
            isTry: true,
            time: "2019-07"
          }
        ]
      },
      {
        title: "第2章 性能工具介绍",
        data: [
          {
            title: "5 性能优化百宝箱（上）",
            isTry: false,
            time: "2019-07"
          },
          {
            title: "6 性能优化百宝箱（下）",
            isTry: false,
            time: "2019-07"
          }
        ]
      },
      {
        title: "第3章 网络部分",
        data: [
          {
            title: "7 聊聊 DNS Prefetch",
            isTry: false,
            time: "2019-07"
          },
          {
            title: "8 Webpack 性能优化两三事",
            isTry: false,
            time: "2019-07"
          },
          {
            title: "9 图片加载优化（上）",
            isTry: false,
            time: "2019-07"
          },
          {
            title: "10 图片加载优化（下）",
            isTry: false,
            time: "2019-07"
          }
        ]
      },
      {
        title: "第4章 缓存部分",
        data: [
          {
            title: "11 十八般缓存",
            isTry: false,
            time: "2019-07"
          },
          {
            title: "12 CDN 缓存",
            isTry: false,
            time: "2019-07"
          },
          {
            title: "13 本地缓存（Web Storage）",
            isTry: false,
            time: "2019-07"
          },
          {
            title: "14 浏览器缓存（上）",
            isTry: false,
            time: "2019-07"
          }
        ]
      }
    ]
  },
  {
    type: "后端开发",
    title: "Spring Cloud微服务开发实践",
    img: "https://img.mukewang.com/5d5bd44a0001fa2902940333.jpg",
    detailImg: "https://img2.sycdn.imooc.com/5d12d7e500013ada03600480.jpg",
    desc: "Java工程师晋升必学",
    author: {
      avatar: "https://img4.mukewang.com/533e4d7c0001828702000200-100-100.jpg",
      name: "江南一点雨",
      job: "资深Java工程师"
    },
    price: "88",
    persons: "299",
    term: "39",
    chapter: [
      {
        title: "第1章 优化的概念",
        data: [
          {
            title: "01 Spring Cloud专栏介绍",
            isTry: true,
            time: "2019-07"
          },
          {
            title: "02 为什么要使用微服务架构？",
            isTry: true,
            time: "2019-07"
          },
          {
            title: "03 Spring Cloud 介绍以及发展前景",
            isTry: true,
            time: "2019-07"
          },
          {
            title: "04 Spring Boot 的设计理念和简单实践",
            isTry: true,
            time: "2019-07"
          }
        ]
      },
      {
        title: "第2章 性能工具介绍",
        data: [
          {
            title: "5 性能优化百宝箱（上）",
            isTry: false,
            time: "2019-07"
          },
          {
            title: "6 性能优化百宝箱（下）",
            isTry: false,
            time: "2019-07"
          }
        ]
      },
      {
        title: "第3章 网络部分",
        data: [
          {
            title: "7 聊聊 DNS Prefetch",
            isTry: false,
            time: "2019-07"
          },
          {
            title: "8 Webpack 性能优化两三事",
            isTry: false,
            time: "2019-07"
          },
          {
            title: "9 图片加载优化（上）",
            isTry: false,
            time: "2019-07"
          },
          {
            title: "10 图片加载优化（下）",
            isTry: false,
            time: "2019-07"
          }
        ]
      },
      {
        title: "第4章 缓存部分",
        data: [
          {
            title: "11 十八般缓存",
            isTry: false,
            time: "2019-07"
          },
          {
            title: "12 CDN 缓存",
            isTry: false,
            time: "2019-07"
          },
          {
            title: "13 本地缓存（Web Storage）",
            isTry: false,
            time: "2019-07"
          },
          {
            title: "14 浏览器缓存（上）",
            isTry: false,
            time: "2019-07"
          }
        ]
      }
    ]
  },
  {
    type: "数据库",
    title: "一线数据库工程师带你深入理解 MySQL",
    img: "https://img.mukewang.com/5d5bd53d00019b5302940333.jpg",
    detailImg: "https://img2.sycdn.imooc.com/5d3ac78f0001b10a05400720.jpg",
    desc: "你的数据库优化管理第一课",
    author: {
      avatar: "https://img2.mukewang.com/5d30228f00016ccc19201080-100-100.jpg",
      name: "马听老师",
      job: "一线数据库工程师"
    },
    price: "35",
    persons: "621",
    term: "32",
    chapter: [
      {
        title: "第1章 优化的概念",
        data: [
          {
            title: "01 开篇词",
            isTry: true,
            time: "2019-07"
          },
          {
            title: "02 快速学会分析SQL执行效率（上）",
            isTry: true,
            time: "2019-07"
          },
          {
            title: "02 快速学会分析SQL执行效率（下）",
            isTry: true,
            time: "2019-07"
          }
        ]
      },
      {
        title: "第2章 性能工具介绍",
        data: [
          {
            title: "5 性能优化百宝箱（上）",
            isTry: false,
            time: "2019-07"
          },
          {
            title: "6 性能优化百宝箱（下）",
            isTry: false,
            time: "2019-07"
          }
        ]
      },
      {
        title: "第3章 网络部分",
        data: [
          {
            title: "7 聊聊 DNS Prefetch",
            isTry: false,
            time: "2019-07"
          },
          {
            title: "8 Webpack 性能优化两三事",
            isTry: false,
            time: "2019-07"
          },
          {
            title: "9 图片加载优化（上）",
            isTry: false,
            time: "2019-07"
          },
          {
            title: "10 图片加载优化（下）",
            isTry: false,
            time: "2019-07"
          }
        ]
      },
      {
        title: "第4章 缓存部分",
        data: [
          {
            title: "11 十八般缓存",
            isTry: false,
            time: "2019-07"
          },
          {
            title: "12 CDN 缓存",
            isTry: false,
            time: "2019-07"
          },
          {
            title: "13 本地缓存（Web Storage）",
            isTry: false,
            time: "2019-07"
          },
          {
            title: "14 浏览器缓存（上）",
            isTry: false,
            time: "2019-07"
          }
        ]
      }
    ]
  },
  {
    type: "面试",
    title: "面试高频算法习题精讲",
    img: "https://img4.mukewang.com/5d5bd54f0001e41902940333.jpg",
    detailImg: "https://img2.sycdn.imooc.com/5d424c5800015b5c05400720.jpg",
    desc: "一网打尽面试官最喜欢的算法习题",
    author: {
      avatar: "https://img4.mukewang.com/5d4146160001d2b803500350-100-100.jpg",
      name: "Lisanaaa",
      job: "GitHub 开源算法项目万星作者"
    },
    price: "49",
    persons: "350",
    term: "44",
    chapter: [
      {
        title: "第1章 优化的概念",
        data: [
          {
            title: "01 开篇：这个专栏能给你带来什么？",
            isTry: true,
            time: "2019-07"
          },
          {
            title: "02 online judge 的原理",
            isTry: true,
            time: "2019-07"
          },
          {
            title: "03 时间复杂度与空间复杂度分析",
            isTry: true,
            time: "2019-07"
          }
        ]
      },
      {
        title: "第2章 性能工具介绍",
        data: [
          {
            title: "5 性能优化百宝箱（上）",
            isTry: false,
            time: "2019-07"
          },
          {
            title: "6 性能优化百宝箱（下）",
            isTry: false,
            time: "2019-07"
          }
        ]
      },
      {
        title: "第3章 网络部分",
        data: [
          {
            title: "7 聊聊 DNS Prefetch",
            isTry: false,
            time: "2019-07"
          },
          {
            title: "8 Webpack 性能优化两三事",
            isTry: false,
            time: "2019-07"
          },
          {
            title: "9 图片加载优化（上）",
            isTry: false,
            time: "2019-07"
          },
          {
            title: "10 图片加载优化（下）",
            isTry: false,
            time: "2019-07"
          }
        ]
      },
      {
        title: "第4章 缓存部分",
        data: [
          {
            title: "11 十八般缓存",
            isTry: false,
            time: "2019-07"
          },
          {
            title: "12 CDN 缓存",
            isTry: false,
            time: "2019-07"
          },
          {
            title: "13 本地缓存（Web Storage）",
            isTry: false,
            time: "2019-07"
          },
          {
            title: "14 浏览器缓存（上）",
            isTry: false,
            time: "2019-07"
          }
        ]
      }
    ]
  },
  {
    type: "其它",
    title: "用技术人的眼光看世界 • 程序员技术指北",
    img: "https://img3.mukewang.com/5d5bd3f9000130dd02940333.jpg",
    desc: "bobo老师出品必是精品",
    author: {
      avatar: "https://img1.mukewang.com/5347593e00010cfb01400140-100-100.jpg",
      name: "liuyubobobo",
      job: "算法大神"
    },
    price: "99",
    persons: "824",
    term: "62",
    chapter: [
      {
        title: "第1章 优化的概念",
        data: [
          {
            title: "01 开篇词",
            isTry: true,
            time: "2019-07"
          },
          {
            title: "02 编程语言的发展趋势：从没有分号，到DSL",
            isTry: true,
            time: "2019-07"
          },
          {
            title: "03 科技，死亡，和永生",
            isTry: true,
            time: "2019-07"
          },
          {
            title: "04 新西兰恐袭，疯狂删帖的小编，背锅的算法工程师",
            isTry: true,
            time: "2019-07"
          }
        ]
      },
      {
        title: "第2章 性能工具介绍",
        data: [
          {
            title: "5 性能优化百宝箱（上）",
            isTry: false,
            time: "2019-07"
          },
          {
            title: "6 性能优化百宝箱（下）",
            isTry: false,
            time: "2019-07"
          }
        ]
      },
      {
        title: "第3章 网络部分",
        data: [
          {
            title: "7 聊聊 DNS Prefetch",
            isTry: false,
            time: "2019-07"
          },
          {
            title: "8 Webpack 性能优化两三事",
            isTry: false,
            time: "2019-07"
          },
          {
            title: "9 图片加载优化（上）",
            isTry: false,
            time: "2019-07"
          },
          {
            title: "10 图片加载优化（下）",
            isTry: false,
            time: "2019-07"
          }
        ]
      },
      {
        title: "第4章 缓存部分",
        data: [
          {
            title: "11 十八般缓存",
            isTry: false,
            time: "2019-07"
          },
          {
            title: "12 CDN 缓存",
            isTry: false,
            time: "2019-07"
          },
          {
            title: "13 本地缓存（Web Storage）",
            isTry: false,
            time: "2019-07"
          },
          {
            title: "14 浏览器缓存（上）",
            isTry: false,
            time: "2019-07"
          }
        ]
      }
    ]
  }
]"""
    txt = demjson.decode(txt)
    for index, one in enumerate(txt):
        teacher_data = one["author"]
        chapter_data = one["chapter"]
        try:
            tea = Teacher(**teacher_data)
            tea.save()
        except django.db.utils.IntegrityError:
            pass
        del one["author"]
        del one["chapter"]
        try:
            r = Read(**one, author=Teacher.objects.get(name=teacher_data["name"]))
            r.save()
            for one_chapter in chapter_data:
                chapter_item = one_chapter["data"]
                del one_chapter["data"]
                c = ReadChapter(**one_chapter, read=r)
                c.save()
                for item in chapter_item:
                    item["time"] = datetime.strptime(item["time"], '%Y-%m')
                    rc = ReadChapterItem(**item, read_chapter=c)
                    rc.save()
        except django.db.utils.IntegrityError:
            pass


def import_read_author():
    txt = """[
          {
            type: "前端开发",
            title: "从0到1 实战朋友圈移动Web App开发",
            img: "https://img3.mukewang.com/5d5bd52600016bbc02940333.jpg",
            detailImg: 'https://img3.sycdn.imooc.com/5d3138f000015f4c05400720.jpg',
            desc: "全栈开发进阶系列课",
            author: {
              avatar: "https://img1.mukewang.com/5a6f01bc0001a6f405680495-100-100.jpg",
              name: "吕小鸣",
              job: "高级web前端工程师"
            },
            price: "48",
            persons: "472",
            term: "36",
            isRecommend: true,
            chapter: [
              {
                title: "第1章 优化的概念",
                data: [
                  {
                    title: "01 导读：移动 web 的趋势",
                    isTry: true,
                    time: "2019-07"
                  },
                  {
                    title: "02 项目技术栈介绍",
                    isTry: true,
                    time: "2019-07"
                  },
                  {
                    title: "03 开发环境准备",
                    isTry: true,
                    time: "2019-07"
                  },
                  {
                    title: "04 使用 PWA 改造真正的 webApp",
                    isTry: true,
                    time: "2019-07"
                  }
                ]
              },
              {
                title: "第2章 性能工具介绍",
                data: [
                  {
                    title: "5 性能优化百宝箱（上）",
                    isTry: false,
                    time: "2019-07"
                  },
                  {
                    title: "6 性能优化百宝箱（下）",
                    isTry: false,
                    time: "2019-07"
                  }
                ]
              },
              {
                title: "第3章 网络部分",
                data: [
                  {
                    title: "7 聊聊 DNS Prefetch",
                    isTry: false,
                    time: "2019-07"
                  },
                  {
                    title: "8 Webpack 性能优化两三事",
                    isTry: false,
                    time: "2019-07"
                  },
                  {
                    title: "9 图片加载优化（上）",
                    isTry: false,
                    time: "2019-07"
                  },
                  {
                    title: "10 图片加载优化（下）",
                    isTry: false,
                    time: "2019-07"
                  }
                ]
              },
              {
                title: "第4章 缓存部分",
                data: [
                  {
                    title: "11 十八般缓存",
                    isTry: false,
                    time: "2019-07"
                  },
                  {
                    title: "12 CDN 缓存",
                    isTry: false,
                    time: "2019-07"
                  },
                  {
                    title: "13 本地缓存（Web Storage）",
                    isTry: false,
                    time: "2019-07"
                  },
                  {
                    title: "14 浏览器缓存（上）",
                    isTry: false,
                    time: "2019-07"
                  }
                ]
              }
            ]
          },
          {
            type: "前端开发",
            title: "你不知道的前端性能优化技巧",
            img: "https://img2.mukewang.com/5d5bd510000104f102940333.jpg",
            detailImg: 'https://img4.sycdn.imooc.com/5d283a2c0001b89205400720.jpg',
            desc: "前端进阶必修系列课",
            author: {
              avatar: "https://img3.mukewang.com/54584dad0001dd7802200220-100-100.jpg",
              name: "BinaryCoding",
              job: "前端性能优化极客"
            },
            price: "48",
            persons: "508",
            term: "27",
            isRecommend: true,
            chapter: [
              {
                title: "第1章 优化的概念",
                data: [
                  {
                    title: "1 你的前端性能还能再抢救一下",
                    isTry: true,
                    time: "2019-07"
                  },
                  {
                    title: "2 解读雅虎35条军规（上）",
                    isTry: true,
                    time: "2019-07"
                  },
                  {
                    title: "3 解读雅虎35条军规（下）",
                    isTry: true,
                    time: "2019-07"
                  },
                  {
                    title: "4 你要不要看这些优化指标？",
                    isTry: false,
                    time: "2019-07"
                  }
                ]
              },
              {
                title: "第2章 性能工具介绍",
                data: [
                  {
                    title: "5 性能优化百宝箱（上）",
                    isTry: false,
                    time: "2019-07"
                  },
                  {
                    title: "6 性能优化百宝箱（下）",
                    isTry: false,
                    time: "2019-07"
                  }
                ]
              },
              {
                title: "第3章 网络部分",
                data: [
                  {
                    title: "7 聊聊 DNS Prefetch",
                    isTry: false,
                    time: "2019-07"
                  },
                  {
                    title: "8 Webpack 性能优化两三事",
                    isTry: false,
                    time: "2019-07"
                  },
                  {
                    title: "9 图片加载优化（上）",
                    isTry: false,
                    time: "2019-07"
                  },
                  {
                    title: "10 图片加载优化（下）",
                    isTry: false,
                    time: "2019-07"
                  }
                ]
              },
              {
                title: "第4章 缓存部分",
                data: [
                  {
                    title: "11 十八般缓存",
                    isTry: false,
                    time: "2019-07"
                  },
                  {
                    title: "12 CDN 缓存",
                    isTry: false,
                    time: "2019-07"
                  },
                  {
                    title: "13 本地缓存（Web Storage）",
                    isTry: false,
                    time: "2019-07"
                  },
                  {
                    title: "14 浏览器缓存（上）",
                    isTry: false,
                    time: "2019-07"
                  }
                ]
              }
            ]
          },
          {
            type: "前端开发",
            title: "零基础实现微信电商小程序开发",
            img: "https://img.mukewang.com/5d5bd4fe0001e01602940333.jpg",
            detailImg: 'https://img1.sycdn.imooc.com/5d22a6be0001d12805400720.jpg',
            desc: "小程序开发一线战地笔记",
            author: {
              avatar: "https://img1.mukewang.com/5d23fb440001901e11111081-100-100.jpg",
              name: "刘捷Jay",
              job: "首批微信开发从业者"
            },
            price: "68",
            persons: "491",
            term: "50",
            isRecommend: true,
            chapter: [
              {
                title: "第1章 优化的概念",
                data: [
                  {
                    title: "01 为什么你觉得学编程好难？",
                    isTry: true,
                    time: "2019-07"
                  },
                  {
                    title: "02 分类拆解法简介： 助你马上起飞的编程方法论",
                    isTry: true,
                    time: "2019-07"
                  },
                  {
                    title: "03 专栏使用指南：他们都说一开始就要敲重点",
                    isTry: true,
                    time: "2019-07"
                  },
                  {
                    title: "04 解剖分类拆解法详解",
                    isTry: true,
                    time: "2019-07"
                  }
                ]
              },
              {
                title: "第2章 性能工具介绍",
                data: [
                  {
                    title: "5 性能优化百宝箱（上）",
                    isTry: false,
                    time: "2019-07"
                  },
                  {
                    title: "6 性能优化百宝箱（下）",
                    isTry: false,
                    time: "2019-07"
                  }
                ]
              },
              {
                title: "第3章 网络部分",
                data: [
                  {
                    title: "7 聊聊 DNS Prefetch",
                    isTry: false,
                    time: "2019-07"
                  },
                  {
                    title: "8 Webpack 性能优化两三事",
                    isTry: false,
                    time: "2019-07"
                  },
                  {
                    title: "9 图片加载优化（上）",
                    isTry: false,
                    time: "2019-07"
                  },
                  {
                    title: "10 图片加载优化（下）",
                    isTry: false,
                    time: "2019-07"
                  }
                ]
              },
              {
                title: "第4章 缓存部分",
                data: [
                  {
                    title: "11 十八般缓存",
                    isTry: false,
                    time: "2019-07"
                  },
                  {
                    title: "12 CDN 缓存",
                    isTry: false,
                    time: "2019-07"
                  },
                  {
                    title: "13 本地缓存（Web Storage）",
                    isTry: false,
                    time: "2019-07"
                  },
                  {
                    title: "14 浏览器缓存（上）",
                    isTry: false,
                    time: "2019-07"
                  }
                ]
              }
            ]
          },
          {
            type: "后端开发",
            title: "Python入门指南",
            img: "https://img2.mukewang.com/5d5bd56b00012afd02940333.jpg",
            detailImg: "https://img3.sycdn.imooc.com/5d5510fa00011fa605400720.jpg",
            desc: "无门槛快速学Python",
            author: {
              avatar: "https://img3.mukewang.com/5d5496f200014b7e11001100-100-100.jpg",
              name: "黄浮云",
              job: "资深云计算工程师"
            },
            price: "46",
            persons: "86",
            term: "33",
            chapter: [
              {
                title: "第1章 优化的概念",
                data: [
                  {
                    title: "01 你为什么要学 Python ？",
                    isTry: true,
                    time: "2019-07"
                  },
                  {
                    title: "02 我会怎样带你学 Python？",
                    isTry: true,
                    time: "2019-07"
                  },
                  {
                    title: "03 让 Python 在你的电脑上安家落户",
                    isTry: true,
                    time: "2019-07"
                  }
                ]
              },
              {
                title: "第2章 性能工具介绍",
                data: [
                  {
                    title: "5 性能优化百宝箱（上）",
                    isTry: false,
                    time: "2019-07"
                  },
                  {
                    title: "6 性能优化百宝箱（下）",
                    isTry: false,
                    time: "2019-07"
                  }
                ]
              },
              {
                title: "第3章 网络部分",
                data: [
                  {
                    title: "7 聊聊 DNS Prefetch",
                    isTry: false,
                    time: "2019-07"
                  },
                  {
                    title: "8 Webpack 性能优化两三事",
                    isTry: false,
                    time: "2019-07"
                  },
                  {
                    title: "9 图片加载优化（上）",
                    isTry: false,
                    time: "2019-07"
                  },
                  {
                    title: "10 图片加载优化（下）",
                    isTry: false,
                    time: "2019-07"
                  }
                ]
              },
              {
                title: "第4章 缓存部分",
                data: [
                  {
                    title: "11 十八般缓存",
                    isTry: false,
                    time: "2019-07"
                  },
                  {
                    title: "12 CDN 缓存",
                    isTry: false,
                    time: "2019-07"
                  },
                  {
                    title: "13 本地缓存（Web Storage）",
                    isTry: false,
                    time: "2019-07"
                  },
                  {
                    title: "14 浏览器缓存（上）",
                    isTry: false,
                    time: "2019-07"
                  }
                ]
              }
            ]
          },
          {
            type: "后端开发",
            title: "Spring Cloud微服务开发实践",
            img: "https://img.mukewang.com/5d5bd44a0001fa2902940333.jpg",
            detailImg: "https://img2.sycdn.imooc.com/5d12d7e500013ada03600480.jpg",
            desc: "Java工程师晋升必学",
            author: {
              avatar: "https://img4.mukewang.com/533e4d7c0001828702000200-100-100.jpg",
              name: "江南一点雨",
              job: "资深Java工程师"
            },
            price: "88",
            persons: "299",
            term: "39",
            isRecommend: true,
            chapter: [
              {
                title: "第1章 优化的概念",
                data: [
                  {
                    title: "01 Spring Cloud专栏介绍",
                    isTry: true,
                    time: "2019-07"
                  },
                  {
                    title: "02 为什么要使用微服务架构？",
                    isTry: true,
                    time: "2019-07"
                  },
                  {
                    title: "03 Spring Cloud 介绍以及发展前景",
                    isTry: true,
                    time: "2019-07"
                  },
                  {
                    title: "04 Spring Boot 的设计理念和简单实践",
                    isTry: true,
                    time: "2019-07"
                  }
                ]
              },
              {
                title: "第2章 性能工具介绍",
                data: [
                  {
                    title: "5 性能优化百宝箱（上）",
                    isTry: false,
                    time: "2019-07"
                  },
                  {
                    title: "6 性能优化百宝箱（下）",
                    isTry: false,
                    time: "2019-07"
                  }
                ]
              },
              {
                title: "第3章 网络部分",
                data: [
                  {
                    title: "7 聊聊 DNS Prefetch",
                    isTry: false,
                    time: "2019-07"
                  },
                  {
                    title: "8 Webpack 性能优化两三事",
                    isTry: false,
                    time: "2019-07"
                  },
                  {
                    title: "9 图片加载优化（上）",
                    isTry: false,
                    time: "2019-07"
                  },
                  {
                    title: "10 图片加载优化（下）",
                    isTry: false,
                    time: "2019-07"
                  }
                ]
              },
              {
                title: "第4章 缓存部分",
                data: [
                  {
                    title: "11 十八般缓存",
                    isTry: false,
                    time: "2019-07"
                  },
                  {
                    title: "12 CDN 缓存",
                    isTry: false,
                    time: "2019-07"
                  },
                  {
                    title: "13 本地缓存（Web Storage）",
                    isTry: false,
                    time: "2019-07"
                  },
                  {
                    title: "14 浏览器缓存（上）",
                    isTry: false,
                    time: "2019-07"
                  }
                ]
              }
            ]
          },
          {
            type: "数据库",
            title: "一线数据库工程师带你深入理解 MySQL",
            img: "https://img.mukewang.com/5d5bd53d00019b5302940333.jpg",
            detailImg: "https://img2.sycdn.imooc.com/5d3ac78f0001b10a05400720.jpg",
            desc: "你的数据库优化管理第一课",
            author: {
              avatar: "https://img2.mukewang.com/5d30228f00016ccc19201080-100-100.jpg",
              name: "马听老师",
              job: "一线数据库工程师"
            },
            price: "35",
            persons: "621",
            term: "32",
            isRecommend: true,
            chapter: [
              {
                title: "第1章 优化的概念",
                data: [
                  {
                    title: "01 开篇词",
                    isTry: true,
                    time: "2019-07"
                  },
                  {
                    title: "02 快速学会分析SQL执行效率（上）",
                    isTry: true,
                    time: "2019-07"
                  },
                  {
                    title: "02 快速学会分析SQL执行效率（下）",
                    isTry: true,
                    time: "2019-07"
                  }
                ]
              },
              {
                title: "第2章 性能工具介绍",
                data: [
                  {
                    title: "5 性能优化百宝箱（上）",
                    isTry: false,
                    time: "2019-07"
                  },
                  {
                    title: "6 性能优化百宝箱（下）",
                    isTry: false,
                    time: "2019-07"
                  }
                ]
              },
              {
                title: "第3章 网络部分",
                data: [
                  {
                    title: "7 聊聊 DNS Prefetch",
                    isTry: false,
                    time: "2019-07"
                  },
                  {
                    title: "8 Webpack 性能优化两三事",
                    isTry: false,
                    time: "2019-07"
                  },
                  {
                    title: "9 图片加载优化（上）",
                    isTry: false,
                    time: "2019-07"
                  },
                  {
                    title: "10 图片加载优化（下）",
                    isTry: false,
                    time: "2019-07"
                  }
                ]
              },
              {
                title: "第4章 缓存部分",
                data: [
                  {
                    title: "11 十八般缓存",
                    isTry: false,
                    time: "2019-07"
                  },
                  {
                    title: "12 CDN 缓存",
                    isTry: false,
                    time: "2019-07"
                  },
                  {
                    title: "13 本地缓存（Web Storage）",
                    isTry: false,
                    time: "2019-07"
                  },
                  {
                    title: "14 浏览器缓存（上）",
                    isTry: false,
                    time: "2019-07"
                  }
                ]
              }
            ]
          },
          {
            type: "面试",
            title: "面试高频算法习题精讲",
            img: "https://img4.mukewang.com/5d5bd54f0001e41902940333.jpg",
            detailImg: "https://img2.sycdn.imooc.com/5d424c5800015b5c05400720.jpg",
            desc: "一网打尽面试官最喜欢的算法习题",
            author: {
              avatar: "https://img4.mukewang.com/5d4146160001d2b803500350-100-100.jpg",
              name: "Lisanaaa",
              job: "GitHub 开源算法项目万星作者"
            },
            price: "49",
            persons: "350",
            term: "44",
            chapter: [
              {
                title: "第1章 优化的概念",
                data: [
                  {
                    title: "01 开篇：这个专栏能给你带来什么？",
                    isTry: true,
                    time: "2019-07"
                  },
                  {
                    title: "02 online judge 的原理",
                    isTry: true,
                    time: "2019-07"
                  },
                  {
                    title: "03 时间复杂度与空间复杂度分析",
                    isTry: true,
                    time: "2019-07"
                  }
                ]
              },
              {
                title: "第2章 性能工具介绍",
                data: [
                  {
                    title: "5 性能优化百宝箱（上）",
                    isTry: false,
                    time: "2019-07"
                  },
                  {
                    title: "6 性能优化百宝箱（下）",
                    isTry: false,
                    time: "2019-07"
                  }
                ]
              },
              {
                title: "第3章 网络部分",
                data: [
                  {
                    title: "7 聊聊 DNS Prefetch",
                    isTry: false,
                    time: "2019-07"
                  },
                  {
                    title: "8 Webpack 性能优化两三事",
                    isTry: false,
                    time: "2019-07"
                  },
                  {
                    title: "9 图片加载优化（上）",
                    isTry: false,
                    time: "2019-07"
                  },
                  {
                    title: "10 图片加载优化（下）",
                    isTry: false,
                    time: "2019-07"
                  }
                ]
              },
              {
                title: "第4章 缓存部分",
                data: [
                  {
                    title: "11 十八般缓存",
                    isTry: false,
                    time: "2019-07"
                  },
                  {
                    title: "12 CDN 缓存",
                    isTry: false,
                    time: "2019-07"
                  },
                  {
                    title: "13 本地缓存（Web Storage）",
                    isTry: false,
                    time: "2019-07"
                  },
                  {
                    title: "14 浏览器缓存（上）",
                    isTry: false,
                    time: "2019-07"
                  }
                ]
              }
            ]
          },
          {
            type: "其它",
            title: "用技术人的眼光看世界 • 程序员技术指北",
            img: "https://img3.mukewang.com/5d5bd3f9000130dd02940333.jpg",
            detailImg: 'https://img2.sycdn.imooc.com/5cd10384000145f305400720.jpg',
            desc: "bobo老师出品必是精品",
            author: {
              avatar: "https://img1.mukewang.com/5347593e00010cfb01400140-100-100.jpg",
              name: "liuyubobobo",
              job: "算法大神"
            },
            price: "99",
            persons: "824",
            term: "62",
            chapter: [
              {
                title: "第1章 优化的概念",
                data: [
                  {
                    title: "01 开篇词",
                    isTry: true,
                    time: "2019-07"
                  },
                  {
                    title: "02 编程语言的发展趋势：从没有分号，到DSL",
                    isTry: true,
                    time: "2019-07"
                  },
                  {
                    title: "03 科技，死亡，和永生",
                    isTry: true,
                    time: "2019-07"
                  },
                  {
                    title: "04 新西兰恐袭，疯狂删帖的小编，背锅的算法工程师",
                    isTry: true,
                    time: "2019-07"
                  }
                ]
              },
              {
                title: "第2章 性能工具介绍",
                data: [
                  {
                    title: "5 性能优化百宝箱（上）",
                    isTry: false,
                    time: "2019-07"
                  },
                  {
                    title: "6 性能优化百宝箱（下）",
                    isTry: false,
                    time: "2019-07"
                  }
                ]
              },
              {
                title: "第3章 网络部分",
                data: [
                  {
                    title: "7 聊聊 DNS Prefetch",
                    isTry: false,
                    time: "2019-07"
                  },
                  {
                    title: "8 Webpack 性能优化两三事",
                    isTry: false,
                    time: "2019-07"
                  },
                  {
                    title: "9 图片加载优化（上）",
                    isTry: false,
                    time: "2019-07"
                  },
                  {
                    title: "10 图片加载优化（下）",
                    isTry: false,
                    time: "2019-07"
                  }
                ]
              },
              {
                title: "第4章 缓存部分",
                data: [
                  {
                    title: "11 十八般缓存",
                    isTry: false,
                    time: "2019-07"
                  },
                  {
                    title: "12 CDN 缓存",
                    isTry: false,
                    time: "2019-07"
                  },
                  {
                    title: "13 本地缓存（Web Storage）",
                    isTry: false,
                    time: "2019-07"
                  },
                  {
                    title: "14 浏览器缓存（上）",
                    isTry: false,
                    time: "2019-07"
                  }
                ]
              }
            ]
          },
          {
            type: "前端开发",
            title: "从0到1 实战朋友圈移动Web App开发",
            img: "https://img3.mukewang.com/5d5bd52600016bbc02940333.jpg",
            detailImg: 'https://img3.sycdn.imooc.com/5d3138f000015f4c05400720.jpg',
            desc: "全栈开发进阶系列课",
            author: {
              avatar: "https://img1.mukewang.com/5a6f01bc0001a6f405680495-100-100.jpg",
              name: "吕小鸣",
              job: "高级web前端工程师"
            },
            price: "48",
            persons: "472",
            term: "36",
            chapter: [
              {
                title: "第1章 优化的概念",
                data: [
                  {
                    title: "01 导读：移动 web 的趋势",
                    isTry: true,
                    time: "2019-07"
                  },
                  {
                    title: "02 项目技术栈介绍",
                    isTry: true,
                    time: "2019-07"
                  },
                  {
                    title: "03 开发环境准备",
                    isTry: true,
                    time: "2019-07"
                  },
                  {
                    title: "04 使用 PWA 改造真正的 webApp",
                    isTry: true,
                    time: "2019-07"
                  }
                ]
              },
              {
                title: "第2章 性能工具介绍",
                data: [
                  {
                    title: "5 性能优化百宝箱（上）",
                    isTry: false,
                    time: "2019-07"
                  },
                  {
                    title: "6 性能优化百宝箱（下）",
                    isTry: false,
                    time: "2019-07"
                  }
                ]
              },
              {
                title: "第3章 网络部分",
                data: [
                  {
                    title: "7 聊聊 DNS Prefetch",
                    isTry: false,
                    time: "2019-07"
                  },
                  {
                    title: "8 Webpack 性能优化两三事",
                    isTry: false,
                    time: "2019-07"
                  },
                  {
                    title: "9 图片加载优化（上）",
                    isTry: false,
                    time: "2019-07"
                  },
                  {
                    title: "10 图片加载优化（下）",
                    isTry: false,
                    time: "2019-07"
                  }
                ]
              },
              {
                title: "第4章 缓存部分",
                data: [
                  {
                    title: "11 十八般缓存",
                    isTry: false,
                    time: "2019-07"
                  },
                  {
                    title: "12 CDN 缓存",
                    isTry: false,
                    time: "2019-07"
                  },
                  {
                    title: "13 本地缓存（Web Storage）",
                    isTry: false,
                    time: "2019-07"
                  },
                  {
                    title: "14 浏览器缓存（上）",
                    isTry: false,
                    time: "2019-07"
                  }
                ]
              }
            ]
          },
          {
            type: "前端开发",
            title: "你不知道的前端性能优化技巧",
            img: "https://img2.mukewang.com/5d5bd510000104f102940333.jpg",
            detailImg: 'https://img4.sycdn.imooc.com/5d283a2c0001b89205400720.jpg',
            desc: "前端进阶必修系列课",
            author: {
              avatar: "https://img3.mukewang.com/54584dad0001dd7802200220-100-100.jpg",
              name: "BinaryCoding",
              job: "前端性能优化极客"
            },
            price: "48",
            persons: "508",
            term: "27",
            chapter: [
              {
                title: "第1章 优化的概念",
                data: [
                  {
                    title: "1 你的前端性能还能再抢救一下",
                    isTry: true,
                    time: "2019-07"
                  },
                  {
                    title: "2 解读雅虎35条军规（上）",
                    isTry: true,
                    time: "2019-07"
                  },
                  {
                    title: "3 解读雅虎35条军规（下）",
                    isTry: true,
                    time: "2019-07"
                  },
                  {
                    title: "4 你要不要看这些优化指标？",
                    isTry: false,
                    time: "2019-07"
                  }
                ]
              },
              {
                title: "第2章 性能工具介绍",
                data: [
                  {
                    title: "5 性能优化百宝箱（上）",
                    isTry: false,
                    time: "2019-07"
                  },
                  {
                    title: "6 性能优化百宝箱（下）",
                    isTry: false,
                    time: "2019-07"
                  }
                ]
              },
              {
                title: "第3章 网络部分",
                data: [
                  {
                    title: "7 聊聊 DNS Prefetch",
                    isTry: false,
                    time: "2019-07"
                  },
                  {
                    title: "8 Webpack 性能优化两三事",
                    isTry: false,
                    time: "2019-07"
                  },
                  {
                    title: "9 图片加载优化（上）",
                    isTry: false,
                    time: "2019-07"
                  },
                  {
                    title: "10 图片加载优化（下）",
                    isTry: false,
                    time: "2019-07"
                  }
                ]
              },
              {
                title: "第4章 缓存部分",
                data: [
                  {
                    title: "11 十八般缓存",
                    isTry: false,
                    time: "2019-07"
                  },
                  {
                    title: "12 CDN 缓存",
                    isTry: false,
                    time: "2019-07"
                  },
                  {
                    title: "13 本地缓存（Web Storage）",
                    isTry: false,
                    time: "2019-07"
                  },
                  {
                    title: "14 浏览器缓存（上）",
                    isTry: false,
                    time: "2019-07"
                  }
                ]
              }
            ]
          },
          {
            type: "前端开发",
            title: "零基础实现微信电商小程序开发",
            img: "https://img.mukewang.com/5d5bd4fe0001e01602940333.jpg",
            detailImg: 'https://img1.sycdn.imooc.com/5d22a6be0001d12805400720.jpg',
            desc: "小程序开发一线战地笔记",
            author: {
              avatar: "https://img1.mukewang.com/5d23fb440001901e11111081-100-100.jpg",
              name: "刘捷Jay",
              job: "首批微信开发从业者"
            },
            price: "68",
            persons: "491",
            term: "50",
            chapter: [
              {
                title: "第1章 优化的概念",
                data: [
                  {
                    title: "01 为什么你觉得学编程好难？",
                    isTry: true,
                    time: "2019-07"
                  },
                  {
                    title: "02 分类拆解法简介： 助你马上起飞的编程方法论",
                    isTry: true,
                    time: "2019-07"
                  },
                  {
                    title: "03 专栏使用指南：他们都说一开始就要敲重点",
                    isTry: true,
                    time: "2019-07"
                  },
                  {
                    title: "04 解剖分类拆解法详解",
                    isTry: true,
                    time: "2019-07"
                  }
                ]
              },
              {
                title: "第2章 性能工具介绍",
                data: [
                  {
                    title: "5 性能优化百宝箱（上）",
                    isTry: false,
                    time: "2019-07"
                  },
                  {
                    title: "6 性能优化百宝箱（下）",
                    isTry: false,
                    time: "2019-07"
                  }
                ]
              },
              {
                title: "第3章 网络部分",
                data: [
                  {
                    title: "7 聊聊 DNS Prefetch",
                    isTry: false,
                    time: "2019-07"
                  },
                  {
                    title: "8 Webpack 性能优化两三事",
                    isTry: false,
                    time: "2019-07"
                  },
                  {
                    title: "9 图片加载优化（上）",
                    isTry: false,
                    time: "2019-07"
                  },
                  {
                    title: "10 图片加载优化（下）",
                    isTry: false,
                    time: "2019-07"
                  }
                ]
              },
              {
                title: "第4章 缓存部分",
                data: [
                  {
                    title: "11 十八般缓存",
                    isTry: false,
                    time: "2019-07"
                  },
                  {
                    title: "12 CDN 缓存",
                    isTry: false,
                    time: "2019-07"
                  },
                  {
                    title: "13 本地缓存（Web Storage）",
                    isTry: false,
                    time: "2019-07"
                  },
                  {
                    title: "14 浏览器缓存（上）",
                    isTry: false,
                    time: "2019-07"
                  }
                ]
              }
            ]
          },
          {
            type: "后端开发",
            title: "Python入门指南",
            img: "https://img2.mukewang.com/5d5bd56b00012afd02940333.jpg",
            detailImg: "https://img3.sycdn.imooc.com/5d5510fa00011fa605400720.jpg",
            desc: "无门槛快速学Python",
            author: {
              avatar: "https://img3.mukewang.com/5d5496f200014b7e11001100-100-100.jpg",
              name: "黄浮云",
              job: "资深云计算工程师"
            },
            price: "46",
            persons: "86",
            term: "33",
            chapter: [
              {
                title: "第1章 优化的概念",
                data: [
                  {
                    title: "01 你为什么要学 Python ？",
                    isTry: true,
                    time: "2019-07"
                  },
                  {
                    title: "02 我会怎样带你学 Python？",
                    isTry: true,
                    time: "2019-07"
                  },
                  {
                    title: "03 让 Python 在你的电脑上安家落户",
                    isTry: true,
                    time: "2019-07"
                  }
                ]
              },
              {
                title: "第2章 性能工具介绍",
                data: [
                  {
                    title: "5 性能优化百宝箱（上）",
                    isTry: false,
                    time: "2019-07"
                  },
                  {
                    title: "6 性能优化百宝箱（下）",
                    isTry: false,
                    time: "2019-07"
                  }
                ]
              },
              {
                title: "第3章 网络部分",
                data: [
                  {
                    title: "7 聊聊 DNS Prefetch",
                    isTry: false,
                    time: "2019-07"
                  },
                  {
                    title: "8 Webpack 性能优化两三事",
                    isTry: false,
                    time: "2019-07"
                  },
                  {
                    title: "9 图片加载优化（上）",
                    isTry: false,
                    time: "2019-07"
                  },
                  {
                    title: "10 图片加载优化（下）",
                    isTry: false,
                    time: "2019-07"
                  }
                ]
              },
              {
                title: "第4章 缓存部分",
                data: [
                  {
                    title: "11 十八般缓存",
                    isTry: false,
                    time: "2019-07"
                  },
                  {
                    title: "12 CDN 缓存",
                    isTry: false,
                    time: "2019-07"
                  },
                  {
                    title: "13 本地缓存（Web Storage）",
                    isTry: false,
                    time: "2019-07"
                  },
                  {
                    title: "14 浏览器缓存（上）",
                    isTry: false,
                    time: "2019-07"
                  }
                ]
              }
            ]
          },
          {
            type: "后端开发",
            title: "Spring Cloud微服务开发实践",
            img: "https://img.mukewang.com/5d5bd44a0001fa2902940333.jpg",
            detailImg: "https://img2.sycdn.imooc.com/5d12d7e500013ada03600480.jpg",
            desc: "Java工程师晋升必学",
            author: {
              avatar: "https://img4.mukewang.com/533e4d7c0001828702000200-100-100.jpg",
              name: "江南一点雨",
              job: "资深Java工程师"
            },
            price: "88",
            persons: "299",
            term: "39",
            chapter: [
              {
                title: "第1章 优化的概念",
                data: [
                  {
                    title: "01 Spring Cloud专栏介绍",
                    isTry: true,
                    time: "2019-07"
                  },
                  {
                    title: "02 为什么要使用微服务架构？",
                    isTry: true,
                    time: "2019-07"
                  },
                  {
                    title: "03 Spring Cloud 介绍以及发展前景",
                    isTry: true,
                    time: "2019-07"
                  },
                  {
                    title: "04 Spring Boot 的设计理念和简单实践",
                    isTry: true,
                    time: "2019-07"
                  }
                ]
              },
              {
                title: "第2章 性能工具介绍",
                data: [
                  {
                    title: "5 性能优化百宝箱（上）",
                    isTry: false,
                    time: "2019-07"
                  },
                  {
                    title: "6 性能优化百宝箱（下）",
                    isTry: false,
                    time: "2019-07"
                  }
                ]
              },
              {
                title: "第3章 网络部分",
                data: [
                  {
                    title: "7 聊聊 DNS Prefetch",
                    isTry: false,
                    time: "2019-07"
                  },
                  {
                    title: "8 Webpack 性能优化两三事",
                    isTry: false,
                    time: "2019-07"
                  },
                  {
                    title: "9 图片加载优化（上）",
                    isTry: false,
                    time: "2019-07"
                  },
                  {
                    title: "10 图片加载优化（下）",
                    isTry: false,
                    time: "2019-07"
                  }
                ]
              },
              {
                title: "第4章 缓存部分",
                data: [
                  {
                    title: "11 十八般缓存",
                    isTry: false,
                    time: "2019-07"
                  },
                  {
                    title: "12 CDN 缓存",
                    isTry: false,
                    time: "2019-07"
                  },
                  {
                    title: "13 本地缓存（Web Storage）",
                    isTry: false,
                    time: "2019-07"
                  },
                  {
                    title: "14 浏览器缓存（上）",
                    isTry: false,
                    time: "2019-07"
                  }
                ]
              }
            ]
          },
          {
            type: "数据库",
            title: "一线数据库工程师带你深入理解 MySQL",
            img: "https://img.mukewang.com/5d5bd53d00019b5302940333.jpg",
            detailImg: "https://img2.sycdn.imooc.com/5d3ac78f0001b10a05400720.jpg",
            desc: "你的数据库优化管理第一课",
            author: {
              avatar: "https://img2.mukewang.com/5d30228f00016ccc19201080-100-100.jpg",
              name: "马听老师",
              job: "一线数据库工程师"
            },
            price: "35",
            persons: "621",
            term: "32",
            chapter: [
              {
                title: "第1章 优化的概念",
                data: [
                  {
                    title: "01 开篇词",
                    isTry: true,
                    time: "2019-07"
                  },
                  {
                    title: "02 快速学会分析SQL执行效率（上）",
                    isTry: true,
                    time: "2019-07"
                  },
                  {
                    title: "02 快速学会分析SQL执行效率（下）",
                    isTry: true,
                    time: "2019-07"
                  }
                ]
              },
              {
                title: "第2章 性能工具介绍",
                data: [
                  {
                    title: "5 性能优化百宝箱（上）",
                    isTry: false,
                    time: "2019-07"
                  },
                  {
                    title: "6 性能优化百宝箱（下）",
                    isTry: false,
                    time: "2019-07"
                  }
                ]
              },
              {
                title: "第3章 网络部分",
                data: [
                  {
                    title: "7 聊聊 DNS Prefetch",
                    isTry: false,
                    time: "2019-07"
                  },
                  {
                    title: "8 Webpack 性能优化两三事",
                    isTry: false,
                    time: "2019-07"
                  },
                  {
                    title: "9 图片加载优化（上）",
                    isTry: false,
                    time: "2019-07"
                  },
                  {
                    title: "10 图片加载优化（下）",
                    isTry: false,
                    time: "2019-07"
                  }
                ]
              },
              {
                title: "第4章 缓存部分",
                data: [
                  {
                    title: "11 十八般缓存",
                    isTry: false,
                    time: "2019-07"
                  },
                  {
                    title: "12 CDN 缓存",
                    isTry: false,
                    time: "2019-07"
                  },
                  {
                    title: "13 本地缓存（Web Storage）",
                    isTry: false,
                    time: "2019-07"
                  },
                  {
                    title: "14 浏览器缓存（上）",
                    isTry: false,
                    time: "2019-07"
                  }
                ]
              }
            ]
          },
          {
            type: "面试",
            title: "面试高频算法习题精讲",
            img: "https://img4.mukewang.com/5d5bd54f0001e41902940333.jpg",
            detailImg: "https://img2.sycdn.imooc.com/5d424c5800015b5c05400720.jpg",
            desc: "一网打尽面试官最喜欢的算法习题",
            author: {
              avatar: "https://img4.mukewang.com/5d4146160001d2b803500350-100-100.jpg",
              name: "Lisanaaa",
              job: "GitHub 开源算法项目万星作者"
            },
            price: "49",
            persons: "350",
            term: "44",
            chapter: [
              {
                title: "第1章 优化的概念",
                data: [
                  {
                    title: "01 开篇：这个专栏能给你带来什么？",
                    isTry: true,
                    time: "2019-07"
                  },
                  {
                    title: "02 online judge 的原理",
                    isTry: true,
                    time: "2019-07"
                  },
                  {
                    title: "03 时间复杂度与空间复杂度分析",
                    isTry: true,
                    time: "2019-07"
                  }
                ]
              },
              {
                title: "第2章 性能工具介绍",
                data: [
                  {
                    title: "5 性能优化百宝箱（上）",
                    isTry: false,
                    time: "2019-07"
                  },
                  {
                    title: "6 性能优化百宝箱（下）",
                    isTry: false,
                    time: "2019-07"
                  }
                ]
              },
              {
                title: "第3章 网络部分",
                data: [
                  {
                    title: "7 聊聊 DNS Prefetch",
                    isTry: false,
                    time: "2019-07"
                  },
                  {
                    title: "8 Webpack 性能优化两三事",
                    isTry: false,
                    time: "2019-07"
                  },
                  {
                    title: "9 图片加载优化（上）",
                    isTry: false,
                    time: "2019-07"
                  },
                  {
                    title: "10 图片加载优化（下）",
                    isTry: false,
                    time: "2019-07"
                  }
                ]
              },
              {
                title: "第4章 缓存部分",
                data: [
                  {
                    title: "11 十八般缓存",
                    isTry: false,
                    time: "2019-07"
                  },
                  {
                    title: "12 CDN 缓存",
                    isTry: false,
                    time: "2019-07"
                  },
                  {
                    title: "13 本地缓存（Web Storage）",
                    isTry: false,
                    time: "2019-07"
                  },
                  {
                    title: "14 浏览器缓存（上）",
                    isTry: false,
                    time: "2019-07"
                  }
                ]
              }
            ]
          },
          {
            type: "其它",
            title: "用技术人的眼光看世界 • 程序员技术指北",
            img: "https://img3.mukewang.com/5d5bd3f9000130dd02940333.jpg",
            desc: "bobo老师出品必是精品",
            author: {
              avatar: "https://img1.mukewang.com/5347593e00010cfb01400140-100-100.jpg",
              name: "liuyubobobo",
              job: "算法大神"
            },
            price: "99",
            persons: "824",
            term: "62",
            chapter: [
              {
                title: "第1章 优化的概念",
                data: [
                  {
                    title: "01 开篇词",
                    isTry: true,
                    time: "2019-07"
                  },
                  {
                    title: "02 编程语言的发展趋势：从没有分号，到DSL",
                    isTry: true,
                    time: "2019-07"
                  },
                  {
                    title: "03 科技，死亡，和永生",
                    isTry: true,
                    time: "2019-07"
                  },
                  {
                    title: "04 新西兰恐袭，疯狂删帖的小编，背锅的算法工程师",
                    isTry: true,
                    time: "2019-07"
                  }
                ]
              },
              {
                title: "第2章 性能工具介绍",
                data: [
                  {
                    title: "5 性能优化百宝箱（上）",
                    isTry: false,
                    time: "2019-07"
                  },
                  {
                    title: "6 性能优化百宝箱（下）",
                    isTry: false,
                    time: "2019-07"
                  }
                ]
              },
              {
                title: "第3章 网络部分",
                data: [
                  {
                    title: "7 聊聊 DNS Prefetch",
                    isTry: false,
                    time: "2019-07"
                  },
                  {
                    title: "8 Webpack 性能优化两三事",
                    isTry: false,
                    time: "2019-07"
                  },
                  {
                    title: "9 图片加载优化（上）",
                    isTry: false,
                    time: "2019-07"
                  },
                  {
                    title: "10 图片加载优化（下）",
                    isTry: false,
                    time: "2019-07"
                  }
                ]
              },
              {
                title: "第4章 缓存部分",
                data: [
                  {
                    title: "11 十八般缓存",
                    isTry: false,
                    time: "2019-07"
                  },
                  {
                    title: "12 CDN 缓存",
                    isTry: false,
                    time: "2019-07"
                  },
                  {
                    title: "13 本地缓存（Web Storage）",
                    isTry: false,
                    time: "2019-07"
                  },
                  {
                    title: "14 浏览器缓存（上）",
                    isTry: false,
                    time: "2019-07"
                  }
                ]
              }
            ]
          }
        ]"""
    txt = demjson.decode(txt)
    for index, one in enumerate(txt):
        teacher_data = one["author"]
        r = Read.objects.get(title=one["title"])
        r.author = Teacher.objects.get(name=teacher_data["name"])
        r.save()


def import_user():
    txt = """[
  {
    username: 'mtianyan',
    nickname: '天涯明月笙',
    avatar: 'https://img3.sycdn.imooc.com/5a5d1f3a0001cab806380638-140-140.jpg',
    sex: 'male',
    job: 'Python工程师',
    city: '四川省成都市',
    signature: 'funpython(qq付费群): 211599322',
    hour: 887,
    exp: 28439,
    integral: 6,
    follow: 27,
    fans: 2721,
    email: '1147727180@qq.com',
    qq: '1147727180',
    phone: '173xxxx1458',
    wechat: 'wechat',
    weibo: 'weibo'
  }
]
"""
    txt = demjson.decode(txt)
    password = make_password("123456")
    us = User(**txt[0], password=password)
    us.save()


def import_user_log_type():
    txt = """[
      { 
        type: {
          text: "账号登陆",
          code: 0
        },
        time: "2019-10-11 08:08:08",
        city: "广东省广州市天河区",
        ip: "192.168.0.1",
        device: "web"
      },
      { 
        type: {
          text: "账号登陆",
          code: 0
        },
        time: "2019-09-11 08:08:08",
        city: "广东省广州市天河区",
        ip: "192.168.0.1",
        device: "web"
      },
      { 
        type: {
          text: "短信验证码登陆",
          code: 1
        },
        time: "2019-08-11 08:08:08",
        city: "广东省广州市天河区",
        ip: "192.168.0.1",
        device: "ipad"
      },
      { 
        type: {
          text: "短信验证码登陆",
          code: 1
        },
        time: "2019-07-11 08:08:08",
        city: "广东省广州市天河区",
        ip: "192.168.0.1",
        device: "ipad"
      },
      { 
        type: {
          text: "二维码登陆",
          code: 2
        },
        time: "2019-06-11 08:08:08",
        city: "广东省广州市天河区",
        ip: "192.168.0.1",
        device: "ipad"
      },
      { 
        type: {
          text: "二维码登陆",
          code: 2
        },
        time: "2019-05-11 08:08:08",
        city: "广东省广州市天河区",
        ip: "192.168.0.1",
        device: "APP"
      },
      { 
        type: {
          text: "账号登陆",
          code: 0
        },
        time: "2019-04-11 08:08:08",
        city: "广东省广州市天河区",
        ip: "192.168.0.1",
        device: "APP"
      },
      { 
        type: {
          text: "账号登陆",
          code: 0
        },
        time: "2019-03-11 08:08:08",
        city: "广东省广州市天河区",
        ip: "192.168.0.1",
        device: "APP"
      },
      { 
        type: {
          text: "短信验证码登陆",
          code: 1
        },
        time: "2019-02-11 08:08:08",
        city: "广东省广州市天河区",
        ip: "192.168.0.1",
        device: "APP"
      },
      { 
        type: {
          text: "短信验证码登陆",
          code: 1
        },
        time: "2019-01-11 08:08:08",
        city: "广东省广州市天河区",
        ip: "192.168.0.1",
        device: "APP"
      },
      { 
        type: {
          text: "账号登陆",
          code: 0
        },
        time: "2019-10-11 08:08:08",
        city: "广东省广州市天河区",
        ip: "192.168.0.1",
        device: "web"
      },
      { 
        type: {
          text: "账号登陆",
          code: 0
        },
        time: "2019-09-11 08:08:08",
        city: "广东省广州市天河区",
        ip: "192.168.0.1",
        device: "web"
      },
      { 
        type: {
          text: "短信验证码登陆",
          code: 1
        },
        time: "2019-08-11 08:08:08",
        city: "广东省广州市天河区",
        ip: "192.168.0.1",
        device: "ipad"
      },
      { 
        type: {
          text: "短信验证码登陆",
          code: 1
        },
        time: "2019-07-11 08:08:08",
        city: "广东省广州市天河区",
        ip: "192.168.0.1",
        device: "ipad"
      },
      { 
        type: {
          text: "二维码登陆",
          code: 2
        },
        time: "2019-06-11 08:08:08",
        city: "广东省广州市天河区",
        ip: "192.168.0.1",
        device: "ipad"
      },
      { 
        type: {
          text: "二维码登陆",
          code: 2
        },
        time: "2019-05-11 08:08:08",
        city: "广东省广州市天河区",
        ip: "192.168.0.1",
        device: "APP"
      },
      { 
        type: {
          text: "账号登陆",
          code: 0
        },
        time: "2019-04-11 08:08:08",
        city: "广东省广州市天河区",
        ip: "192.168.0.1",
        device: "APP"
      },
      { 
        type: {
          text: "账号登陆",
          code: 0
        },
        time: "2019-03-11 08:08:08",
        city: "广东省广州市天河区",
        ip: "192.168.0.1",
        device: "APP"
      },
      { 
        type: {
          text: "短信验证码登陆",
          code: 1
        },
        time: "2019-02-11 08:08:08",
        city: "广东省广州市天河区",
        ip: "192.168.0.1",
        device: "APP"
      },
      { 
        type: {
          text: "短信验证码登陆",
          code: 1
        },
        time: "2019-01-11 08:08:08",
        city: "广东省广州市天河区",
        ip: "192.168.0.1",
        device: "APP"
      }
    ]
    """
    txt = demjson.decode(txt)

    for index, one in enumerate(txt):
        type_one = one["type"]
        try:
            lt = LogType(**type_one)
            lt.save()
        except django.db.utils.IntegrityError:
            pass


def import_user_log():
    txt = """[
  { 
    type: {
      text: "账号登陆",
      code: 0
    },
    time: "2019-10-11 08:08:08",
    city: "广东省广州市天河区",
    ip: "192.168.0.1",
    device: "web"
  },
  { 
    type: {
      text: "账号登陆",
      code: 0
    },
    time: "2019-09-11 08:08:08",
    city: "广东省广州市天河区",
    ip: "192.168.0.1",
    device: "web"
  },
  { 
    type: {
      text: "短信验证码登陆",
      code: 1
    },
    time: "2019-08-11 08:08:08",
    city: "广东省广州市天河区",
    ip: "192.168.0.1",
    device: "ipad"
  },
  { 
    type: {
      text: "短信验证码登陆",
      code: 1
    },
    time: "2019-07-11 08:08:08",
    city: "广东省广州市天河区",
    ip: "192.168.0.1",
    device: "ipad"
  },
  { 
    type: {
      text: "二维码登陆",
      code: 2
    },
    time: "2019-06-11 08:08:08",
    city: "广东省广州市天河区",
    ip: "192.168.0.1",
    device: "ipad"
  },
  { 
    type: {
      text: "二维码登陆",
      code: 2
    },
    time: "2019-05-11 08:08:08",
    city: "广东省广州市天河区",
    ip: "192.168.0.1",
    device: "APP"
  },
  { 
    type: {
      text: "账号登陆",
      code: 0
    },
    time: "2019-04-11 08:08:08",
    city: "广东省广州市天河区",
    ip: "192.168.0.1",
    device: "APP"
  },
  { 
    type: {
      text: "账号登陆",
      code: 0
    },
    time: "2019-03-11 08:08:08",
    city: "广东省广州市天河区",
    ip: "192.168.0.1",
    device: "APP"
  },
  { 
    type: {
      text: "短信验证码登陆",
      code: 1
    },
    time: "2019-02-11 08:08:08",
    city: "广东省广州市天河区",
    ip: "192.168.0.1",
    device: "APP"
  },
  { 
    type: {
      text: "短信验证码登陆",
      code: 1
    },
    time: "2019-01-11 08:08:08",
    city: "广东省广州市天河区",
    ip: "192.168.0.1",
    device: "APP"
  },
  { 
    type: {
      text: "账号登陆",
      code: 0
    },
    time: "2019-10-11 08:08:08",
    city: "广东省广州市天河区",
    ip: "192.168.0.1",
    device: "web"
  },
  { 
    type: {
      text: "账号登陆",
      code: 0
    },
    time: "2019-09-11 08:08:08",
    city: "广东省广州市天河区",
    ip: "192.168.0.1",
    device: "web"
  },
  { 
    type: {
      text: "短信验证码登陆",
      code: 1
    },
    time: "2019-08-11 08:08:08",
    city: "广东省广州市天河区",
    ip: "192.168.0.1",
    device: "ipad"
  },
  { 
    type: {
      text: "短信验证码登陆",
      code: 1
    },
    time: "2019-07-11 08:08:08",
    city: "广东省广州市天河区",
    ip: "192.168.0.1",
    device: "ipad"
  },
  { 
    type: {
      text: "二维码登陆",
      code: 2
    },
    time: "2019-06-11 08:08:08",
    city: "广东省广州市天河区",
    ip: "192.168.0.1",
    device: "ipad"
  },
  { 
    type: {
      text: "二维码登陆",
      code: 2
    },
    time: "2019-05-11 08:08:08",
    city: "广东省广州市天河区",
    ip: "192.168.0.1",
    device: "APP"
  },
  { 
    type: {
      text: "账号登陆",
      code: 0
    },
    time: "2019-04-11 08:08:08",
    city: "广东省广州市天河区",
    ip: "192.168.0.1",
    device: "APP"
  },
  { 
    type: {
      text: "账号登陆",
      code: 0
    },
    time: "2019-03-11 08:08:08",
    city: "广东省广州市天河区",
    ip: "192.168.0.1",
    device: "APP"
  },
  { 
    type: {
      text: "短信验证码登陆",
      code: 1
    },
    time: "2019-02-11 08:08:08",
    city: "广东省广州市天河区",
    ip: "192.168.0.1",
    device: "APP"
  },
  { 
    type: {
      text: "短信验证码登陆",
      code: 1
    },
    time: "2019-01-11 08:08:08",
    city: "广东省广州市天河区",
    ip: "192.168.0.1",
    device: "APP"
  }
]
"""
    txt = demjson.decode(txt)
    for index, one in enumerate(txt):
        type_one_code = one["type"]["code"]
        del one["type"]
        log = Log(**one, type=LogType.objects.get(code=type_one_code))
        log.save()


def import_user_course():
    txt = """[
      {
        "type": {
          "text": "实战课程",
          "code": 1
        },
        "percent": 0,
        "isFollow": false,
        "exp": 0,
        "hours": 0,
        "notes": 0,
        "codes": 0,
        "questions": 0,
        "lastChapter": "",
        "title": "TypeScript  系统入门到项目实战 趁早学习提高职场竞争力",
        "img": "https://img.mukewang.com/szimg/5e1d990f0885d97306000338-360-202.jpg",
      },
      {
        "type": {
          "text": "实战课程",
          "code": 1
        },
        "percent": 0,
        "isFollow": false,
        "exp": 0,
        "hours": 0,
        "notes": 0,
        "codes": 0,
        "questions": 0,
        "lastChapter": "",
        "title": "前端要学的测试课 从Jest入门到 TDD/BDD双实战",
        "img": "https://img.mukewang.com/szimg/5d36a6000837a91d06000338-360-202.jpg",
      },
      {
        "type": {
          "text": "实战课程",
          "code": 1
        },
        "percent": 0,
        "isFollow": false,
        "exp": 0,
        "hours": 0,
        "notes": 0,
        "codes": 0,
        "questions": 0,
        "lastChapter": "",
        "title": "TypeScript  系统入门到项目实战 趁早学习提高职场竞争力",
        "img": "https://img.mukewang.com/szimg/5e1d990f0885d97306000338-360-202.jpg",
      },
      {
        "type": {
          "text": "实战课程",
          "code": 1
        },
        "percent": 0,
        "isFollow": false,
        "exp": 0,
        "hours": 0,
        "notes": 0,
        "codes": 0,
        "questions": 0,
        "lastChapter": "",
        "title": "前端要学的测试课 从Jest入门到 TDD/BDD双实战",
        "img": "https://img.mukewang.com/szimg/5d36a6000837a91d06000338-360-202.jpg",
      }
    ]"""
    txt = demjson.decode(txt)
    for one in txt:
        t_code = one["type"]["code"]
        del one["type"]
        lid = Lesson.objects.get(title=one["title"]).id
        ul = UserLesson(**one, userid=1, lessonid=lid, type=LessonType.objects.get(code=t_code))
        ul.save()


if __name__ == '__main__':
    import_footer()
    import_header()
    import_hot()
    import_slider()
    import_navigation()
    import_address()
    import_article_type()
    import_article()
    import_history()
    import_teacher()
    import_student_type()
    import_student()
    import_teacher()
    import_integral_type()
    import_integral()
    import_label_type()
    import_label()
    import_lesson_type()
    import_lesson_hard_type()
    import_lesson_teacher()
    import_lesson_script()
    import_lesson()
    import_free_catalog()
    import_chapter()
    import_term()
    import_comment()
    import_qa_type()
    import_qa()
    import_notice()
    import_user_notice()
    import_recharge_action()
    import_recharge()
    import_coupon_range()
    import_coupon()
    import_bill()
    import_order_status()
    import_consult()
    import_question()
    import_read_type()
    import_read()
    import_read_author()
    import_user()
    import_user_log_type()
    import_user_log()
    import_user_course()
