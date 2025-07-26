String neoMorphicButtonCode='''
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NeumorphicButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onPressed;

  const NeumorphicButton({super.key, required this.icon, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Neumorphism Button UI"),
      ),
      backgroundColor: Theme.of(context).colorScheme.primaryContainer,
      body: GestureDetector(
        onTap: onPressed,
        child: Center(
          child: Container(
            width: 70,
            height: 70,
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
            child: Icon(icon, color: Colors.grey.shade700),
          ),
        ),
      ),
    );
  }
}''';