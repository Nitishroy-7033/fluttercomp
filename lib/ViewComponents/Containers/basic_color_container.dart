import 'package:flutter/material.dart';

class BasicColorContainer extends StatelessWidget {
  const BasicColorContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      margin: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Center(
        child: const Text(
          "Basic Colored Container",
          style: TextStyle(color: Colors.white),
        ),
      ),
    );

  }
}