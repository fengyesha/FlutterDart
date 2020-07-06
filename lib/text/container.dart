import 'package:flutter/material.dart';

// void main() => runApp(MyApp());
void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Welcome to Flutter',
        home: Scaffold(
          appBar: AppBar(title: Text('Welcome to Flutter')),
          body: new Center(
            // child: Text(
            //   '由于展示逻辑（presentation logic）放在了view model中（比如model的值映射到一个格式化的字符串），视图控制器本身就会不再臃肿。当你开始使用MVVM的最好方式是，可以先将一小部分逻辑放入视图模型，然后当你逐渐习惯于使用这个范式的时候再迁移更多的逻辑到视图模型中。',
            //   textAlign: TextAlign.left,
            //   maxLines: 2,
            //   overflow: TextOverflow.ellipsis,
            //   style: TextStyle(
            //     fontSize: 25.0,
            //     color: Color.fromARGB(255, 211, 17, 69),
            //     decoration: TextDecoration.underline,
            //     decorationStyle: TextDecorationStyle.solid,
            //     decorationColor: Color.fromARGB(255, 23, 123, 150),
            //   ),
            // ),
            // Container
            // child: Container(
            //   child:new Text('当你开始使用MVVM的最好方式',style:TextStyle(fontSize:40.0,inherit: false)),
            //   alignment: Alignment.center,
            //   width: 200.0,
            //   height: 300.0,
            //   // color: Colors.lightBlue,
            //   padding: const EdgeInsets.fromLTRB(10.0, 100.0, 20.0, 0),
            //   margin: const EdgeInsets.all(20.0),
            //   decoration: new BoxDecoration(
            //     gradient:const LinearGradient(
            //       colors:[Colors.green,Colors.lightBlue,Colors.purple]
            //     ),
            //     border: Border.all(width:5.0,color:Colors.red)
            //   ),
            // ),
            // 图片
            child: Container(
              width: 300.0,
              height: 200.0,
              child: new Image.network(
                'http://blogimages.jspang.com/blogtouxiang1.jpg',
                fit: BoxFit.cover,
                // 混合模式
                // color: Colors.purple,
                // colorBlendMode: BlendMode.screen,
                // repeat 重复
                repeat: ImageRepeat.repeatY,
              ),
              // alignment: Alignment.centerLeft,
            ),
            // child: Column(
            //   crossAxisAlignment : CrossAxisAlignment.center,
            //   children: [
            //   Text(
            //     'inherit: 如果为false，则没有显式值的属性将恢复，它主要是默认设置font为10和color为白色，如果为true，默认设置font为10和color为黑色，如果设置了font和color，这个属性就没用了',
            //     style: TextStyle(
            //       fontSize: 18.0,
            //       color: Colors.redAccent,
            //       inherit: true,
            //     ),
            //   ),
            //   Text(
            //     'decoration 下划线的属性设置 overline为上划线 underline为下划线',
            //     style: TextStyle(
            //       fontSize: 28.0,
            //       decoration: TextDecoration.underline,
            //       decorationStyle: TextDecorationStyle.solid,
            //       decorationColor: Color.fromARGB(255, 23, 123, 150),
            //     ),
            //     ),
            //     Text(
            //     'fontWeight: 字重,字体厚度，也就是字体粗细 bold:w700 normal:w400',
            //     style: TextStyle(
            //         fontSize: 20.0,
            //         color: Colors.red[900],
            //         fontWeight: FontWeight.bold),
            //   ),
            //   Text(
            //     'TextAlign: 文字对齐方式，maxLines：最多显示多少行，overflow：省略文字显示方式',
            //     textAlign: TextAlign.left,
            //     // maxLines: 1,
            //     overflow: TextOverflow.ellipsis,
            //     style: TextStyle(
            //       fontSize: 40.0,
            //     ),
            //   ),
            //   Text('decoration: TextDecoration.lineThrough 删除线',
            //     style: TextStyle(
            //       decoration: TextDecoration.lineThrough,
            //       decorationStyle: TextDecorationStyle.dashed)
            //      ),
            //   Text(
            //     'letterSpacing: 字符间距,wordSpacing: 字或单词间距',
            //     style: new TextStyle(
            //       letterSpacing: 10.0,
            //       wordSpacing: 15.0
            //     ),
            //   ),
            //   //  Container(
            //   //     child:new Text('Container',style:TextStyle(fontSize:40.0,inherit: false)),
            //   //     alignment: Alignment.center,
            //   //     width: 200.0,
            //   //     height: 300.0,
            //   //     color: Colors.lightBlue,
            //   //   ),
            //   ],
            // ),
          ),
        ));
  }
}

// class HomeBody extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return new Container(
//         width: 400.0,
//         height: 200.0,
//         color: Colors.greenAccent,
//         child: new Text.rich(new TextSpan(
//           text: "one",
//           style: new TextStyle(
//             fontSize: 40.0,
//             color: Colors.green,
//             decoration: TextDecoration.underline,
//             decorationColor: Colors.purple,
//             decorationStyle: TextDecorationStyle.wavy,
//           ),
//           children: [
//             new TextSpan(
//               text: "TWO",
//               style: new TextStyle(
//                 fontSize: 40.0,
//                 color: Colors.green,
//                 decoration: TextDecoration.underline,
//                 decorationColor: Colors.purple,
//                 decorationStyle: TextDecorationStyle.wavy,
//               ),
//               recognizer: new TapGestureRecognizer()
//                 ..onTap = () =>
//                     Scaffold.of(context).showSnackBar(new SnackBar(
//                       content: new Text("TWO is tapped"),
//                     )),),
//             new TextSpan(
//               text: "THREE",
//               style: new TextStyle(
//                 fontSize: 40.0,
//                 color: Colors.black12,
//                 decoration: TextDecoration.overline,
//                 decorationColor: Colors.redAccent,
//                 decorationStyle: TextDecorationStyle.dashed,
//               ), recognizer: new LongPressGestureRecognizer()
//               ..onLongPress = () =>
//                   Scaffold.of(context).showSnackBar(new SnackBar(
//                     content: new Text("THREE is longpressed"),
//                   )),),
//             new TextSpan(
//                 text: "four",
//                 style: new TextStyle(
//                   fontSize: 40.0,
//                   color: Colors.green,
//                   decoration: TextDecoration.lineThrough,
//                   decorationColor: Colors.yellowAccent,
//                   decorationStyle: TextDecorationStyle.dotted,
//                 ),
//                 recognizer: new TapGestureRecognizer()
//                   ..onTap = () {
//                     var alert = new AlertDialog(
//                       title: new Text("Title"),
//                       content: new Text("four is tapped"),
//                     );
//                     showDialog(context: context, child: alert);
//                   }
//             )
//           ],
//           recognizer: new TapGestureRecognizer()
//             ..onTap = () =>
//                 Scaffold.of(context).showSnackBar(new SnackBar(
//                   content: new Text("one is tapped"),
//                 )),
//         ),)
//     );
//   }
// }
