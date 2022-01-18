import 'package:flutter/material.dart';
import './halamansatu.dart';
import './halamandua.dart';
import './halamantiga.dart';

void main() {
  runApp(const MaterialApp(
    title: "Halaman Utama",
    home: Halamannav(),
  ));
}

class Halamannav extends StatefulWidget {
  const Halamannav({Key? key}) : super(key: key);

  @override
  _HalamannavState createState() => _HalamannavState();
}

class _HalamannavState extends State {
  int _selectedIndex = 0;

  final _widgetOptions = [
    const Halamansatu(),
    const Halamandua(),
    const Halamantiga(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.pin_drop),
            // ignore: deprecated_member_use
            title: Text('Satu'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.view_compact),
            // ignore: deprecated_member_use
            title: Text('Dua'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.library_books),
            // ignore: deprecated_member_use
            title: Text('Tiga'),
          ),
        ],
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        fixedColor: Colors.blueAccent,
        onTap: _onItemTapped,
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
