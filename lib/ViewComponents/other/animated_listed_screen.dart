// 1. AnimatedListScreen (flutter_staggered_animations)
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

class AnimatedListScreen extends StatelessWidget {
  const AnimatedListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primaryContainer,

      appBar: AppBar(title: const Text('Animated List')),
      body: AnimationLimiter(
        child: ListView.builder(
          itemCount: 15,
          itemBuilder: (context, index) {
            return AnimationConfiguration.staggeredList(
              position: index,
              duration: const Duration(milliseconds: 400),
              child: SlideAnimation(
                verticalOffset: 50.0,
                child: FadeInAnimation(
                  child: Card(
                    margin: const EdgeInsets.all(12),
                    child: ListTile(
                      title: Text('Item $index'),
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}