import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    title: "Family Dex",
    home: TabBarDemo(),
  ));
}

class TabBarDemo extends StatelessWidget {
  const TabBarDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            bottom: const TabBar(
              tabs: [
                Tab(icon: Icon(Icons.access_time), text: 'Tab 1'),
                Tab(icon: Icon(Icons.access_alarms), text: 'Tab 2'),
                Tab(icon: Icon(Icons.account_circle), text: 'Tab 3'),
              ],
            ),
            title: const Text('Tabbar'),
          ),
          body: const TabBarView(
            children: [
              Center(child: Text('Ini Tab 1')),
              Center(child: Text('Ini Tab 2')),
              Center(child: Text('Ini Tab 3')),
            ],
          ),
        ),
      ),
    );
  }
}
