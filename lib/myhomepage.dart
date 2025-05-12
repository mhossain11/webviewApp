
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key,});



  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late final WebViewController _controller;

  @override
  void initState() {
    super.initState();
    _controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..loadRequest(Uri.parse('https://mrwireless.shop'));
    //Or
   // _controller.setJavaScriptMode(JavaScriptMode.unrestricted);
   // _controller.loadRequest(Uri.parse('https://mrwireless.shop'));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:SafeArea(child: WebViewWidget(controller: _controller))
    );
  }
}