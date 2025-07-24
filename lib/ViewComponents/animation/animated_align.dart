import 'package:flutter/material.dart';

class AnimatedAlignExample extends StatefulWidget {
  const AnimatedAlignExample({super.key});

  @override
  State<AnimatedAlignExample> createState() => _AnimatedAlignExampleState();
}

class _AnimatedAlignExampleState extends State<AnimatedAlignExample> {
  bool _alignedTop = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primaryContainer,
      appBar: AppBar(title: const Text('Animated Align')),
      body: Column(
        children: [
          Expanded(
            child: AnimatedAlign(
              duration: const Duration(seconds: 2),
              alignment: _alignedTop ? Alignment.topRight : Alignment.bottomLeft,
              curve: Curves.easeInOut,
              child: const FlutterLogo(size: 80),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                _alignedTop = !_alignedTop;
              });
            },
            child: const Text('Toggle Align'),
          ),
        ],
      ),
    );
  }
}
