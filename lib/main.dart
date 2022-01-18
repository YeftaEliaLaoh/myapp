import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
      body: const Icon(FontAwesomeIcons.gamepad),
    );
  }
}
