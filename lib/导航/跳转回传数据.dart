import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    title: '页面跳转返回数据',
    home: FirstPage(),
  ));
}

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('回传数据')),
      body: RouteButton(),
    );
  }
}

class RouteButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text('跳转'),
      onPressed: () {
        _navigatorToNextPage(context);
      },
    );
  }
}

_navigatorToNextPage(BuildContext context) async {
  final result = await Navigator.push(
      context, MaterialPageRoute(builder: (context) => NextPage()));
  Scaffold.of(context).showSnackBar(SnackBar(content: Text('$result'),));
}

class NextPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('第二页'),
      ),
      body: Center(
        child: Column(
          children: [
            RaisedButton(
              child: Text('i am ioser'),
              onPressed: () {
                Navigator.pop(context, 'i am ioser');
              },
            ),
            RaisedButton(
              child: Text('i am flutter'),
              onPressed: () {
                Navigator.pop(context, 'i am flutter');
              },
            ),
          ],
        ),
      ),
    );
  }
}
