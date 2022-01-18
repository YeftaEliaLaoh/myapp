import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    title: "Halaman lain",
    home: Halamanlain(),
  ));
}

class Halamanlain extends StatelessWidget {
  const Halamanlain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Halaman Lain"),
      ),
    );
  }
}
