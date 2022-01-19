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
        title: const Text("Flutter App"),
      ),
      body: Center(
        child: Container(
          height: 200.0,
          width: 200.0,
          decoration: BoxDecoration(
            color: Theme.of(context).primaryColor,
          ),
        ),
      ),
    );
  }
}
