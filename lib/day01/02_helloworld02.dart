import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HYHomePage(),
    );
  }
}

// scaffold 脚手架 快速搭建页面
// 一条语句结束之后写；
// 属性之间写，
class HYHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("data"),
      ),
      body: HYHomeBody(),
    );
  }
}

/*
 * widget :
 * 有状态的widget：在运行过程中有一些状态（data）需要改变
 * 无状态的widget：StatelessWidget 内容是确定没有状态（data）的改变
 */
class HYHomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Hello world",
        style: TextStyle(
          color: Colors.green,
          fontSize: 60.0,
        ),
      ),
    );
  }
}
