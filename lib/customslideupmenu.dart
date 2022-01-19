import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomSlideUpMenu extends StatefulWidget {
  const CustomSlideUpMenu({Key? key}) : super(key: key);

  @override
  _CustomSlideUpMenuState createState() => _CustomSlideUpMenuState();
}

class _CustomSlideUpMenuState extends State<CustomSlideUpMenu> {
  int selected = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Slide Up Menu"),
      ),
      body: const Center(
        child: Text("Slide Up"),
      ),
      extendBody: true,
      bottomNavigationBar: SlideUpBottomNav(
        selectedItem: selected,
        onItemSelected: (val) {
          setState(() {
            selected = val;
          });
        },
      ),
    );
  }
}

class NavigationItem {
  final IconData icon;
  final String title;

  NavigationItem({required this.icon, required this.title});
}

// ignore: must_be_immutable
class SlideUpBottomNav extends StatefulWidget {
  int selectedItem;
  ValueChanged<int> onItemSelected;
  SlideUpBottomNav(
      {Key? key, required this.selectedItem, required this.onItemSelected})
      : super(key: key);

  @override
  _SlideUpBottomNavState createState() => _SlideUpBottomNavState();
}

class _SlideUpBottomNavState extends State<SlideUpBottomNav> {
  List items = [
    NavigationItem(icon: FontAwesomeIcons.home, title: "Home"),
    NavigationItem(icon: FontAwesomeIcons.book, title: "Book"),
    NavigationItem(icon: FontAwesomeIcons.mapMarked, title: "Location"),
    NavigationItem(icon: FontAwesomeIcons.solidUser, title: "Users"),
    NavigationItem(icon: FontAwesomeIcons.table, title: "Desk"),
    NavigationItem(icon: FontAwesomeIcons.building, title: "Room"),
    NavigationItem(icon: FontAwesomeIcons.signOutAlt, title: "Logout"),
  ];

  double customheight = 100;
  bool expandedmenu = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onVerticalDragUpdate: (val) {
        setState(() {
          customheight =
              MediaQuery.of(context).size.height - val.globalPosition.dy;
          if (customheight >= 110) {
            customheight = 300;
            expandedmenu = true;
          } else {
            customheight = 100;
            expandedmenu = false;
          }
        });
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        height: customheight < 100 ? 100 : customheight,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(color: Colors.white, boxShadow: [
          BoxShadow(
              color: Colors.grey,
              spreadRadius: 2,
              blurRadius: 2,
              offset: Offset(0, 1))
        ]),
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(bottom: 15),
              height: 5,
              width: 70,
              decoration: BoxDecoration(
                  color: Colors.grey, borderRadius: BorderRadius.circular(20)),
            ),
            Expanded(
              child: expandedmenu == false
                  ? Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        for (var x = 0; x < 4; x++)
                          GestureDetector(
                            onTap: () {
                              widget.onItemSelected(x);
                            },
                            child: Column(
                              children: [
                                Icon(
                                  items[x].icon,
                                  color: widget.selectedItem == x
                                      ? Colors.blue
                                      : Colors.grey,
                                ),
                                Text(
                                  items[x].title,
                                  style: TextStyle(
                                    color: widget.selectedItem == x
                                        ? Colors.blue
                                        : Colors.grey,
                                  ),
                                )
                              ],
                            ),
                          )
                      ],
                    )
                  : GridView.count(
                      crossAxisCount: 4,
                      primary: false,
                      shrinkWrap: true,
                      children: items.map((item) {
                        var indexitem = items.indexOf(item);
                        return GestureDetector(
                          onTap: () {
                            widget.onItemSelected(indexitem);
                          },
                          child: Column(
                            children: [
                              Icon(
                                item.icon,
                                color: widget.selectedItem == indexitem
                                    ? Colors.blue
                                    : Colors.grey,
                              ),
                              Text(
                                item.title,
                                style: TextStyle(
                                  color: widget.selectedItem == indexitem
                                      ? Colors.blue
                                      : Colors.grey,
                                ),
                              )
                            ],
                          ),
                        );
                      }).toList(),
                    ),
            )
          ],
        ),
      ),
    );
  }
}
