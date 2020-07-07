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
        children: [HYContentBody(), Text("同意协议")],
      ),
    );
  }
}

// flag:状态
// StatelessWidget不能定义状态-》创建一个单独的类，这个类负责维护状态
class HYContentBody extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return HYContentBodyState();
  }
}

class HYContentBodyState extends State<HYContentBody> {
  var flag = true;
  @override
  Widget build(BuildContext context) {
    return Checkbox(
        value: flag,
        onChanged: (value) {
          // setState 刷新页面的方法，只有实现了这个方法才会刷新页面和监听值的变化
          setState(() {
            this.flag = value;
            print(flag);
          });
        });
  }
}
