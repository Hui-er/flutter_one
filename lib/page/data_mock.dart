import 'package:flutter_one/page/petCart.dart';
import 'package:flutter_one/page/subscribe_account.dart';

import 'friendCircle.dart';

/// 宠物卡片mock数据
const PetCardViewModel petCardData = PetCardViewModel(
  coverUrl:
      'https://ss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=1425538345,901220022&fm=26&gp=0.jpg',
  userImgUrl:
      'https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=1699287406,228622974&fm=26&gp=0.jpg',
  userName: '大米要煮小米粥',
  description: '小米 | 我家的小仓鼠',
  publishTime: '12:59',
  topic: '萌宠小屋',
  publishContent: '今天带着小VIVI去了爪子生活体验馆，体验馆好多好玩的小东西都想带回家！',
  replies: 356,
  likes: 258,
  shares: 126,
);

/// 朋友圈mock数据
const FriendCircleViewModel friendCircleData = FriendCircleViewModel(
  userName: '小石头',
  userImgUrl:
      'https://mirror-gold-cdn.xitu.io/168e089a9fc6d1a7a5c?imageView2/1/w/100/h/100/q/85/format/webp/interlace/1',
  saying: '听说Flutter很🔥，我也来凑热闹，github上建了一个仓库，欢迎来撩~✌✌✌',
  pic:
      'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1562427219775&di=0ffec9a8d7fd40f4b7b4260f2fefe910&imgtype=0&src=http%3A%2F%2Fimg3.mukewang.com%2F5c18cf540001ac8206000338.jpg',
  publishTime: '2小时前',
  comments: [
    Comment(source: true, fromUser: '若海', toUser: '小石头', content: '性能如何？'),
    Comment(
        source: false,
        fromUser: '小石头',
        toUser: '若海',
        content: '性能不错，但是开发体验感觉差一点。。。'),
    Comment(
        source: false, fromUser: '若海', toUser: '小石头', content: '周末我也试试，嘻嘻~'),
    Comment(source: true, fromUser: '大佬', toUser: '小石头', content: '卧槽，求求你别学了'),
    Comment(
        source: true, fromUser: '产品', toUser: '小石头', content: '工作量不饱和啊你这是！'),
    Comment(
        source: false,
        fromUser: '小石头',
        toUser: '大佬',
        content: '卧槽，大佬别闹，学不动了。。。'),
    Comment(
        source: false,
        fromUser: '小石头',
        toUser: '产品',
        content: '不不不，你的需求都已经完成了~！'),
  ],
);


// 公众号列表模拟数据
const SubscribeAccountViewModel subscribeAccount = SubscribeAccountViewModel(
    accountImgUrl:
        'http://wx.qlogo.cn/mmhead/ver_1/ZlEUgMmdukDlDjnIRjqBCSJNBtjWpocqGKGjpA9ImBkictzNPJCllxKXk3iaJ1qHZE8xQNarsH13kPDxDwLfLO3bly9tRKxweAX6ycibpoJENY/132',
    accountName: '前端外刊评论',
    publishTime: '2小时前',
    articles: [
      Article(
          title: 'React16新特性全解（上）',
          coverImgUrl:
              'http://mmbiz.qpic.cn/mmbiz_jpg/I4OWBs9UyBtjvym40lSP7MFmcgiaViaSia6iceaDutwREKcxE47k6dob7JgAicxNMVY8cenZ7e4v6jSrZ5ib4e7xC75w/640?wxtype=jpeg&wxfrom=0'),
      Article(
          title: '最近，前端又火了哪些技术？',
          coverImgUrl:
              'http://mmbiz.qpic.cn/mmbiz_jpg/jhtEbpg4m6E58ByJhbGYG6ibHg83xPucTGs0U00bbGpfCy7LAm36ZUVgS34hSmydI8ukZyGMG7W5uA7bJFAbCTw/640?wxtype=jpeg&wxfrom=0'),
      Article(
          title: '开发者需要什么样的技术社区？',
          coverImgUrl:
              'http://mmbiz.qpic.cn/mmbiz_jpg/I4OWBs9UyBtXq8jdK8cghjFjxhbJ9eiak751b8xc0y77L7xVGj4jGhlbI69tbiae4catwyFqE3BiaJLP0ViamOURuw/640?wxtype=jpeg&wxfrom=0'),
      Article(
          title: '中国人民银行',
          coverImgUrl:
              'http://mmbiz.qpic.cn/mmbiz_jpg/I4OWBs9UyBtXq8jdK8cghjFjxhbJ9eiak751b8xc0y77L7xVGj4jGhlbI69tbiae4catwyFqE3BiaJLP0ViamOURuw/640?wxtype=jpeg&wxfrom=0'),
      Article(
          title: '中国工商银行',
          coverImgUrl:
              'http://mmbiz.qpic.cn/mmbiz_jpg/I4OWBs9UyBtXq8jdK8cghjFjxhbJ9eiak751b8xc0y77L7xVGj4jGhlbI69tbiae4catwyFqE3BiaJLP0ViamOURuw/640?wxtype=jpeg&wxfrom=0'),
    ]);


