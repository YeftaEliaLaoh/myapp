import 'dart:async';
import 'dart:core';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State {
  var jam = '';
  void startJam() {
    Timer.periodic(const Duration(seconds: 1), (_) {
      var tgl = DateTime.now();
      var formatedjam = DateFormat.Hms().format(tgl);
      setState(() {
        jam = formatedjam;
      });
    });
  }

  @override
  void initState() {
    startJam();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Clock example app'),
        ),
        body: Center(
          child: Text(
            jam,
            style: const TextStyle(fontSize: 40),
          ),
        ),
      ),
    );
  }
}
