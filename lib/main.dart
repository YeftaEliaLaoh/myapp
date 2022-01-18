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

  void _kirimdata() {
    AlertDialog alertDialog = AlertDialog(
      content: SizedBox(
        height: 200.0,
        child: Column(
          children: [
            Text("Nama Lengkap : ${controllernama.text}"),
            ElevatedButton(
              child: const Text("OK"),
              onPressed: () => Navigator.pop(context),
            )
          ],
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
        child: Column(
          children: [
            TextField(
              controller: controllernama,
              decoration: InputDecoration(
                hintText: "Nama User",
                labelText: "Nama",
                icon: const Icon(Icons.people),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0)),
              ),
              keyboardType: const TextInputType.numberWithOptions(),
            ),
            ElevatedButton(
              child: const Text(
                "Submit",
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () {
                _kirimdata();
              },
            ),
          ],
        ),
      ),
    );
  }
}
