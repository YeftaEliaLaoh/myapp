import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State {
  void share(BuildContext context) {
    var url = "https://www.ets.org/toefl";
    RenderBox box = context.findRenderObject() as RenderBox;

    Share.share(url,
        subject: "Website",
        sharePositionOrigin: box.localToGlobal(Offset.zero) & box.size);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Plugin example app'),
          ),
          body: Center(
              child: ElevatedButton(
            child: const Text("Share"),
            onPressed: () {
              share(context);
            },
          ))),
    );
  }
}
