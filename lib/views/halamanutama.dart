// ignore_for_file: avoid_print

import '../models/userpostmodel.dart';
import '../viewmodels/userviewmodel.dart';
import 'package:flutter/material.dart';

class HalamanInput extends StatefulWidget {
  const HalamanInput({Key? key}) : super(key: key);

  @override
  _HalamanInputState createState() => _HalamanInputState();
}

class _HalamanInputState extends State {
  TextEditingController namaController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController alamatController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Halaman Input"),
      ),
      body: Container(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          children: [
            TextField(
              controller: namaController,
              decoration: const InputDecoration(
                  hintText: "Nama Lengkap", labelText: "Nama"),
            ),
            TextField(
              controller: emailController,
              decoration:
                  const InputDecoration(hintText: "Email", labelText: "Email"),
            ),
            TextField(
              controller: alamatController,
              decoration: const InputDecoration(
                  hintText: "Alamat", labelText: "Alamat"),
            ),
            ElevatedButton(
                child: const Text("Simpan"),
                onPressed: () {
                  UserpostModel commRequest = UserpostModel(
                      alamatUser: '', emailUser: '', namaUser: '');
                  commRequest.namaUser = namaController.text;
                  commRequest.emailUser = emailController.text;
                  commRequest.alamatUser = alamatController.text;
                  UserViewModel()
                      .postUser(userpostModelToJson(commRequest))
                      .then((value) => print("Mantab"));
                })
          ],
        ),
      ),
    );
  }
}
