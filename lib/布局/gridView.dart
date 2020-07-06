import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: new AppBar(title: Text('GridView')),
        body: new GridView.count(
          padding: EdgeInsets.all(20.0),
          crossAxisSpacing: 10.0,
          mainAxisSpacing: 10.0,
          crossAxisCount: 3,
          childAspectRatio: 1.0,
          children: [
           new Image.network('http://cc.cocimg.com/api/uploads/200623/abde015645f545fa884e3391a70eb9c7.png',fit: BoxFit.cover,),
           new Image.network('http://cc.cocimg.com/api/uploads/200623/abde015645f545fa884e3391a70eb9c7.png',fit: BoxFit.cover,),
           new Image.network('http://cc.cocimg.com/api/uploads/200623/abde015645f545fa884e3391a70eb9c7.png',fit: BoxFit.cover,),
           new Image.network('http://cc.cocimg.com/api/uploads/200623/abde015645f545fa884e3391a70eb9c7.png',fit: BoxFit.cover,),
           new Image.network('http://cc.cocimg.com/api/uploads/200623/abde015645f545fa884e3391a70eb9c7.png',fit: BoxFit.cover,),
           new Image.network('http://cc.cocimg.com/api/uploads/200623/abde015645f545fa884e3391a70eb9c7.png',fit: BoxFit.cover,),
           new Image.network('http://cc.cocimg.com/api/uploads/200623/abde015645f545fa884e3391a70eb9c7.png',fit: BoxFit.cover,),
          ],
        ),
      ),
    );
  }
}
