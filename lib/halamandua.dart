import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    title: "Halaman dua",
    home: Halamandua(),
  ));
}

class Halamandua extends StatelessWidget {
  const Halamandua({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Halaman dua"),
        ),
        body: Container(
            padding: const EdgeInsets.all(20.0),
            child: const Center(
              child: Text("Halaman dua"),
            )));
  }
}
