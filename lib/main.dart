import 'package:flutter/material.dart';
import 'drawer.dart';

void main() {
  runApp(const MaterialApp(
    title: "Halaman Utama",
    home: Myapp(),
  ));
}

// ignore: must_be_immutable
class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var tgl = DateTime.now();
    return Scaffold(
      appBar: AppBar(
        title: const Text("DateTime Flutter"),
      ),
      body: Center(
        child: Text("Tanggal : " + tgl.toString()),
      ),
    );
  }
}
