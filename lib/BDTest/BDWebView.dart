import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewPage extends StatefulWidget {
  final String url;
  WebViewPage({Key key, @required this.url}) : super(key: key);
  @override
  _WebViewPageState createState() =>
      _WebViewPageState.withURL(url: url, title: url);
}

class _WebViewPageState extends State<WebViewPage> {
  WebViewController _controller;
  var url;
  var title;
  var lineProgress;
  bool isLoading = true; // 设置状态
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        child: Scaffold(
          appBar: AppBar(
            title: Text(title),
            actions: <Widget>[
              IconButton(
                onPressed: () {
                  print('refresh');
                  _controller.loadUrl(this.url);
                },
                icon: Icon(Icons.refresh),
              ),
            ],
            bottom: PreferredSize(
                child: _progressBar(lineProgress, context),
                preferredSize: Size.fromHeight(2.0)),
          ),
          body: Center(
            child: Stack(
              children: [
                WebView(
                  javascriptMode: JavascriptMode.unrestricted,
                  initialUrl: url,
                  onWebViewCreated: (controller) {
                    _controller = controller;
                  },
                  onPageFinished: (String url) {
                    setState(() {
                      isLoading = false; // 页面加载完成，更新状态
                    });
                  },
                  navigationDelegate: (NavigationRequest request) {
                    setState(() {
                      this.title = request.url;
                      isLoading = true; // 开始访问页面，更新状态
                    });
                    if (request.url.startsWith("myapp://")) {
                      print("即将打开 ${request.url}");
                      return NavigationDecision.prevent;
                    } else {
                      print("即将打开 ${request.url}");
                      return NavigationDecision.navigate;
                    }
                  },
                ),
                isLoading
                    ? Container(
                        child: Center(
                          child: CircularProgressIndicator(),
                        ),
                      )
                    : Container(),
              ],
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

  _WebViewPageState.withURL({@required this.url, String title})
      : this.title = title ?? url;
}

_progressBar(double progress, BuildContext context) {
  return LinearProgressIndicator(
    backgroundColor: Colors.white70.withOpacity(0),
    value: progress == 1.0 ? 0 : progress,
    valueColor: new AlwaysStoppedAnimation<Color>(Colors.blue),
  );
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
