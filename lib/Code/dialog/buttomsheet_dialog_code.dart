String buttomSheetCode='''
import 'package:flutter/material.dart';

class ButtomSheetDialogScreen extends StatelessWidget {
  const ButtomSheetDialogScreen({super.key});

  void _showButtomSheetDialog(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          padding: const EdgeInsets.all(16),
          height: 200,
          child: Column(
            children: [
              const Text("This is a bottom sheet"),
              ElevatedButton(onPressed: () => Navigator.pop(context), child: const Text("Close")),
            ],
          ),
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
          onPressed: () => _showButtomSheetDialog(context),
          child: const Text("Show Buttom Sheet Dialog"),
        ),
      ),
    );
  }
}''';