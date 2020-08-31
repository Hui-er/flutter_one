import 'package:flutter/material.dart';

class ContainerPage extends StatefulWidget {
  ContainerPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _ContainerPageState createState() => _ContainerPageState();
}

class _ContainerPageState extends State<ContainerPage> {
  _click() {
    Navigator.of(context).pushNamed('/router/login');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Container',
          style: Theme.of(context).textTheme.headline6,
        ),
      ),
      body: Center(
        child: Container(
          alignment: Alignment.center,
          color: Color.fromARGB(0, 0, 0, 0),
          child: GestureDetector(
            child: Text(
              "Container",
              style: TextStyle(fontSize: 30.0, color: Colors.red),
            ),
            onTap: _click,
          ),
        ),
      ),
    );
  }
}
