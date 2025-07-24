String opacityAnimationCode='''
// 1. AnimatedOpacity
import 'package:flutter/material.dart';

class OpacityAnimation extends StatefulWidget {
  @override
  _OpacityAnimationState createState() => _OpacityAnimationState();
}

class _OpacityAnimationState extends State<OpacityAnimation> {
  double _opacity = 1.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primaryContainer,
      appBar: AppBar(title: Text('AnimatedOpacity')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedOpacity(
              opacity: _opacity,
              duration: Duration(seconds: 1),
              child: Container(width: 100, height: 100, color: Colors.blue),
            ),
            SizedBox(height: 34,),
            ElevatedButton(
              onPressed: () {
                setState(() => _opacity = _opacity == 1.0 ? 0.0 : 1.0);
              },
              child: Text("Toggle Opacity"),
            )
          ],
        ),
      ),
    );
  }
}''';