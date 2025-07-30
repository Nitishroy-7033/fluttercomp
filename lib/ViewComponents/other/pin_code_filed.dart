import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class PinCodeExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primaryContainer,
      appBar: AppBar(title: Text('PIN Code')),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: PinCodeTextField(
          appContext: context,
          length: 4,
          onChanged: (value) {},
          onCompleted: (value) => print("Entered PIN: $value"),
        ),
      ),
    );
  }
}
