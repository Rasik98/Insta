import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
          padding: EdgeInsets.zero,
          children:  [
            const UserAccountsDrawerHeader(accountName: Text('explain'),
            accountEmail: Text('info@gmai.com'),
            currentAccountPicture: CircleAvatar(
            ),
            ),
            ListTile(
              leading: const Icon(Icons.folder),
              title: const Text('My files'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.people_rounded),
              title: const Text('Shared With me'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.star),
              title: const Text('Starred'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.access_time),
              title: const Text('Recent'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.offline_pin),
              title: const Text('offine'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.upload),
              title: const Text('upload'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.backup),
              title: const Text('backup'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.restore_from_trash),
              title: const Text('trash'),
              onTap: () {},
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('settings'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.feedback),
              title: const Text('Help & feedback'),
              onTap: () {},
            ),
          ],
        ),
    );
  }
}