import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';

void main() {
  runApp(const MaterialApp(
    title: "My Apps",
    home: HalamanUtama(),
  ));
}

class HalamanUtama extends StatefulWidget {
  const HalamanUtama({Key? key}) : super(key: key);

  @override
  _HalamanUtamaState createState() => _HalamanUtamaState();
}

class _HalamanUtamaState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Halaman Utama"),
      ),
      body: Html(
        data: """
        

          
Demo Page

          
This is a fantastic product that you should buy!


          
Features

          

            
It actually works

            
It exists

            
It doesn't cost much!

          

          <!--You can pretty much put any html in here!-->
          
Hello world, 

Melanjutkan pembahasan mengenai form sebelumnya yang sudah terlalu lama belum ada kelanjutannya kali ini saya membuat artikel mengenai bagaimana mengambil atau menambahkan gambar dari handphone ke aplikasi kita menggunakan image picker. Kita bisa mengambil gambar dari galeri ataupun dari kamera. Fungsinya biasanya ketika kita membuat sebuah form yang berisi inputan data yang mengharuskan pengguna mengupload foto untuk kelengkapan data.


        

      """,
      ),
    );
  }
}
