import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Pic2ClickScreen extends StatefulWidget {
  const Pic2ClickScreen({Key key}) : super(key: key);

  @override
  _Pic2ClickScreenState createState() => _Pic2ClickScreenState();
}

class _Pic2ClickScreenState extends State<Pic2ClickScreen> {
  bool isLoading=true;
  final _key = UniqueKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text(
          'Muslim Werden',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Stack(
        children: <Widget>[
          WebView(
            key: _key,
            initialUrl: 'http://www.muslim-werden.de/',
            javascriptMode: JavascriptMode.unrestricted,
            onPageFinished: (finish) {
              setState(() {
                isLoading = false;
              });
            },
          ),
          isLoading ? Center( child: CircularProgressIndicator(),)
              : Stack(),
        ],
      ),
    );
  }
}