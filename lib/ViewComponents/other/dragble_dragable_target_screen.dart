import 'package:flutter/material.dart';

class DraggableExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primaryContainer,
      appBar: AppBar(title: Text('Draggable Example')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Draggable<Color>(
              data: Colors.blue,
              feedback: Container(width: 100, height: 100, color: Colors.blue),
              childWhenDragging: Container(width: 100, height: 100, color: Colors.grey),
              child: Container(width: 100, height: 100, color: Colors.blue),
            ),
            DragTarget<Color>(
              builder: (_, __, ___) => Container(width: 100, height: 100, color: Colors.amber),
              onAccept: (color) => ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Color Dropped!"))),
            )
          ],
        ),
      ),
    );
  }
}
