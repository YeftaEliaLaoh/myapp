import 'package:flutter/material.dart';
import 'drawer.dart';

void main() {
  runApp(const MaterialApp(
    title: "Halaman Utama",
    home: Myapp(),
  ));
}

class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Drawer"),
      ),
      drawer: const DrawerApp(),
      body: const Center(
        child: Text("hello drawer"),
      ),
    );
  }
}
