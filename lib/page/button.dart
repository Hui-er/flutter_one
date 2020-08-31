import 'package:flutter/material.dart';

class ButtonPage extends StatefulWidget {
  ButtonPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _ButtonPageState createState() => _ButtonPageState();
}

class _ButtonPageState extends State<ButtonPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Button组件',
          style: Theme.of(context).textTheme.headline6,
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded(
              child: Row(
            children: <Widget>[
              Expanded(
                child: RaisedButton.icon(
                    onPressed: null,
                    icon: Icon(Icons.search),
                    label: Text("图标")),
              ),
              SizedBox(width: 10),
              Expanded(
                  child: RaisedButton(
                child: Text('有颜色'),
                color: Colors.blue,
                textColor: Colors.white,
                onPressed: () {
                  print('有颜色按钮');
                },
              )),
              SizedBox(width: 10),
              Expanded(
                  child: RaisedButton(
                      child: Text('有阴影'),
                      color: Colors.blue,
                      textColor: Colors.white,
                      elevation: 10,
                      onPressed: () {
                        print('有阴影按钮');
                      }))
            ],
          )),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                  child: Container(
                height: 50,
                width: 400,
                child: RaisedButton(
                  child: Text("宽度高度"),
                  color: Colors.blue,
                  textColor: Colors.white,
                  elevation: 20,
                  onPressed: null,
                ),
              ))
            ],
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                  child: Container(
                height: 60,
                margin: EdgeInsets.all(0),
                child: RaisedButton(
                  child: Text('自适应按钮'),
                  color: Colors.blue,
                  textColor: Colors.white,
                  elevation: 0,
                  onPressed: () {
                    print('自适应按钮');
                  },
                ),
              )),
              Expanded(
                  child: Container(
                height: 60,
                width: 100,
                child: RaisedButton(
                  child: Text("宽度高度"),
                  color: Colors.blue,
                  textColor: Colors.white,
                  elevation: 20,
                  onPressed: null,
                ),
              ))
            ],
          ),
        ],
      ),
    );
  }
}
