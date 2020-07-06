import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var stack = new Stack(
      // 对齐方式
      alignment: FractionalOffset(0.5, 1),
      children: [
        new CircleAvatar(
        backgroundImage: new NetworkImage('http://cc.cocimg.com/api/uploads/200623/abde015645f545fa884e3391a70eb9c7.png'),
        radius: 100.0,
        ),
        new Container(
          decoration: BoxDecoration(
            color:Colors.lightBlue,
          ),
          padding: EdgeInsets.all(5.0),
          child: Text('i am ioser'),
        ),
      ],
    );
    return MaterialApp(
      title: 'Stack布局',
      home: Scaffold(
        appBar: AppBar(
          title: new Text('Stack布局'),
        ),
        body: Center(
          child:stack,
        ),
      ),
    );
  }
}
