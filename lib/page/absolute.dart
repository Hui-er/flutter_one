import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AbsolutePage extends StatefulWidget {
  AbsolutePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _AbsolutePageState createState() => _AbsolutePageState();
}

class _AbsolutePageState extends State<AbsolutePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Absolute"),
        centerTitle: true,
      ),
      body: Container(
        height: 100,
        color: Colors.yellow,
        child: Stack(
          children: <Widget>[
            Positioned(
                left: 10,
                top: 10,
                child: Container(
                  width: 10,
                  height: 20,
                  color: Colors.red,
                )),
            Positioned(
              right: 10,
              top: 10,
              child: Container(
                width: 10,
                height: 10,
                color: Colors.blue,
              ),
            ),
            Positioned(
              bottom: 10,
              left: 10,
              child: Container(
                width: 250,
                height: 40,
                color: Colors.grey,
                child: Text(
                  "我们中国人我们中国人我们中国人我们我们中国人我们中国人我们",
                  textAlign: TextAlign.center,
                  maxLines: 2,
                  overflow: TextOverflow.clip,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
