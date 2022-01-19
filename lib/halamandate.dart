import 'package:flutter/material.dart';

class HalamanDate extends StatefulWidget {
  const HalamanDate({Key? key}) : super(key: key);

  @override
  _HalamanDateState createState() => _HalamanDateState();
}

class _HalamanDateState extends State {
  DateTime selectedDate = DateTime.now();
  _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate, // Refer step 1
      firstDate: DateTime(2000),
      lastDate: DateTime(3000),
    );
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
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
              _selectDate(context);
            },
            child: const Text('Pilih Tanggal'),
          )
        ],
      ),
    );
  }
}
