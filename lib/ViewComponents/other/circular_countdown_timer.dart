import 'package:flutter/material.dart';
import 'package:circular_countdown_timer/circular_countdown_timer.dart';

class CountdownTimerExample extends StatelessWidget {
  final CountDownController _controller = CountDownController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primaryContainer,
      appBar: AppBar(title: const Text("Circular Countdown Timer")),
      body: Center(
        child: CircularCountDownTimer(
          duration: 10,
          initialDuration: 0,
          controller: _controller,
          width: 150,
          height: 150,
          ringColor: Colors.grey[300]!,
          fillColor: Colors.purpleAccent,
          backgroundColor: Colors.white,
          strokeWidth: 10,
          strokeCap: StrokeCap.round,
          textStyle: const TextStyle(fontSize: 33.0, color: Colors.black),
          isReverse: true,
          isReverseAnimation: true,
          onComplete: () => print("Countdown Ended"),
        ),
      ),
    );
  }
}
