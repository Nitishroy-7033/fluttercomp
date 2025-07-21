import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlignPaddingShowcase extends StatelessWidget {
  const AlignPaddingShowcase({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primaryContainer,
      appBar: AppBar(
        title: const Text('Align & Padding Examples'),
        backgroundColor: Colors.green.shade700,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            // 1. Align bottom right square
            const Text("1. Align Bottom Right Box"),
            SizedBox(
              height: 100,
              child: Align(
                alignment: Alignment.bottomRight,
                child: Container(
                  height: 60,
                  width: 60,
                  color: Colors.green,
                ),
              ),
            ),
            const SizedBox(height: 20),

            // 2. Padding around text
            const Text("2. Padding Around Text"),
            const Padding(
              padding: EdgeInsets.all(12.0),
              child: Text(
                "Hello, Flutter Learner!",
                style: TextStyle(fontSize: 20),
              ),
            ),
            const SizedBox(height: 20),

            // 3. Card with inner padding
            const Text("3. Card With Padding"),
            Card(
              elevation: 4,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: const [
                    Text("Flutter Card", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                    SizedBox(height: 8),
                    Text("Padding inside makes content look good."),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),

            // 4. Align FAB style button
            const Text("4. Align Bottom Center Button"),
            SizedBox(
              height: 100,
              child: Align(
                alignment: Alignment.bottomCenter,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text("FAB Style"),
                ),
              ),
            ),
            const SizedBox(height: 20),

            // 5. Symmetric Padding
            const Text("5. Symmetric Padding"),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 8.0),
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            const SizedBox(height: 20),

            // 6. Align top left Avatar
            const Text("6. Align Top Left Avatar"),
            SizedBox(
              height: 80,
              child: Align(
                alignment: Alignment.topLeft,
                child: CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.green.shade600,
                  child: const Icon(Icons.person, color: Colors.white),
                ),
              ),
            ),
            const SizedBox(height: 20),

            // 7. Gradient with inner padding
            const Text("7. Gradient Box with Padding"),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.green, Colors.teal],
                ),
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Text(
                "This is a nice gradient box",
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),
            const SizedBox(height: 20),

            // 8. Align login button with bottom padding
            const Text("8. Bottom Align with Padding"),
            Padding(
              padding: const EdgeInsets.only(bottom: 20.0),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text("Login"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}