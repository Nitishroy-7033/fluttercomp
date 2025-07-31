import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

class ZoomImageScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primaryContainer,
      appBar: AppBar(title: const Text("Photo View")),
      body: PhotoView(
        imageProvider: AssetImage('assets/photos/container.png'), // Or use NetworkImage
      ),
    );
  }
}
