String IconOnlyTabBarCode='''




import 'package:flutter/material.dart';

class IconOnlyTabBar extends StatelessWidget {
  const IconOnlyTabBar({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Theme.of(context).colorScheme.primaryContainer,
        appBar: AppBar(
          title: const Text("Icon Only Tabs"),
          bottom: const TabBar(
            labelColor: Colors.amber, // 🔸 Selected icon/text color
            unselectedLabelColor: Colors.white, // 🔹 Unselected icon/text color
            indicatorColor: Colors.amber,
            tabs: [
              Tab(icon: Icon(Icons.call)),
              Tab(icon: Icon(Icons.message)),
              Tab(icon: Icon(Icons.video_call)),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            Center(child: Text("Call Tab")),
            Center(child: Text("Message Tab")),
            Center(child: Text("Video Tab")),
          ],
        ),
      ),
    );
  }
}







''';