String tweenAnimationCode='''
import 'package:flutter/material.dart';

class TweenAnimationExample extends StatelessWidget {
  const TweenAnimationExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primaryContainer,
      appBar: AppBar(title: const Text('Tween Animation')),
      body: Center(
        child: TweenAnimationBuilder<double>(
          tween: Tween(begin: 0.0, end: 1.0),
          duration: const Duration(seconds: 2),
          builder: (context, value, child) {
            return Opacity(
              opacity: value,
              child: Transform.scale(
                scale: value,
                child: const FlutterLogo(size: 100),
              ),
            );
          },
        ),
      ),
    );
  }
}''';