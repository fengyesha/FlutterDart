import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

// scaffold 脚手架 快速搭建页面
// 一条语句结束之后写；
// 属性之间写，
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("data"),
      ),
      body: HYHomePage(),
    );
  }
}

/**
 * widget :
 * 有状态的widget：在运行过程中有一些状态（data）需要改变
 * 无状态的widget：StatelessWidget 内容是确定没有状态（data）的改变
 */
class HYHomePage extends StatelessWidget {
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
/**
 * 不断的合理拆分
 * 1.形成的是一个widget树
 * 2.组件化开发的实现
 */