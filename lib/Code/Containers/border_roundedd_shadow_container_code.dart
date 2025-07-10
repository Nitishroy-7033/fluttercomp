String borderRoundedShadowContainerCode='''




import 'package:flutter/material.dart';

class BorderRoundedShadowContainer extends StatelessWidget {
  const BorderRoundedShadowContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return

      Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: Colors.grey, width: 1),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              blurRadius: 8,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Center(child: const Text("Border + Shadow Container",style: TextStyle(color: Colors.black),)),
      );


  }
}








''';