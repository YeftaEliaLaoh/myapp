import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
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
    var today = DateTime.now();
    var formatedTanggal = DateFormat.yMMMd().format(today);
    return Scaffold(
      appBar: AppBar(
        title: const Text("DateTime Flutter"),
      ),
      body: Center(
        child: Text("Tanggal : " + formatedTanggal.toString()),
      ),
    );
  }
}
