import 'package:flutter/material.dart';
import './halamankedua.dart';

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
        title: const Text("Halaman Utama"),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text("Ke Halaman Kedua"),
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (BuildContext context) => const Halamankedua()));
          },
        ),
      ),
    );
  }
}
