import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    title: "My Apps",
    home: Myapp(),
  ));
}

class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Apps"),
      ),
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            child: Row(
              children: [
                Container(
                  width: 100.0,
                  height: 100.0,
                  color: Colors.blue,
                  child: const Icon(
                    Icons.home,
                    color: Colors.white,
                    size: 50.0,
                  ),
                ),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(15.0),
                    height: 100.0,
                    color: Colors.blue[200],
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text("Artikel 1",
                            style:
                                TextStyle(color: Colors.white, fontSize: 15.0)),
                        Text(
                          "Ini adalah contoh artikel pada listview dengan versi custom",
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            child: Row(
              children: [
                Container(
                  width: 100.0,
                  height: 100.0,
                  color: Colors.blue,
                  child: const Icon(
                    Icons.home,
                    color: Colors.white,
                    size: 50.0,
                  ),
                ),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(15.0),
                    height: 100.0,
                    color: Colors.blue[200],
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text("Artikel 2",
                            style:
                                TextStyle(color: Colors.white, fontSize: 15.0)),
                        Text(
                          "Ini adalah contoh artikel pada listview dengan versi custom",
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            child: Row(
              children: [
                Container(
                  width: 100.0,
                  height: 100.0,
                  color: Colors.blue,
                  child: const Icon(
                    Icons.home,
                    color: Colors.white,
                    size: 50.0,
                  ),
                ),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(15.0),
                    height: 100.0,
                    color: Colors.blue[200],
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text("Artikel 3",
                            style:
                                TextStyle(color: Colors.white, fontSize: 15.0)),
                        Text(
                          "Ini adalah contoh artikel pada listview dengan versi custom",
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            child: Row(
              children: [
                Container(
                  width: 100.0,
                  height: 100.0,
                  color: Colors.blue,
                  child: const Icon(
                    Icons.home,
                    color: Colors.white,
                    size: 50.0,
                  ),
                ),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(15.0),
                    height: 100.0,
                    color: Colors.blue[200],
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text("Artikel 4",
                            style:
                                TextStyle(color: Colors.white, fontSize: 15.0)),
                        Text(
                          "Ini adalah contoh artikel pada listview dengan versi custom",
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
