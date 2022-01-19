import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:myapp/views/datepicker.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    localizationsDelegates: [
      GlobalMaterialLocalizations.delegate,
      GlobalWidgetsLocalizations.delegate,
      GlobalCupertinoLocalizations.delegate,
    ],
    supportedLocales: [
      Locale('id', 'ID'),
    ],
    debugShowCheckedModeBanner: false,
    title: "My App",
    home: DatePickerPage(),
  ));
}
