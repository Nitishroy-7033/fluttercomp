String customDialogCode='''
import 'package:flutter/material.dart';

class CustomDialogScreen extends StatelessWidget {
  const CustomDialogScreen({super.key});

  void _showCustomDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (_) => Dialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text("Custom Dialog",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              const SizedBox(height: 20),
              const Text("This is a custom designed dialog."),
              const SizedBox(height: 20),
              ElevatedButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text("OK")),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primaryContainer,
      body: Center(
        child: ElevatedButton(
          onPressed: () => _showCustomDialog(context),
          child: const Text("Show Custom Dialog"),
        ),
      ),
    );
  }
}''';