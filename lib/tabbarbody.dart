// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:month_picker_dialog/month_picker_dialog.dart';

class HalamanDate extends StatefulWidget {
  const HalamanDate({Key? key}) : super(key: key);

  @override
  _HalamanDateState createState() => _HalamanDateState();
}

class _HalamanDateState extends State {
  DateTime selectedDate = DateTime.now();
  _selectMonth(BuildContext context) async {
    showMonthPicker(
      context: context,
      firstDate: DateTime(DateTime.now().year - 1, 5),
      lastDate: DateTime(DateTime.now().year + 1, 9),
      initialDate: selectedDate,
      locale: const Locale("id"),
    ).then((date) {
      if (date != null) {
        setState(() {
          selectedDate = date;
          print(selectedDate);
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Halaman Datepicker"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              selectedDate.toString(),
              style: const TextStyle(fontSize: 20.0),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              _selectMonth(context);
            },
            child: const Text('Pilih Tanggal'),
          )
        ],
      ),
    );
  }
}
