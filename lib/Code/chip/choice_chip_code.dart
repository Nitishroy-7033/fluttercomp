String choiceChipCode='''
import 'package:flutter/material.dart';

class ChoiceChipScreen extends StatefulWidget {
  const ChoiceChipScreen({super.key});

  @override
  State<ChoiceChipScreen> createState() => _ChoiceChipScreenState();
}

class _ChoiceChipScreenState extends State<ChoiceChipScreen> {
  String selectedChoice = 'One';

  @override
  Widget build(BuildContext context) {
    final choices = ['One', 'Two', 'Three'];

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primaryContainer,
      appBar: AppBar(title: const Text("Choice Chip")),
      body: Center(
        child: Wrap(
          spacing: 10,
          children: choices.map((choice) {
            return ChoiceChip(
              label: Text(choice),
              selected: selectedChoice == choice,
              selectedColor: Colors.lightGreen,
              onSelected: (bool selected) {
                setState(() => selectedChoice = selected ? choice : selectedChoice);
              },
            );
          }).toList(),
        ),
      ),
    );
  }
}''';