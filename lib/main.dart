import 'package:flutter/material.dart';
import 'package:division/division.dart';

void main() {
  runApp(const MaterialApp(
    title: "Halaman Utama",
    home: Halamandivision(),
  ));
}

class Halamandivision extends StatelessWidget {
  const Halamandivision({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ParentStyle cardStyle = ParentStyle()
      ..height(100.0)
      ..width(500.0)
      ..minWidth(500.0)
      ..alignment.center()
      ..alignmentContent.center()
      ..padding(vertical: 20.0, horizontal: 10.0)
      ..margin(horizontal: 30.0)
      ..background.color(hex('55ffff'))
      ..borderRadius(all: 20.0)
      ..boxShadow(
          color: hex('55ffff'),
          spread: -10.0,
          blur: 20.0,
          offset: const Offset(0.0, 15.0));
    return Scaffold(
      appBar: AppBar(
        title: const Text("Division"),
      ),
      body: Parent(
        style: cardStyle,
        gesture: Gestures()
          // ignore: avoid_print
          ..onTap(() => print('Division widget pressed!')),
        child: const Text('Centered text inside the division widget'),
      ),
    );
  }
}
