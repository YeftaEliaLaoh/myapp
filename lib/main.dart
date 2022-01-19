import 'package:flutter/material.dart';
import 'package:progress_dialog/progress_dialog.dart';

void main() {
  runApp(const MaterialApp(
    title: "Family Dex",
    home: Halaman(),
  ));
}

class Halaman extends StatelessWidget {
  const Halaman({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ProgressDialog pr =
        ProgressDialog(context, type: ProgressDialogType.Normal);

    pr.style(
      message: 'Menunggu...',
      borderRadius: 10.0,
      backgroundColor: Colors.white,
      elevation: 10.0,
      insetAnimCurve: Curves.easeInOut,
      progress: 0.0,
      maxProgress: 100.0,
      progressTextStyle: const TextStyle(
          color: Colors.black, fontSize: 13.0, fontWeight: FontWeight.w400),
      messageTextStyle: const TextStyle(
          color: Colors.black, fontSize: 19.0, fontWeight: FontWeight.w600),
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text("Progress Dialog"),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text("Tampilkan"),
          onPressed: () {
            pr.show();

            Future.delayed(const Duration(seconds: 10)).then((onValue) {
              pr.hide();
            });
          },
        ),
      ),
    );
  }
}
