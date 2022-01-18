import 'package:flutter/material.dart';
import './halamanlain.dart';

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
      body: Container(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          children: [
            GestureDetector(
              onTap: () {
                Route route = MaterialPageRoute(
                    builder: (context) => const Halamanlain());
                Navigator.push(context, route);
              },
              child: Card(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Image(
                      image: NetworkImage(
                          "https://www.w3schools.com/w3css/img_lights.jpg"),
                    ),
                    Container(
                      padding: const EdgeInsets.all(10.0),
                      child: const Text("Flutter Tutorial 01"),
                    )
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Route route = MaterialPageRoute(
                    builder: (context) => const Halamanlain());
                Navigator.push(context, route);
              },
              child: Card(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Image(
                      image: NetworkImage(
                          "https://www.w3schools.com/w3css/img_lights.jpg"),
                    ),
                    Container(
                      padding: const EdgeInsets.all(10.0),
                      child: const Text("Flutter Tutorial 02"),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
