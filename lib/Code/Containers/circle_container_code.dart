String circleContainerCode='''



import 'package:flutter/material.dart';

class CircleContainer extends StatelessWidget {
  const CircleContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return

      Container(
        width: 100,
        height: 100,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.indigo,
        ),
        child: const Icon(Icons.favorite, color: Colors.white),
      );



  }
}







''';