import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BasicDropdown extends StatefulWidget {
  const BasicDropdown({super.key});

  @override
  State<BasicDropdown> createState() => _BasicDropdownState();
}

class _BasicDropdownState extends State<BasicDropdown> {
  String selected = 'Apple';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primaryContainer,
      appBar: AppBar(title: const Text("Basic Dropdown")),
      body: Center(
        child: DropdownButton<String>(
          value: selected,
          items: ['Apple', 'Banana', 'Cherry', 'Mango']
              .map((item) => DropdownMenuItem(value: item, child: Text(item)))
              .toList(),
          onChanged: (value) {
            setState(() {
              selected = value!;
            });
          },
        ),
      ),
    );
  }
}
