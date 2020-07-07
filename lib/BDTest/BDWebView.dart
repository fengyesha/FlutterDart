import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewPage extends StatefulWidget {
  final String url;
  WebViewPage({Key key, @required this.url}) : super(key: key);
  @override
  _WebViewPageState createState() => _WebViewPageState.withURL(url: url);
}

class _WebViewPageState extends State<WebViewPage> {
  WebViewController _controller;
  var url;
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        child: Scaffold(
          appBar: AppBar(
            title: Text(url),
            actions: <Widget>[
              IconButton(
                onPressed: () {
                  print('refresh');
                  _controller.loadUrl(this.url);
                },
                icon: Icon(Icons.refresh),
              ),
            ],
          ),
          body: Center(
            child: WebView(
              javascriptMode: JavascriptMode.unrestricted,
              initialUrl: url,
              onWebViewCreated: (controller) {
                _controller = controller;
              },
              navigationDelegate: (NavigationRequest request) {
                setState(() {
                  this.url = request.url;
                });
              if(request.url.startsWith("myapp://")) {
                print("即将打开 ${request.url}");
                return NavigationDecision.prevent;
              }
              else{
                print("即将打开 ${request.url}");
                return NavigationDecision.navigate;
              }
            } ,
            ),
          ),
        ),
        onWillPop: () {
          _controller.canGoBack().then((value) {
            if (value) {
              _controller.goBack();
            } else {
              return Navigator.pop(context);
            }
          });
          return new Future.value(false);
        });
  }

  _WebViewPageState.withURL({@required this.url});
}

class ProductDetail extends StatelessWidget {
  final String url;
  ProductDetail({Key key, @required this.url}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        child: Scaffold(
          appBar: AppBar(
            title: Text(url),
            actions: <Widget>[
              IconButton(
                onPressed: () {
                  print('refresh');
                },
                icon: Icon(Icons.refresh),
              ),
            ],
          ),
          body: Center(
            child: WebView(
              javascriptMode: JavascriptMode.unrestricted,
              initialUrl: url,
            ),
          ),
        ),
        onWillPop: () {
          return new Future.value(false);
        });
  }
}
