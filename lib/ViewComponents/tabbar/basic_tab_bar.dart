import 'package:flutter/material.dart';

class BasicTabBar extends StatelessWidget {
  const BasicTabBar({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, // Number of tabs
      child: Scaffold(
        backgroundColor: Theme.of(context).colorScheme.primaryContainer,
        appBar: AppBar(
          title: const Text(" Basic TabBar"),
          bottom: const TabBar(

            labelColor: Colors.amber, // 🔸 Selected icon/text color
            unselectedLabelColor: Colors.white, // 🔹 Unselected icon/text color
            indicatorColor: Colors.amber, // 🔸 Line under selected tab
    tabs: [
              Tab(

                  icon: Icon(Icons.home), text: "Home"),
              Tab(icon: Icon(Icons.star), text: "Favorites"),
              Tab(icon: Icon(Icons.settings), text: "Settings"),
            ],
          ),
        ),
        body: const TabBarView(

          children: [
            Center(child: Text("Home Page")),
            Center(child: Text("Favorites Page")),
            Center(child: Text("Settings Page")),
          ],
        ),
      ),
    );
  }
}
