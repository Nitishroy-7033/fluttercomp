String tapableContainerCode='''


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TappableContainer extends StatefulWidget {
  const TappableContainer({super.key});

  @override
  State<TappableContainer> createState() => _TappableContainerState();
}

class _TappableContainerState extends State<TappableContainer> with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 100),
      lowerBound: 0.95,
      upperBound: 1.0,
      vsync: this,
    )..value = 1.0;
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _onTapDown(TapDownDetails details) {
    _controller.reverse();
  }

  void _onTapUp(TapUpDetails details) {
    _controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // do something
      },
      onTapDown: _onTapDown,
      onTapUp: _onTapUp,
      onTapCancel: () => _controller.forward(),
      child: ScaleTransition(
        scale: _controller,
        child: Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.lightBlue,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Center(
            child: const Text(
              "Tap Me",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}



''';