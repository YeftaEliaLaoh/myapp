import 'package:flutter/material.dart';

var lokasi = [
  {
    'kota': 'Jakarta',
    'img':
        'https://upload.wikimedia.org/wikipedia/commons/thumb/f/f3/Jakarta_Panorama.jpg/300px-Jakarta_Panorama.jpg'
  },
  {
    'kota': 'Surabaya',
    'img':
        'https://www.goodnewsfromindonesia.id/uploads/post/large-surabaya-6b40c47198235b9b7d075492a0745ca8.jpg'
  },
  {
    'kota': 'Jogjakarta',
    'img': 'https://www.w3schools.com/w3css/img_lights.jpg'
  }
];

void main() {
  runApp(const MaterialApp(
    title: "Halaman Utama",
    home: Myapp(),
  ));
}

class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Halaman Utama"),
      ),
      body: ListView.builder(
        itemCount: lokasi.length,
        itemBuilder: (context, i) {
          return Card(
            child: Column(
              children: [
                Image(
                  image: NetworkImage('${lokasi[i]['img']}'),
                ),
                Text('${lokasi[i]['kota']}')
              ],
            ),
          );
        },
      ),
    );
  }
}
