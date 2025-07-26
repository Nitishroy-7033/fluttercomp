import 'package:flutter/material.dart';

class NeumorphicUI extends StatelessWidget {
  const NeumorphicUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primaryContainer,
      appBar: AppBar(title: const Text("Neumorphism UI")),
      body: Center(
        child: Container(
          width: 150,
          height: 150,
          decoration: BoxDecoration(
            color: const Color(0xFFE0E5EC),
            borderRadius: BorderRadius.circular(20),
            boxShadow: const [
              BoxShadow(
                color: Colors.white,
                offset: Offset(-6, -6),
                blurRadius: 12,
              ),
              BoxShadow(
                color: Color(0xFFA3B1C6),
                offset: Offset(6, 6),
                blurRadius: 12,
              ),
            ],
          ),
          child: const Center(
            child: Icon(Icons.favorite, color: Colors.pink, size: 40),
          ),
        ),
      ),
    );
  }
}
