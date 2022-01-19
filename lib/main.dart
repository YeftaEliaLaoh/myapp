import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main() {
  runApp(const CupertinoApp(
    title: "My Apps",
    home: Myapp(),
  ));
}

class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        resizeToAvoidBottomInset: true,
        navigationBar: const CupertinoNavigationBar(
          middle: Text("IOS Style"),
        ),
        child: Container(
            padding: const EdgeInsets.all(20.0),
            child: const Center(
              child: Text("Hello World", style: TextStyle(color: Colors.white)),
            )));
  }
}
