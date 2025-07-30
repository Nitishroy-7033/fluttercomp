import 'package:flutter/material.dart';
import 'package:signature/signature.dart';

class SignaturePadExample extends StatelessWidget {
  final SignatureController controller = SignatureController(penStrokeWidth: 2, penColor: Colors.black);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primaryContainer,
      appBar: AppBar(title: Text('Signature Pad')),
      body: Column(
        children: [
          Signature(controller: controller, height: 300, backgroundColor: Colors.grey[200]!),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(onPressed: () => controller.clear(), child: Text('Clear')),
            ],
          ),
        ],
      ),
    );
  }
}
