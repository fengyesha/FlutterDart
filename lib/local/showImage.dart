import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    home: ShowImage(),
  ));
}

class ShowImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('展示图片')),
      body: Container(
        color: Colors.lightBlue,
        child: Image.asset('lib/images/logo.png'),
      ),
    );
  }
}