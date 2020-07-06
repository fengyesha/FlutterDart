import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MaterialApp(title: '导航演示01', home: FirstScreen()));
}

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('导航页面'),
        ),
        body: Center(
            child: RaisedButton(
          child: Text('跳转'),
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SecondScreen(),
                ));
          },
        )));
  }
}

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('第二页'),
      ),
      body: Center(
        child: RaisedButton(
            child: Text('返回'),
            onPressed: () {
              Navigator.pop(context);
            }),
      ),
    );
  }
}