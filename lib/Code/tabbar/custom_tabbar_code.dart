String CustomTabBarCode='''



import 'package:flutter/material.dart';

class CustomTabBar extends StatelessWidget {
  const CustomTabBar({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Theme.of(context).colorScheme.primaryContainer,
        appBar: AppBar(
          title: const Text("Custom TabBar"),
          backgroundColor: Theme.of(context).colorScheme.primary,
        ),
        body: const Column(
          children: [
            TabBar(
              labelColor: Colors.blue,
              unselectedLabelColor: Colors.grey,
              indicatorColor: Colors.blue,
              tabs: [
                Tab(text: "Info"),
                Tab(text: "Reviews"),
              ],
            ),
            Expanded(
              child: TabBarView(
                children: [
                  Center(child: Text("Info Tab")),
                  Center(child: Text("Reviews Tab")),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}




''';