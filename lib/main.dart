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
  _ContohFormState createState() => _ContohFormState();
}

class _ContohFormState extends State {
  final GlobalKey _formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Contoh Form"),
      ),
      body: Container(
        padding: const EdgeInsets.all(10.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              TextFormField(
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Textfield wajib diisi bro';
                  }
                  return null;
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
