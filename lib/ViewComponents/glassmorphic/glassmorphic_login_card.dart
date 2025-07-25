import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GlassLoginCard extends StatelessWidget {
  const GlassLoginCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Glassmorphic Login"),
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      backgroundColor: Theme.of(context).colorScheme.primaryContainer,
      body:  Center(

        child: ClipRRect(
          borderRadius: BorderRadius.circular(25),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
            child: Container(
              width: 320,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.15),
                borderRadius: BorderRadius.circular(25),
                border: Border.all(color: Colors.white.withOpacity(0.3)),
              ),
              child: const Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text("Welcome", style: TextStyle(color: Colors.white, fontSize: 24)),
                  SizedBox(height: 20),
                  TextField(decoration: InputDecoration(hintText: 'Email')),
                  SizedBox(height: 10),
                  TextField(decoration: InputDecoration(hintText: 'Password')),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
