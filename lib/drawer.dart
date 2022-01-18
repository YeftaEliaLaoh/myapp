import 'package:flutter/material.dart';

class DrawerApp extends StatelessWidget {
  const DrawerApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
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
            trailing: const Icon(Icons.chevron_right),
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text('Item 2'),
            onTap: () {},
            trailing: const Icon(Icons.chevron_right),
          ),
          ListTile(
            title: const Text('Item 3'),
            onTap: () {},
            trailing: const Icon(Icons.chevron_right),
          ),
          ListTile(
            title: const Text('Item 4'),
            onTap: () {},
            trailing: const Icon(Icons.chevron_right),
          ),
        ],
      ),
    );
  }
}
