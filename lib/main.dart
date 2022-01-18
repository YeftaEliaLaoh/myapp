import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    title: "Halaman Utama",
    home: Halamannav(),
  ));
}

class Halamannav extends StatefulWidget {
  const Halamannav({Key? key}) : super(key: key);

  @override
  _HalamannavState createState() => _HalamannavState();
}

class _HalamannavState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Stack"),
      ),
      body: Stack(
        children: [
          Container(
            color: Colors.green,
          ),
          Container(
            color: Colors.red,
            height: 200.0,
            width: 200.0,
          ),
          Positioned(
            right: 50.0,
            top: 50.0,
            child: Container(
              color: Colors.teal,
              height: 150.0,
              width: 150.0,
            ),
          )
        ],
      ),
    );
  }
}
