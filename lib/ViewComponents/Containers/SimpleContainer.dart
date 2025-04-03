import 'package:flutter/material.dart';

class Simplecontainer extends StatelessWidget {
  const Simplecontainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 300,
      color: Colors.red,
      child: const Center(
        child: Text(
          "Simple Container",
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
    );
  }
}