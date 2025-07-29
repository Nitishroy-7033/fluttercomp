String flipCardWidgetsCode='''
import 'package:flip_card/flip_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FlipCardExample extends StatelessWidget {
  const FlipCardExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primaryContainer,
      appBar: AppBar(title: const Text('Flip Card')),
      body: const Center(
        child: FlipCard(
          direction: FlipDirection.HORIZONTAL,
          front: Card(
            child: SizedBox(
              width: 200,
              height: 200,
              child: Center(child: Text('Front')),
            ),
          ),
          back: Card(
            color: Colors.amber,
            child: SizedBox(
              width: 200,
              height: 200,
              child: Center(child: Text('Back')),
            ),
          ),
        ),
      ),
    );
  }
}''';

String flipcarddep='''
dependencies:
            flip_card: ^0.7.0
''';