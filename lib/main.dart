import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    title: "Halaman",
    home: Halaman(),
  ));
}

class Halaman extends StatelessWidget {
  const Halaman({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Halaman Demo'),
      ),
      body: Container(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          children: [
            Container(
              padding: const EdgeInsets.all(10.0),
              child: const Text("List 1"),
            ),
            Container(
              padding: const EdgeInsets.all(10.0),
              child: const Text("List 2"),
            ),
            ListView(
              shrinkWrap: true,
              children: [
                Container(
                  padding: const EdgeInsets.all(10.0),
                  child: const Text("List 2.1"),
                ),
                Container(
                  padding: const EdgeInsets.all(10.0),
                  child: const Text("List 2.2"),
                ),
              ],
            ),
            Container(
              padding: const EdgeInsets.all(10.0),
              child: const Text("List 3"),
            ),
            Container(
              padding: const EdgeInsets.all(10.0),
              child: const Text("List 4"),
            ),
          ],
        ),
      ),
    );
  }
}
