import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State {
  final GlobalKey scaffoldState = GlobalKey();

  void showSnakeBar(scaffoldState, String _pesan) {
    scaffoldState.currentState.showSnackBar(
      SnackBar(
        content: Text(_pesan),
        action: SnackBarAction(
          label: 'Close',
          onPressed: () {
            // Some code to undo the change.
          },
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        key: scaffoldState,
        appBar: AppBar(
          title: const Text('Snackbar example app'),
        ),
        body: Container(
            padding: const EdgeInsets.all(10.0),
            child: ElevatedButton(
              onPressed: () {
                showSnakeBar(scaffoldState, 'Muncul Snackbar');
              },
              child: const Text("Tampilkan"),
            )),
      ),
    );
  }
}
