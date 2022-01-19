import 'package:flutter/material.dart';

class Halaman extends StatelessWidget {
  const Halaman({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String? _selectedoption = 'Pilihan 1';

    return Scaffold(
      appBar: AppBar(
        title: const Text("DateTime Flutter"),
      ),
      body: DropdownButton<String>(
        value: _selectedoption,
        icon: const Icon(Icons.arrow_downward),
        iconSize: 24,
        elevation: 16,
        items: <String>['Pilihan 1', 'Pilihan 2', 'Pilihan 3', 'Pilihan 4']
            .map((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
        onChanged: (val) {
          setState(() {
            _selectedoption = val;
          });
        },
      ),
    );
  }
}
