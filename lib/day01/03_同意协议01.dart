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

/**
 * widget :
 * 有状态的widget：在运行过程中有一些状态（data）需要改变
 * 无状态的widget：StatelessWidget 内容是确定没有状态（data）的改变
 */
/**
 * @required flutter中某一些的命名属性，通过这个注解标注这个属性是必传的
 * @immutable 这个注解标注了，就说明这个类中的所有属性必须是不可变的
 */
class HYHomeBody extends StatelessWidget {
  // 在这个地方写var是错误的
  // var flag = true;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Checkbox(
              value: true,
              onChanged: (value) {
                print(value);
              }),
          Text("同意协议"")
        ],
      ),
    );
  }
}
