import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    title: "My Apps",
    home: Myapp(),
  ));
}

class Myapp extends StatefulWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  _MyappState createState() => _MyappState();
}

class _MyappState extends State {
  TextEditingController controllernama = TextEditingController();

  void _tampilkanalert() {
    AlertDialog alertDialog = const AlertDialog(
      content: SizedBox(
        height: 200.0,
        child: Center(
          child: Text("Hello Ini Alert"),
        ),
      ),
    );
    showDialog(builder: (context) => alertDialog, context: context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Apps"),
      ),
      body: Container(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: ElevatedButton(
            child: const Text(
              "Tampilkan",
              style: TextStyle(color: Colors.white),
            ),
            onPressed: () {
              _tampilkanalert();
            },
          ),
        ),
      ),
    );
  }
}
