import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  num index = 0;
  String titleText = "首页";

  ///定义三个页面
  List<Widget> pageWidgetList = [
    HomeItemPage(),
    EmailItemPage(),
    PeopleItemPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          titleText,
          style: Theme.of(context).textTheme.headline6,
        ),
      ),
      body: pageWidgetList[index],
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => print("点击"),
      ),
      drawer: Drawer(child: new DrawerLeft()),
      endDrawer: Container(
        color: Colors.red,
        width: 200,
        height: double.infinity,
        child: FlatButton(
          child: Text("关闭右菜单"),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      bottomNavigationBar: new BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: index == 0 ? Colors.blue : Colors.grey,
              ),
              title: Text(
                "首页",
                style: TextStyle(color: index == 0 ? Colors.blue : Colors.grey),
              )),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.email,
                color: index == 1 ? Colors.blue : Colors.grey,
              ),
              title: Text(
                "邮箱",
                style: TextStyle(color: index == 1 ? Colors.blue : Colors.grey),
              )),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.people,
                color: index == 2 ? Colors.blue : Colors.grey,
              ),
              title: Text(
                "我的",
                style: TextStyle(color: index == 2 ? Colors.blue : Colors.grey),
              ))
        ],
        onTap: (position) {
          index = position;
          if (position == 0) {
            titleText = "首页";
          } else if (position == 1) {
            titleText = "邮箱";
          } else if (position == 2) {
            titleText = "我的";
          }
          setState(() {});
        },
        currentIndex: index,
      ),
    );
  }
}

/*左边抽屉*/
class DrawerLeft extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => DrawerLeftState();
}

class DrawerLeftState extends State<DrawerLeft> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.only(),
      children: <Widget>[
        new UserAccountsDrawerHeader(
          accountName: Text("liu bin"),
          accountEmail: Text("474174309@qq.com"),
          currentAccountPicture: Icon(Icons.person),
          otherAccountsPictures: <Widget>[
            Icon(Icons.not_interested),
            Icon(Icons.work)
          ],
        ),

        ListTile(
            title: Text("宠物卡片"),
            leading: Icon(Icons.threed_rotation),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context).pushNamed('/router/petCard');
            }),
        ListTile(
            title: Text("朋友圈"),
            leading: Icon(Icons.folder),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.pushNamed(context, '/router/friendCircle');
            }),
        ListTile(
            title: Text("登录"),
            leading: Icon(Icons.gps_fixed),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.pushNamed(context, '/router/login');
            }),
        ListTile(
            title: Text("列表"),
            leading: Icon(Icons.threesixty),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.pushNamed(context, '/router/subscribe');
            }),
        ListTile(
            title: Text("控件"),
            leading: Icon(Icons.open_in_new),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context).pushNamed('/router/button');
            }),
        ListTile(
            title: Text("布局"),
            leading: Icon(Icons.transfer_within_a_station),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context).pushNamed('/router/absolute');
            }),

      ],
    );
  }
}

/*首页*/
class HomeItemPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => HomeItemPageState();
}

class HomeItemPageState extends State<HomeItemPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Home"),
      ),
    );
  }
}

/*邮箱*/
class EmailItemPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => EmailItemPageState();
}

class EmailItemPageState extends State<EmailItemPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Email'),
      ),
    );
  }
}

/*我的*/
class PeopleItemPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => PeopleItemPageState();
}

class PeopleItemPageState extends State<PeopleItemPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('People'),
      ),
    );
  }
}
