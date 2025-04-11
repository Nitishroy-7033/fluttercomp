import 'package:flutter/material.dart';

class BasicSplash extends StatefulWidget {
  const BasicSplash({super.key});

  @override
  State<BasicSplash> createState() => _BasicSplashScreenState();
}

class _BasicSplashScreenState extends State<BasicSplash> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      if (mounted) {
        Navigator.pushReplacementNamed(context, '/home');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.red,
        child: const Center(
          child: Text(
            "Welcome",
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
