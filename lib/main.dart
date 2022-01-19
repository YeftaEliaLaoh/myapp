import 'package:flutter/material.dart';
import 'package:progress_dialog/progress_dialog.dart';

void main() {
  runApp(const MaterialApp(
    title: "Family Dex",
    home: Halaman(),
  ));
}

class Halaman extends StatelessWidget {
  const Halaman({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Progress Dialog"),
      ),
      body: Container(
        width: 200,
        height: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100.0),
          image: const DecorationImage(
            image: AssetImage('image01.jpg'),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
