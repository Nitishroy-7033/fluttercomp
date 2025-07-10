import 'package:flutter/material.dart';

class GradientBackgroundContainer extends StatelessWidget {
  const GradientBackgroundContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return

      Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.purple, Colors.deepPurple],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Center(
          child: const Text(
            "Gradient Container",
            style: TextStyle(color: Colors.white),
          ),
        ),
      );



  }
}