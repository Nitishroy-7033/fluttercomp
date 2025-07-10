String transformContainerCode='''


import 'package:flutter/material.dart';

class TransformContainerRoated extends StatelessWidget {
  const TransformContainerRoated({super.key});

  @override
  Widget build(BuildContext context) {
    return
      Transform.rotate(
        angle: 0.1, // Radians
        child: Container(
          padding: const EdgeInsets.all(12),
          color: Colors.deepOrange,
          child: const Text("Rotated Container"),
        ),
      );



  }
}

''';