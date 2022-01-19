import 'package:flutter/material.dart';

class Halaman extends StatelessWidget {
  const Halaman({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String kalimat =
        "Belajar Mobile-App Flutter hari ini pukul 08:10".replaceAll('e', 'x');

    return Scaffold(
      appBar: AppBar(
        title: const Text("DateTime Flutter"),
      ),
      body: Center(child: Text("hasil : " + kalimat)),
    );
  }
}
