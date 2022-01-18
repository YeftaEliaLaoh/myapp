import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    title: "Halaman satu",
    home: Halamansatu(),
  ));
}

class Halamansatu extends StatelessWidget {
  const Halamansatu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Halaman satu"),
        ),
        body: Container(
            padding: const EdgeInsets.all(20.0),
            child: const Center(
              child: Text("Halaman satu"),
            )));
  }
}
