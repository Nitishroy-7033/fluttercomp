import 'package:flutter/material.dart';

class DrawerSearchBox extends StatelessWidget {
  const DrawerSearchBox({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: "Search...",
        prefixIcon: Icon(
          Icons.search,
          size: 20,
          color: Theme.of(context).colorScheme.onPrimaryContainer,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
