import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Pic3ClickScreen extends StatefulWidget {
  const Pic3ClickScreen({Key key}) : super(key: key);

  @override
  _Pic3ClickScreenState createState() => _Pic3ClickScreenState();
}

class _Pic3ClickScreenState extends State<Pic3ClickScreen> {
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
          'Quran lernen',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Stack(
        children: <Widget>[
          WebView(
            key: _key,
            initialUrl: 'http://www.quran-lernen.de/',
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