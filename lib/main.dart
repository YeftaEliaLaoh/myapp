import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    title: "Halaman Utama",
    home: Halamansafearea(),
  ));
}

class Halamansafearea extends StatelessWidget {
  const Halamansafearea({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Halaman SafeArea"),
        ),
        body: SafeArea(
          bottom: true,
          top: true,
          right: true,
          left: true,
          child: Container(
            padding: const EdgeInsets.all(10.0),
            child: ListView(
                children:
                    List.generate(50, (i) => Text("This is Text number $i"))),
          ),
        ));
  }
}
