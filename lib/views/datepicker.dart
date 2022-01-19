import 'package:flutter/material.dart';

class Halaman extends StatelessWidget {
  const Halaman({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String tulisan = "Single quotes in double quotes".substring(3, 10);

    return Scaffold(
      appBar: AppBar(
        title: const Text("DateTime Flutter"),
      ),
      body: Center(child: Text("hasil : " + tulisan)),
    );
  }
}
