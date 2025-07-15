String SimpleOnboardingCode='''
import 'package:flutter/material.dart';

class SimpleOnboarding extends StatelessWidget {
  const SimpleOnboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primaryContainer,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(20), // 👈 adjust this value as needed
                child: Image.asset(
                  "assets/photos/container.png",
                  height: 200,
                  fit: BoxFit.cover, // optional for cropping behavior
                ),
              ),

              const SizedBox(height: 20),
              const Text(
                "Welcome to Flutter Hero",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              const Text(
                "Your journey to mastering widgets starts here!",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.grey
                ),
              ),
              const SizedBox(height: 40),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onPressed: () {
                  Navigator.pushReplacementNamed(context, "/home");
                },
                child: const Text("Get Started",

                style: TextStyle(
                  color: Colors.white
                ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
''';