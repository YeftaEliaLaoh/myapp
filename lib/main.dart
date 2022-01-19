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
          title: const Text("Show Dialog"),
        ),
        body: Center(
            child: ElevatedButton(
                onPressed: () {
                  _showSimpleDialog(context);
                },
                child: const Text("Click Here"))));
  }

  void _showSimpleDialog(context) {
    showDialog(
      context: context,
      builder: (context) {
        return SimpleDialog(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10.0),
              child: Row(
                children: [
                  const Expanded(
                    child: Text(
                      "Tambah Pengguna",
                      style: TextStyle(fontSize: 20.0),
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.close),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  )
                ],
              ),
            ),
            const Divider(),
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                "Nama Lengkap",
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10.0),
              child: TextField(
                style: const TextStyle(
                    fontSize: 14.0, height: 1.0, color: Colors.black),
                decoration: InputDecoration(
                  hintText: "Input nama lengkap",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(3.0)),
                  contentPadding: const EdgeInsets.symmetric(
                      vertical: 14.0, horizontal: 15.0),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                "Kontak",
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10.0),
              child: TextField(
                style: const TextStyle(
                    fontSize: 14.0, height: 1.0, color: Colors.black),
                decoration: InputDecoration(
                  hintText: "Input kontak",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(3.0)),
                  contentPadding: const EdgeInsets.symmetric(
                      vertical: 14.0, horizontal: 15.0),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 0),
              child: ElevatedButton(
                child: const Text(
                  "SIMPAN",
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {},
              ),
            )
          ],
        );
      },
    );
  }
}
