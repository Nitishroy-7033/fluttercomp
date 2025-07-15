import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MultiPageOnboarding extends StatefulWidget {
  const MultiPageOnboarding({super.key});

  @override
  State<MultiPageOnboarding> createState() => _MultiPageOnboardingState();
}

class _MultiPageOnboardingState extends State<MultiPageOnboarding> {
  final PageController _controller = PageController();
  int currentPage = 0;

  final List<Map<String, String>> onboardingData = [
    {
      "image": "assets/photos/onboarding1.svg",
      "title": "Discover Widgets",
      "desc": "Explore every Flutter widget with clean examples."
    },
    {
      "image": "assets/photos/onboarding2.svg",
      "title": "Build UIs Fast",
      "desc": "Get inspired by real UI patterns."
    },
    {
      "image": "assets/photos/onboarding3.svg",
      "title": "Contribute & Learn",
      "desc": "Open source docs by devs, for devs."
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primaryContainer,
      body: PageView.builder(
        controller: _controller,
        itemCount: onboardingData.length,
        onPageChanged: (index) => setState(() => currentPage = index),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(32),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SvgPicture.asset(
                  onboardingData[index]["image"]!,
                  height: 250,
                ),

                const SizedBox(height: 30),
                Text(
                  onboardingData[index]["title"]!,
                  style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10),
                Text(
                  onboardingData[index]["desc"]!,
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: Colors.grey),
                ),
                const SizedBox(height: 30),
                if (index == onboardingData.length - 1)
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
          );
        },
      ),
      bottomSheet: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
            onboardingData.length,
                (i) => Container(
              margin: const EdgeInsets.symmetric(horizontal: 4),
              width: currentPage == i ? 16 : 8,
              height: 4,
              decoration: BoxDecoration(
                color: currentPage == i ? Colors.blue : Colors.grey,
                borderRadius: BorderRadius.circular(4),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
