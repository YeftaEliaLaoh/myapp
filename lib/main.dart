import 'dart:core';
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    title: "Halaman Utama",
    home: Myapp(),
  ));
}

// ignore: must_be_immutable
class Myapp extends StatefulWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  HalamanFormState createState() => HalamanFormState();
}

class HalamanFormState extends State {
  String jk = "";

  void _pilihjk(String value) {
    setState(() {
      jk = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Form"),
      ),
      body: Column(
        children: [
          RadioListTile(
            value: "L",
            title: const Text("Laki-laki"),
            groupValue: jk,
            activeColor: Colors.blue,
            subtitle: const Text("Pilih salah satu"),
            onChanged: (String? value) {
              _pilihjk(value!);
            },
          ),
          RadioListTile(
            value: "P",
            title: const Text("Perempuan"),
            groupValue: jk,
            onChanged: (String? value) {
              _pilihjk(value!);
            },
            activeColor: Colors.blue,
            subtitle: const Text("Pilih salah satu"),
          ),
        ],
      ),
    );
  }
}
