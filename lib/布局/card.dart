import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var card = Card(
      child: Column(
        children: [
          ListTile(
            title: Text('上海市黄埔区',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                )),
            subtitle: Text('i am ioser'),
            leading:new Icon(Icons.account_box,color:Colors.lightBlue),
          ),
          new Divider(
            color: Colors.red,
          ),
          ListTile(
            title: Text('上海市黄埔区',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                )),
            subtitle: Text('i am ioser'),
            leading:new Icon(Icons.account_box,color:Colors.lightBlue),
          ),
          new Divider(
            color: Colors.green,
          ),
          ListTile(
            title: Text('上海市黄埔区',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                )),
            subtitle: Text('i am ioser'),
            leading:new Icon(Icons.account_box,color:Colors.lightBlue),
          ),
        ],
      ),
    );
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Card布局')),
        body: card,
      )
    );
  }
}
