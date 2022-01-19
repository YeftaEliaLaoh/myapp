import 'dart:async';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:flutter_full_pdf_viewer/full_pdf_viewer_scaffold.dart';
import 'package:path_provider/path_provider.dart';

void main() {
  runApp(const MaterialApp(
    title: "My Apps",
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State {
  String pathPDF = "";
  String filePDF = "https://www.byriza.com/demo/file-PDF.pdf";

  @override
  void initState() {
    super.initState();
    createFileOfPdfUrl(filePDF).then((f) {
      setState(() {
        pathPDF = f.path;
        // ignore: avoid_print
        print(pathPDF);
      });
    });
  }

  Future createFileOfPdfUrl(filePDF) async {
    final url = filePDF;
    final filename = url.substring(url.lastIndexOf("/") + 1);
    var request = await HttpClient().getUrl(Uri.parse(url));
    var response = await request.close();
    var bytes = await consolidateHttpClientResponseBytes(response);
    String dir = (await getApplicationDocumentsDirectory()).path;
    File file = File('$dir/$filename');
    await file.writeAsBytes(bytes);
    return file;
  }

  @override
  Widget build(BuildContext context) {
    return pathPDF == ""
        ? Scaffold(
            appBar: AppBar(
              title: const Text("Document"),
            ),
            body: const Center(
              child: CircularProgressIndicator(),
            ),
          )
        : PDFViewerScaffold(
            appBar: AppBar(
              title: const Text("Document"),
            ),
            path: pathPDF,
          );
  }
}
