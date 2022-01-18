// ignore_for_file: import_of_legacy_library_into_null_safe

import 'package:flutter/material.dart';
import 'package:badges/badges.dart';

void main() {
  runApp(const MaterialApp(
    title: "Halaman Utama",
    home: Halamanhalaman(),
  ));
}

class Halamanhalaman extends StatelessWidget {
  const Halamanhalaman({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Halaman"),
      ),
      body: Badge(
        badgeColor: Colors.deepPurple,
        shape: BadgeShape.square,
        borderRadius: BorderRadius.circular(10),
        toAnimate: false,
        badgeContent: const Text(
          "OPEN",
          style: TextStyle(
              fontSize: 10.0, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
    );
  }
}
