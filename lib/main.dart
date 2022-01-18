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
      body: SizedBox(
        height: 100.0,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            Container(
              width: 100.0,
              height: 100.0,
              color: Colors.blue,
            ),
            Container(
              width: 100.0,
              height: 100.0,
              color: Colors.green,
            ),
            Container(
              width: 100.0,
              height: 100.0,
              color: Colors.yellow,
            ),
            Container(
              width: 100.0,
              height: 100.0,
              color: Colors.blue,
            ),
            Container(
              width: 100.0,
              height: 100.0,
              color: Colors.green,
            ),
            Container(
              width: 100.0,
              height: 100.0,
              color: Colors.yellow,
            ),
            Container(
              width: 100.0,
              height: 100.0,
              color: Colors.blue,
            ),
            Container(
              width: 100.0,
              height: 100.0,
              color: Colors.green,
            ),
            Container(
              width: 100.0,
              height: 100.0,
              color: Colors.yellow,
            ),
          ],
        ),
      ),
    );
  }
}
