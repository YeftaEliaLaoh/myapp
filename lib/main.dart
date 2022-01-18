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
      body: GridView.count(
        crossAxisCount: 2,
        children: [
          Container(
            margin: const EdgeInsets.all(20.0),
            alignment: Alignment.center,
            color: Colors.blue,
            child: const Text(
              "1",
              style: TextStyle(color: Colors.white, fontSize: 30.0),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(20.0),
            alignment: Alignment.center,
            color: Colors.blue,
            child: const Text(
              "2",
              style: TextStyle(color: Colors.white, fontSize: 30.0),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(20.0),
            alignment: Alignment.center,
            color: Colors.blue,
            child: const Text(
              "3",
              style: TextStyle(color: Colors.white, fontSize: 30.0),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(20.0),
            alignment: Alignment.center,
            color: Colors.blue,
            child: const Text(
              "4",
              style: TextStyle(color: Colors.white, fontSize: 30.0),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(20.0),
            alignment: Alignment.center,
            color: Colors.blue,
            child: const Text(
              "5",
              style: TextStyle(color: Colors.white, fontSize: 30.0),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(20.0),
            alignment: Alignment.center,
            color: Colors.blue,
            child: const Text(
              "6",
              style: TextStyle(color: Colors.white, fontSize: 30.0),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(20.0),
            alignment: Alignment.center,
            color: Colors.blue,
            child: const Text(
              "7",
              style: TextStyle(color: Colors.white, fontSize: 30.0),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(20.0),
            alignment: Alignment.center,
            color: Colors.blue,
            child: const Text(
              "8",
              style: TextStyle(color: Colors.white, fontSize: 30.0),
            ),
          )
        ],
      ),
    );
  }
}
