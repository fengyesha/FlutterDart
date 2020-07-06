import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp(
    items: new List<String>.generate(100, (i) => "item $i"),
  ));
}

class MyApp extends StatelessWidget {
  final List<String> items;
  MyApp({Key key, @required this.items}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: new AppBar(
          title: new Text('List'),
        ),
        body: new ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            return new Container(
              width: 50.0,
              height: 100.0,
              // color: Color.fromARGB(255, 100 + index, 100 + index, 100 + index),
              child: new Text(
                '${items[index]}',
                style: TextStyle(color: Colors.red),
              ),
            );
          },
        ),
      ),
    );
  }
}
// void main(List<String> args) {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//           appBar: new AppBar(
//             title: new Text('ListView'),
//           ),
//           body: Container(
//             height: 200.0,
//             width: 200.0,
//             child: MyList(),
//           )),
//     );
//   }
// }

// class MyList extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return new ListView(
//       scrollDirection: Axis.vertical,
//       children: [
//         new Container(
//           height: 120.0,
//           color: Colors.lightBlue,
//         ),
//         new Container(
//           height: 120.0,
//           color: Colors.green,
//         ),
//         new Container(
//           height: 180.0,
//           color: Colors.purple,
//         ),
//         new Container(
//           height: 180.0,
//           color: Colors.orange,
//         ),
//         new Container(
//           height: 180.0,
//           color: Colors.yellow,
//         ),
//         new Container(
//           height: 180.0,
//           color: Colors.red,
//         ),
//         new Container(
//           height: 180.0,
//           color: Colors.black,
//         ),
//       ],
//     );
//   }
// }
// new ListView(
//           children:<Widget>[
//             new ListTile(
//               leading:new Image.network('http://cc.cocimg.com/api/uploads/200623/abde015645f545fa884e3391a70eb9c7.png'),
//               // title: new Text('perm_camera_mic'),
//             ),
//             new ListTile(
//               leading:new Image.network('http://cc.cocimg.com/api/uploads/200623/81fcc4c8c9d7f59316b9bf7ed785f264.png'),
//               // title: new Text('perm_camera_mic'),
//             ),
//             new ListTile(
//               leading:new Image.network('http://cc.cocimg.com/api/uploads/200623/01d8835d82e72882835c41b43d56d1ae.png'),
//               // title: new Text('perm_camera_mic'),
//             ),
//             new ListTile(
//               leading:new Image.network('https://cocoachina.oss-cn-beijing.aliyuncs.com/article/202006271139048200'),
//             )
//           ],
//         ),
