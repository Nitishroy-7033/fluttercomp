String BasicDrawerCode='''


import 'package:flutter/material.dart';

class BasicDrawer extends StatelessWidget {
  const BasicDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primaryContainer,
      appBar: AppBar(
        title: const Text("Drawer Example"),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            // 🔹 Header
            DrawerHeader(
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
              ),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(Icons.account_circle, size: 48, color: Colors.white),
                  SizedBox(height: 8),
                  Text("Hello, User!",
                      style: TextStyle(color: Colors.white, fontSize: 18)),
                ],
              ),
            ),

            // 🔹 Drawer Items
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Home'),
              onTap: () {
                Navigator.pop(context); // Close drawer
                // Navigate or do something
              },
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Settings'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.logout),
              title: const Text('Logout'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: const Center(
        child: Text("Swipe from left or tap menu to open Drawer"),
      ),
    );
  }
}




''';