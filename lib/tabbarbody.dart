import 'package:flutter/material.dart';
import 'package:from_css_color/from_css_color.dart';

class Halaman extends StatelessWidget {
  const Halaman({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var checkCorrectHex = isCssColor('#fbafba'); // true
    var checkIncorrectHex = isCssColor('#f'); // false

    var checkCorrectRgb = isCssColor('rgb(100, 5, 32)'); // true
    var checkIncorrectRgb = isCssColor('rgb(100,100)'); // false

    return Scaffold(
      appBar: AppBar(
        title: const Text("DateTime Flutter"),
      ),
      body: Center(
        child: Text("checkCorrectHex : " +
            checkCorrectHex.toString() +
            " checkIncorrectHex : " +
            checkIncorrectHex.toString() +
            " checkCorrectRgb : " +
            checkCorrectRgb.toString() +
            " checkIncorrectRgb : " +
            checkIncorrectRgb.toString()),
      ),
    );
  }
}
