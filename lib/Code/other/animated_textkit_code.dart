String animatedTextkitCode='''import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AnimatedTextExample extends StatelessWidget {
  const AnimatedTextExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primaryContainer,
      appBar: AppBar(title: const Text('Animated Text')),
      body: Center(
        child: DefaultTextStyle(
          style: const TextStyle(fontSize: 32.0, fontWeight: FontWeight.bold, color: Colors.black),
          child: AnimatedTextKit(
            animatedTexts: [
              TypewriterAnimatedText('Hello Flutter!',

                textStyle: const TextStyle(
                  fontSize: 32.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              TypewriterAnimatedText('Let’s build beautiful UIs',

                textStyle: const TextStyle(
                  fontSize: 32.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ],
            repeatForever: true,
          ),
        ),
      ),
    );
  }
}
''';

String animatedTexkitdep='''
dependencies:
  animated_text_kit: ^4.2.3
  ''';