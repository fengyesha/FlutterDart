import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Row Widget',
      home: Scaffold(
        appBar: AppBar(title: Text('水平方向布局')),
        body: new Row(
          children: <Widget>[
            new RaisedButton(
                onPressed: () {
                  print('red');
                },
                color: Colors.red,
                child: new Text('red')),
            Expanded(
                child: new RaisedButton(
                    onPressed: () {
                      print('green');
                    },
                    color: Colors.green,
                    child: new Text('green'))),
            new RaisedButton(
                onPressed: () {
                  print('lightBlue');
                },
                color: Colors.lightBlue,
                child: new Text('lightBlue')),
            Expanded(
                child: new RaisedButton(
                    onPressed: () {
                      print('yellow');
                    },
                    color: Colors.yellow,
                    child: new Text('yellow'))),
          ],
        ),
      ),
    );
  }
}
