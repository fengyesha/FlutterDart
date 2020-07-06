import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var stack = new Stack(
      children: [
        new CircleAvatar(
          backgroundImage: new NetworkImage(
              'http://cc.cocimg.com/api/uploads/200623/abde015645f545fa884e3391a70eb9c7.png'),
          radius: 100.0,
        ),
        new Positioned(
          left: 0.0,
          top: 0.0,
          right: 10.0,
          bottom: 0.0,
          child: Container(
            color: Colors.lightBlue,
          ),
        ),
        new Positioned.fromRect(
          child: Container(
            color: Colors.green,
          ),
          rect: Rect.fromLTWH(0, 50.0, 10.0, 20.0),
        )
      ],
    );
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('')),
        body: stack,
      ),
    );
  }
}
