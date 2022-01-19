import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    title: "My Carousell",
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  _ContohappbarState createState() => _ContohappbarState();
}

class _ContohappbarState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.green,
          elevation: 0.0,
          iconTheme: const IconThemeData(
            color: Colors.lightBlue, //change your color here
          ),
          leading: IconButton(
            icon: const Icon(Icons.supervised_user_circle),
            onPressed: () {},
          ),
          title: const Text("Ini AppBar"),
          actions: [
            // action button
            IconButton(
              icon: const Icon(Icons.add_circle),
              onPressed: () {
                //action
              },
            ),
            // action button
            IconButton(
              icon: const Icon(Icons.add_location),
              onPressed: () {
                //action
              },
            ),
          ]),
      body: const Center(
        child: Text("ini body"),
      ),
    );
  }
}
