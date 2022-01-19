import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    title: "Halaman",
    home: Halaman(),
  ));
}

class Halaman extends StatefulWidget {
  const Halaman({Key? key}) : super(key: key);

  @override
  _HalamanState createState() => _HalamanState();
}

class _HalamanState extends State with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 3);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottom: TabBar(
          controller: _tabController,
          tabs: const [
            Tab(icon: Icon(Icons.access_time), text: 'Tab 1'),
            Tab(icon: Icon(Icons.access_alarms), text: 'Tab 2'),
            Tab(icon: Icon(Icons.account_circle), text: 'Tab 3'),
          ],
        ),
        title: const Text('Tabbar'),
      ),
      body: TabBarView(
        controller: _tabController,
        children: const [
          Center(child: Text('Ini Tab 1')),
          Center(child: Text('Ini Tab 2')),
          Center(child: Text('Ini Tab 3')),
        ],
      ),
    );
  }
}
