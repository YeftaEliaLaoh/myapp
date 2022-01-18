import 'package:flutter/material.dart';
import './main.dart';

void main() {
  runApp(const MaterialApp(
    title: "My Apps",
    home: Halamankedua(),
  ));
}

class Halamankedua extends StatelessWidget {
  const Halamankedua({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Halaman Kedua"),
      ),
      body: Column(
        children: [
          Text(),
          ElevatedButton(
            child: const Text("Ke Halaman Utama"),
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => const Myapp()));
            },
          ),
        ],
      ),
    );
  }
}
