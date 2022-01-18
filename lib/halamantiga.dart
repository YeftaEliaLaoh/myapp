import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    title: "Halaman tiga",
    home: Halamantiga(),
  ));
}

class Halamantiga extends StatelessWidget {
  const Halamantiga({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Halaman tiga"),
        ),
        body: Container(
            padding: const EdgeInsets.all(20.0),
            child: const Center(
              child: Text("Halaman tiga"),
            )));
  }
}
