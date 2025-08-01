// RiveScreen.dart
import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

class RiveScreen extends StatelessWidget {
  const RiveScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primaryContainer,
      appBar: AppBar(title: const Text('Rive Animation')),
      body: const Center(
        child: RiveAnimation.asset('assets/animation/char.riv'),
      ),
    );
  }
}
