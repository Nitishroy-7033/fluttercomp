String lottieSplashCode='''

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LottieSplashScreen extends StatelessWidget {
  const LottieSplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Lottie Animation
            SizedBox(
              height: 250,
              child: Lottie.asset('assets/animation/running.json'),
            ),

            const SizedBox(height: 20),

            // Animated Text (optional)
            const Text(
              'Welcome',
              style: TextStyle(
                color: Colors.white,
                fontSize: 28,
                fontWeight: FontWeight.bold,
                letterSpacing: 1.2,
              ),
            ),
          ],
        ),
      ),
    );
  }
}






''';