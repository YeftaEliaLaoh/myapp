// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  var selectedBottomNav = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title: const Text("Bottom Nav")),
      body: const Center(
        child: Text("Hello"),
      ),
      bottomNavigationBar: CustomBottomNav(
        items: items,
        index: selectedBottomNav,
        onItemSelected: (index) {
          print(index);
          setState(() {
            selectedBottomNav = index;
          });
        },
      ),
    );
  }

  List items = [
    NavigationItem(Icons.home, "Dashboard"),
    NavigationItem(Icons.list, "Menu"),
    NavigationItem(Icons.calendar_today, "Calendar"),
    NavigationItem(Icons.alarm, "Notifikasi"),
  ];
}

class NavigationItem {
  final IconData icon;
  final String title;

  NavigationItem(this.icon, this.title);
}

// ignore: must_be_immutable
class CustomBottomNav extends StatelessWidget {
  int index;
  List items;
  ValueChanged<int> onItemSelected;

  CustomBottomNav(
      {Key? key,
      required this.items,
      required this.onItemSelected,
      required this.index})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      padding: const EdgeInsets.fromLTRB(5, 10, 5, 10),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: items.map((item) {
          var itemIndex = items.indexOf(item);
          return GestureDetector(
            onTap: () => onItemSelected(itemIndex),
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              height: 45.0,
              padding: const EdgeInsets.fromLTRB(18, 10, 15, 10),
              decoration: BoxDecoration(
                  color: index == itemIndex ? Colors.blue : Colors.white,
                  borderRadius: BorderRadius.circular(30.0)),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    item.icon,
                    size: 20,
                    color: index == itemIndex ? Colors.white : Colors.grey,
                  ),
                  index == itemIndex
                      ? Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: Text(
                            item.title,
                            style: const TextStyle(color: Colors.white),
                          ),
                        )
                      : const SizedBox()
                ],
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
