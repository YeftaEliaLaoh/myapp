import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    title: "My Apps",
    home: Myapp(),
  ));
}

class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("My Apps"),
        ),
        body: Container(
            padding: const EdgeInsets.all(20.0),
            child: Container(
                alignment: const Alignment(0, 0),
                width: 300.0,
                height: 100.0,
                color: Colors.blue,
                child: Image.asset(
                  'image01.jpg',
                  width: 300.0,
                ))));
  }
}
