import 'package:flutter/material.dart';
import 'BDTest/BDWebView.dart';
import 'package:flutter/services.dart';

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
        title: Text("蓝鹿测试"),
      ),
      body: HYContentBody(),
    );
  }
}

// flag:状态
// StatelessWidget不能定义状态-》创建一个单独的类，这个类负责维护状态
class HYContentBody extends StatefulWidget {
  final stateBody = HYContentBodyState();
  @override
  State<StatefulWidget> createState() {
    return stateBody;
  }
}

class HYContentBodyState extends State<HYContentBody> {
  var textUrl = new TextEditingController();
  @override
  void initState() {
    super.initState();
    Clipboard.getData(Clipboard.kTextPlain).then((value) => () {
          print(value.text);
          this.textUrl.text = value.text;
        });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: new Stack(children: [
        Positioned(
          child: Container(
            child: TextField(
              decoration: InputDecoration(
                  hintText: "请输入网址",
                  border: OutlineInputBorder(),
                  hoverColor: Colors.red,
                  hintStyle: TextStyle(
                    color: Color.fromARGB(255, 85, 67, 68),
                  )),
              onChanged: (text) {
                this.textUrl.text = text;
              },
              controller: this.textUrl,
              onEditingComplete: () {
                //输入完成时，配合TextInputAction.done使用
                print("输入完成时");
              },
              onSubmitted: (text) {
                //提交时,配合TextInputAction
                print("onSubmitted" + text);
              },
            ),
          ),
          left: 0.0,
          right: 0.0,
          top: 0.0,
          height: 60.0,
        ),
        Positioned(
            left: 0,
            right: 0.0,
            top: 80.0,
            height: 40.0,
            child: Center(
              child: RaisedButton(
                  onPressed: () {
                    FocusScope.of(context).requestFocus(FocusNode());
                    if (isURL(this.textUrl.text)) {
                      print(this.textUrl.text);
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (contex) =>
                                  WebViewPage(url: this.textUrl.text)));
                    } else {
                      print("不是网址");
                    }
                  },
                  color: Colors.lightBlue,
                  textTheme: ButtonTextTheme.primary,
                  child: Text("跳转",
                      style: TextStyle(color: Colors.white, fontSize: 20.0))),
            )),
      ]),
    );
  }
}

bool isURL(String input) {
  RegExp mobile = new RegExp(r"[a-zA-z]+://.*$");
  return mobile.hasMatch(input);
}
