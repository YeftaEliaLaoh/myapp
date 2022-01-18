import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    title: "Halaman Utama",
    home: Halamancarousell(),
  ));
}

class Halamancarousell extends StatelessWidget {
  const Halamancarousell({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Halaman Utama"),
      ),
      body: const Padding(
        padding: EdgeInsets.all(8.0),
        child: Card(child: Text('Hello World!')),
      ),
    );
  }
}
