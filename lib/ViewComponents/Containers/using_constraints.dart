import 'package:flutter/material.dart';

class UsingConstraints extends StatelessWidget {
  const UsingConstraints({super.key});

  @override
  Widget build(BuildContext context) {
    return

      Container(
        constraints: const BoxConstraints(
          minWidth: 100,
          maxWidth: 200,
          minHeight: 50,
          maxHeight: 150,
        ),
        color: Colors.orangeAccent,
        child: const Text("Constrained Box"),
      );


  }
}