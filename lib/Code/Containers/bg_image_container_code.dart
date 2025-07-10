String bgImageContainerCode='''



import 'package:flutter/material.dart';

class ContainerWithBgImage extends StatelessWidget {
  const ContainerWithBgImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 120,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        image: const DecorationImage(
          image: AssetImage("assets/photos/container.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          padding: const EdgeInsets.all(8),
          color: Colors.black.withOpacity(0.4),
          child: const Text(
            "Overlay Text",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );


  }
}




''';