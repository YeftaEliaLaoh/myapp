import 'package:flutter/material.dart';
import 'package:expandable/expandable.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Border example app'),
        ),
        body: Container(
          padding: const EdgeInsets.all(10.0),
          child: ExpandablePanel(
            header: const Text(
              "Contoh by Test",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
            ),
            collapsed: const Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse augue arcu,',
              softWrap: true,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            expanded: const Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse augue arcu, dapibus vel porta id, ultrices quis leo. Cras id quam quis neque mattis viverra ac eget ante. Etiam fringilla eget enim eget lacinia.',
              softWrap: true,
            ),
          ),
        ),
      ),
    );
  }
}
