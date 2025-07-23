String basicChipCode='''
import 'package:flutter/material.dart';

class BasicChipScreen extends StatelessWidget {
  const BasicChipScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primaryContainer,
      appBar: AppBar(title: const Text("Basic Chip")),
      body: Center(
        child: Chip(
          label: const Text("Flutter"),
          avatar: const CircleAvatar(child: Text("F")),
          backgroundColor: Colors.green[100],
        ),
      ),
    );
  }
}
''';