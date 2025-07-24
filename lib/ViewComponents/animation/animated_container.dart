// 2. AnimatedContainer
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContainerAnimation extends StatefulWidget {
  @override
  _ContainerAnimationState createState() => _ContainerAnimationState();
}

class _ContainerAnimationState extends State<ContainerAnimation> {
  double _width = 100;
  double _height = 100;
  Color _color = Colors.blue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primaryContainer,
      appBar: AppBar(title: const Text('AnimatedContainer')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedContainer(
              width: _width,
              height: _height,
              color: _color,
              duration: const Duration(seconds: 1),
              curve: Curves.easeInOut,
            ),
            const SizedBox(height: 34,),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _width = _width == 100 ? 200 : 100;
                  _height = _height == 100 ? 200 : 100;
                  _color = _color == Colors.blue ? Colors.red : Colors.blue;
                });
              },
              child:const  Text("Animate Container"),
            )
          ],
        ),
      ),
    );
  }
}
