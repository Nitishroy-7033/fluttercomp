String heroAnimationCode='''
// 3. Hero Animation
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primaryContainer,
      appBar: AppBar(title: Text("Hero First Screen")),
      body: Center(
        child: GestureDetector(
          child: Hero(
            tag: 'heroTag',
            child: Container(width: 100, height: 100, color: Colors.blue),
          ),
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => SecondScreen()),
          ),
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primaryContainer,

      appBar: AppBar(title: Text("Hero Second Screen")),
      body: Center(
        child: Hero(
          tag: 'heroTag',
          child: Container(width: 200, height: 200, color: Colors.red),
        ),
      ),
    );
  }
}
''';