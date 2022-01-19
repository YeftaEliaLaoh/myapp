import 'package:flutter/material.dart';

class Selisih extends StatefulWidget {
  const Selisih({Key? key}) : super(key: key);

  @override
  _SelisihState createState() => _SelisihState();
}

class _SelisihState extends State {
  DateTime tanggalAkhir = DateTime.parse('2021-03-05');
  DateTime tanggalMulai = DateTime(2021, 02, 02);
  // ignore: prefer_typing_uninitialized_variables
  var selisih;
  hitungselisih() {
    final datestart =
        DateTime(tanggalMulai.year, tanggalMulai.month, tanggalMulai.day);
    final dateend =
        DateTime(tanggalAkhir.year, tanggalAkhir.month, tanggalAkhir.day);
    setState(() {
      selisih = dateend.difference(datestart).inDays;
    });
  }

  @override
  void initState() {
    super.initState();
    hitungselisih();
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
              selisih.toString(),
              style: const TextStyle(fontSize: 20.0),
            ),
          ),
        ],
      ),
    );
  }
}
