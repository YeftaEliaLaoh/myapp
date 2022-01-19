import 'package:flutter/material.dart';

class TabbarBody extends StatefulWidget {
  const TabbarBody({Key? key}) : super(key: key);

  @override
  _TabbarBodyState createState() => _TabbarBodyState();
}

class _TabbarBodyState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tabbar Body"),
      ),
      body: DefaultTabController(
        length: 3,
        child: Column(
          children: const [
            TabBar(
              labelColor: Colors.black,
              tabs: [
                Tab(text: 'Tab 1'),
                Tab(text: 'Tab 2'),
                Tab(text: 'Tab 3'),
              ],
            ),
            Expanded(
              child: TabBarView(
                children: [
                  Center(
                    child: Text("Tab 1"),
                  ),
                  Center(
                    child: Text("Tab 2"),
                  ),
                  Center(
                    child: Text("Tab 3"),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
