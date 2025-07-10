import 'package:flutter/material.dart';

class FixedSizeAlignment extends StatelessWidget {
  const FixedSizeAlignment({super.key});

  @override
  Widget build(BuildContext context) {
    return

      Container(
        width: 200,
        height: 100,
        alignment: Alignment.center,
        color: Colors.teal,
        child: const Text("Fixed Size & Centered"),
      );


  }
}