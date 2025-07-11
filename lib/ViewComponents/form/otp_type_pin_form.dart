// otp_form.dart
import 'package:flutter/material.dart';

class OTPForm extends StatefulWidget {
  const OTPForm({super.key});

  @override
  State<OTPForm> createState() => _OTPFormState();
}

class _OTPFormState extends State<OTPForm> {
  final List<TextEditingController> _controllers =
  List.generate(4, (_) => TextEditingController());

  void verify() {
    final otp = _controllers.map((e) => e.text).join();
    if (otp.length == 4) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("OTP: $otp")));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primaryContainer,

      appBar: AppBar(title: const Text("OTP Form")),
      body: Padding(
        padding: const EdgeInsets.all(40),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: List.generate(4, (index) {
            return SizedBox(
              width: 50,
              child: TextField(
                controller: _controllers[index],
                keyboardType: TextInputType.number,
                textAlign: TextAlign.center,
                maxLength: 1,
                onChanged: (val) {
                  if (val.isNotEmpty && index < 3) {
                    FocusScope.of(context).nextFocus();
                  }
                },
                decoration: const InputDecoration(counterText: ''),
              ),
            );
          }),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: verify,
        label: const Text("Verify"),
        icon: const Icon(Icons.check),
      ),
    );
  }
}
