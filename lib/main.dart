import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';

void main() {
  runApp(const MaterialApp(
    title: "Halaman Utama",
    home: Myapp(),
  ));
}

// ignore: must_be_immutable
class Myapp extends StatefulWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  HalamanJson createState() => HalamanJson();
}

class HalamanJson extends State {
  late List datadariJSON;

  Future ambildata() async {
    http.Response hasil = await http.get(
        Uri.parse("https://jsonplaceholder.typicode.com/users"),
        headers: {"Accept": "application/json"});

    setState(() {
      datadariJSON = json.decode(hasil.body);
    });
  }

  @override
  void initState() {
    super.initState();
    ambildata();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Data JSON"),
      ),
      body: ListView.builder(
          itemCount: datadariJSON.length,
          itemBuilder: (context, i) {
            return ListTile(
              title: Text(datadariJSON[i]['name']),
            );
          }),
    );
  }
}
