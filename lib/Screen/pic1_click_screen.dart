import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Pic1ClickScreen extends StatefulWidget {
  const Pic1ClickScreen({Key key}) : super(key: key);

  @override
  _Pic1ClickScreenState createState() => _Pic1ClickScreenState();
}

class _Pic1ClickScreenState extends State<Pic1ClickScreen> {
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
          'kostenloser',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Stack(
        children: <Widget>[
          WebView(
            key: _key,
            initialUrl: 'https://www.kostenloser-koran.de/',
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