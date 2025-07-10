import 'package:flutter/material.dart';

class SilverTabBar extends StatelessWidget {
  const SilverTabBar({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Theme.of(context).colorScheme.primaryContainer,
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
            SliverAppBar(
              title: const Text("Sliver TabBar"),
              pinned: true,
              floating: true,
              backgroundColor: Theme.of(context).colorScheme.primary,
              bottom: const TabBar(
                labelColor: Colors.amber,
                unselectedLabelColor: Colors.white,
                indicatorColor: Colors.amber,
                tabs: [
                  Tab(text: "Tab 1"),
                  Tab(text: "Tab 2"),
                ],
              ),
            ),
          ],
          body: const TabBarView(
            children: [
              Center(child: Text("Tab 1 Content")),
              Center(child: Text("Tab 2 Content")),
            ],
          ),
        ),
      ),
    );
  }
}
