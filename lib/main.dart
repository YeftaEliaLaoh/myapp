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
      body: Row(
        children: [
          Container(
            color: Colors.blue,
            padding: const EdgeInsets.all(20.0),
            child: const Icon(
              Icons.home,
              size: 70.0,
              color: Colors.white,
            ),
          ),
          Container(
            padding: const EdgeInsets.all(20.0),
            child: const Icon(
              Icons.people,
              size: 70.0,
            ),
          ),
          Container(
              padding: const EdgeInsets.all(20.0),
              child: const Icon(
                Icons.search,
                size: 70.0,
              )),
        ],
      ),
    );
  }
}
