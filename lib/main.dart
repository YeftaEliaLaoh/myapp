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
      body: Row(
        children: [
          Container(
            height: 110.0,
            color: Colors.blue,
            padding: const EdgeInsets.all(20.0),
            child: const Icon(
              Icons.home,
              size: 70.0,
              color: Colors.white,
            ),
          ),
          Expanded(
            child: Container(
                height: 110.0,
                color: Colors.blue[300],
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Title",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Hello world",
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                )),
          ),
        ],
      ),
    );
  }
}
