import 'halamanutama.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    title: "My App",
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'MY App',
        home: HalamanUtama(
          selectedUrl: "https://www.byriza.com",
        ));
  }
}
