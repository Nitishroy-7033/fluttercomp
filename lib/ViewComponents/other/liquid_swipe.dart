import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

class LiquidSwipeExample extends StatelessWidget {
  final pages = [
    Container(color: Colors.deepPurple, child: Center(child: Text("Page 1", style: TextStyle(fontSize: 30, color: Colors.white)))),
    Container(color: Colors.teal, child: Center(child: Text("Page 2", style: TextStyle(fontSize: 30, color: Colors.white)))),
    Container(color: Colors.orange, child: Center(child: Text("Page 3", style: TextStyle(fontSize: 30, color: Colors.white)))),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LiquidSwipe(pages: pages),
    );
  }
}
