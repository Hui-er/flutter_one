import 'package:flutter/material.dart';
import 'package:flutter_one/page/button.dart';
import 'package:flutter_one/page/container.dart';
import 'package:flutter_one/page/login.dart';
import 'package:flutter_one/page/petCart.dart';
import 'package:flutter_one/page/subscribe_account.dart';
import 'absolute.dart';
import 'data_mock.dart';
import 'friendCircle.dart';
import 'home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(title: 'Bin'),
      routes: <String, WidgetBuilder>{
        '/router/container': (_) => new ContainerPage(),
        '/router/login': (_) => new LoginPage(),
        '/router/button': (_) => new ButtonPage(),
        '/router/absolute': (_) => new AbsolutePage(),
        '/router/petCard': (_) => new PetCard(data: petCardData),
        '/router/friendCircle': (_) => new FriendCircle(data: friendCircleData),
        '/router/subscribe': (_) => new SubscribeAccountCard(data: subscribeAccount),
      },
    );
  }
}
