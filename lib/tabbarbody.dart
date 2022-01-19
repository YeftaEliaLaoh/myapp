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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100.0),
                      image: const DecorationImage(
                        image: NetworkImage(
                            'https://www.byriza.com/lib/blog/1586938494.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20.0,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("Username"),
                      ElevatedButton(
                        onPressed: () {},
                        child: const Text("follow"),
                      )
                    ],
                  )
                ],
              ),
            ),
            DefaultTabController(
              length: 3,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const TabBar(
                    labelColor: Colors.black,
                    tabs: [
                      Tab(text: 'Tab 1'),
                      Tab(text: 'Tab 2'),
                      Tab(text: 'Tab 3'),
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height,
                    child: const TabBarView(
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
          ],
        ),
      ),
    );
  }
}
