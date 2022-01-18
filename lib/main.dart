// ignore_for_file: import_of_legacy_library_into_null_safe

import 'package:flutter/material.dart';
import 'package:koukicons/home.dart';
import 'package:koukicons/gift.dart';
import 'package:koukicons/pin.dart';

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
        title: const Text("Carousel"),
      ),
      body: Column(
        children: [
          KoukiconsHome(),
          KoukiconsGift(height: 100.0),
          KoukiconsPin(width: 70.0, color: Colors.red),
        ],
      ),
    );
  }
}
