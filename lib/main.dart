import 'package:flutter/material.dart';

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
        body: Center(
          child: GridView.count(
            crossAxisCount: 3,
            children: [
              Container(
                width: 100.0,
                height: 100.0,
                margin: const EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  color: Colors.red,
                  border: Border.all(color: Theme.of(context).primaryColor),
                  borderRadius: BorderRadius.circular(20.0),
                ),
              ),
              Container(
                width: 100.0,
                height: 100.0,
                margin: const EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  color: Colors.green,
                  border: Border.all(color: Theme.of(context).primaryColor),
                  borderRadius: const BorderRadius.all(Radius.circular(20.0)),
                ),
              ),
              Container(
                width: 100.0,
                height: 100.0,
                margin: const EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  color: Colors.blue,
                  border: Border.all(color: Theme.of(context).primaryColor),
                  borderRadius:
                      const BorderRadius.all(Radius.elliptical(10.0, 20.0)),
                ),
              ),
              Container(
                width: 100.0,
                height: 100.0,
                margin: const EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  color: Colors.yellow,
                  border: Border.all(color: Theme.of(context).primaryColor),
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(20.0)),
                ),
              ),
              Container(
                width: 100.0,
                height: 100.0,
                margin: const EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  color: Colors.teal,
                  border: Border.all(color: Theme.of(context).primaryColor),
                  borderRadius: const BorderRadius.only(
                      bottomRight: Radius.circular(20.0)),
                ),
              ),
              Container(
                width: 100.0,
                height: 100.0,
                margin: const EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  color: Colors.amber,
                  border: Border.all(color: Theme.of(context).primaryColor),
                  borderRadius:
                      const BorderRadius.only(topLeft: Radius.circular(20.0)),
                ),
              ),
              Container(
                width: 100.0,
                height: 100.0,
                margin: const EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  color: Colors.brown,
                  border: Border.all(color: Theme.of(context).primaryColor),
                  borderRadius:
                      const BorderRadius.only(topRight: Radius.circular(20.0)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
