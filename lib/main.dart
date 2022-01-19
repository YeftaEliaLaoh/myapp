import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(const MaterialApp(
    title: "My Apps",
    home: Halaman(),
  ));
}

class Halaman extends StatelessWidget {
  const Halaman({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final nominal = NumberFormat("#,##0.00", "en_US");
    int uang = 2300000;

    return Scaffold(
      appBar: AppBar(
        title: const Text("nominal Flutter"),
      ),
      body: Center(
        child: Text("nominal : " + nominal.format(uang)),
      ),
    );
  }
}
