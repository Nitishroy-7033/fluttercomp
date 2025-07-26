String neomorphic_textFiled_code='''
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NeumorphicTextField extends StatelessWidget {
  final String hintText;

  const NeumorphicTextField({super.key, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Neumorphism TextField"),
      ),
      backgroundColor: Theme.of(context).colorScheme.primaryContainer,
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        margin: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: const Color(0xFFE0E5EC),
          borderRadius: BorderRadius.circular(12),
          boxShadow: const [
            BoxShadow(color: Colors.white, offset: Offset(-4, -4), blurRadius: 6),
            BoxShadow(color: Color(0xFFA3B1C6), offset: Offset(4, 4), blurRadius: 6),
          ],
        ),
        child: const TextField(
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: "Enter text",
          ),
        ),
      ),
    );
  }
}''';