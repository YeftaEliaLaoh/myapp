import 'dart:async';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class HalamanUtama extends StatelessWidget {
  final String selectedUrl;

  final Completer _controller = Completer();

  HalamanUtama({
    Key? key,
    required this.selectedUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(selectedUrl),
      ),
      body: WebView(
        initialUrl: selectedUrl,
        javascriptMode: JavascriptMode.unrestricted,
        onWebViewCreated: (WebViewController webViewController) {
          _controller.complete(webViewController);
        },
      ),
    );
  }
}
