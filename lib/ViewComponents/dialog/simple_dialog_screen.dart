import 'package:flutter/material.dart';

class SimpleDialogScreen extends StatelessWidget {
  const SimpleDialogScreen({super.key});

  void _simpleDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return SimpleDialog(
          title: const Text("Choose an option"),
          children: [
            SimpleDialogOption(
              onPressed: () => Navigator.pop(context, 'Option 1'),
              child: const Text("Option 1"),
            ),
            SimpleDialogOption(
              onPressed: () => Navigator.pop(context, 'Option 2'),
              child: const Text("Option 2"),
            ),
          ],
        );
      },
    );

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primaryContainer,
      body: Center(
        child: ElevatedButton(
          onPressed: () => _simpleDialog(context),
          child: const Text("Show Simple Dialog"),
        ),
      ),
    );
  }
}
