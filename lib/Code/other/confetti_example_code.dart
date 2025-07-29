String confeetiExampleCode='''import 'package:confetti/confetti.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ConfettiExample extends StatefulWidget {
  const ConfettiExample({super.key});

  @override
  State<ConfettiExample> createState() => _ConfettiExampleState();
}

class _ConfettiExampleState extends State<ConfettiExample> {
  late ConfettiController _controller;

  @override
  void initState() {
    super.initState();
    _controller = ConfettiController(duration: const Duration(seconds: 2));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primaryContainer,
      appBar: AppBar(title: const Text('Confetti!')),
      body: Stack(
        alignment: Alignment.center,
        children: [
          ConfettiWidget(
            confettiController: _controller,
            blastDirectionality: BlastDirectionality.explosive,
            shouldLoop: false,
          ),
          Center(
            child: ElevatedButton(
              onPressed: () => _controller.play(),
              child: const Text('Celebrate!'),
            ),
          ),
        ],
      ),
    );
  }
}
''';

String confeetidepcode='''
dependencies:
            confetti: ^0.8.0
''';