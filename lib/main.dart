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
        title: const Text("Drawer"),
      ),
      drawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            const UserAccountsDrawerHeader(
              accountName: Text("Tes"),
              accountEmail: Text("tes@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://upload.wikimedia.org/wikipedia/commons/thumb/f/f3/Jakarta_Panorama.jpg/300px-Jakarta_Panorama.jpg"),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Item 1'),
              onTap: () {},
            ),
            ListTile(
              title: const Text('Item 2'),
              trailing: const Icon(Icons.chevron_right),
              onTap: () {},
            ),
            ListTile(
              title: const Text('Item 3'),
              onTap: () {},
            ),
          ],
        ),
      ),
      body: const Center(
        child: Text("Drawer"),
      ),
    );
  }
}
