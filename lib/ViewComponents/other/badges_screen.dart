// 3. Badges Example (badges)
import 'package:badges/badges.dart' as badges;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BadgeScreen extends StatelessWidget {
  const BadgeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primaryContainer,
      appBar: AppBar(
        title: const Text("Badges Example"),
        actions: const [
          badges.Badge(
            badgeContent: Text('3', style: TextStyle(color: Colors.white)),
            child: Icon(Icons.notifications),
          ),
          SizedBox(width: 20)
        ],
      ),
      body: const Center(child: Text('Badge Content Example')),
    );
  }
}