import 'dart:convert';
import 'package:crypto/crypto.dart';
import 'package:flutter/material.dart';

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
    var tgl = DateTime.now();
    var bytes = utf8.encode(tgl.toString());
    var hashed = md5.convert(bytes);
    return Scaffold(
      appBar: AppBar(
        title: const Text("DateTime Flutter"),
      ),
      body: Center(
        child: Text("Tanggal : " + hashed.toString()),
      ),
    );
  }
}
