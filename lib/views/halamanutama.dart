// ignore_for_file: unnecessary_null_comparison

import '../viewmodels/userviewmodel.dart';
import 'package:flutter/material.dart';

class HalamanUtama extends StatefulWidget {
  const HalamanUtama({Key? key}) : super(key: key);

  @override
  _HalamanUtamaState createState() => _HalamanUtamaState();
}

class _HalamanUtamaState extends State {
  List dataUser = [];
  void getDataUser() {
    UserViewModel().getUsers().then((value) {
      setState(() {
        dataUser = value!;
      });
    });
  }

  @override
  void initState() {
    super.initState();
    getDataUser();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Halaman Utama"),
      ),
      body: dataUser == null
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : ListView.builder(
              itemCount: dataUser.length,
              itemBuilder: (context, i) {
                return ListTile(
                  title: Text(dataUser[i].name),
                );
              },
            ),
    );
  }
}
