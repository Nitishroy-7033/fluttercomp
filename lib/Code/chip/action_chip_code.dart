String actionChipCode='''
import 'package:flutter/material.dart';

class ActionChipScreen extends StatelessWidget {
  const ActionChipScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primaryContainer,
      appBar: AppBar(title: const Text("Action Chip")),
      body: Center(
        child: ActionChip(
          label: const Text("Click Me"),
          avatar: const Icon(Icons.flash_on),
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text("Action triggered!")),
            );
          },
          backgroundColor: Colors.green.shade100,
        ),
      ),
    );
  }
}
''';