String inputChipCode='''
import 'package:flutter/material.dart';

class InputChipScreen extends StatefulWidget {
  const InputChipScreen({super.key});

  @override
  State<InputChipScreen> createState() => _InputChipScreenState();
}

class _InputChipScreenState extends State<InputChipScreen> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primaryContainer,
      appBar: AppBar(title: const Text("Input Chip")),
      body: Center(
        child: InputChip(
          label: const Text("Tap Me"),
          avatar: const Icon(Icons.touch_app),
          selected: selected,
          selectedColor: Colors.greenAccent,
          onSelected: (bool value) {
            setState(() => selected = value);
          },
        ),
      ),
    );
  }
}''';