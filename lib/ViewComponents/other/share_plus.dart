import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';

class ShareExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primaryContainer,
      appBar: AppBar(title: const Text("Share Plus")),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Share.share('Check out this awesome Flutter UI!');
          },
          child: const Text("Share Now"),
        ),
      ),
    );
  }
}
