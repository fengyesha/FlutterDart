import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'columnWidget',
      home: Scaffold(
        appBar: AppBar(
          title: Text('垂直布局'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Text('i am ioser'),
            ),
            Text('i am ioser'),
            Text('data'),
            Text('data'),
          ],
        ),
      ),
    );
  }
}