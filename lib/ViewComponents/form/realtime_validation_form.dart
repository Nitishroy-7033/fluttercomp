// realtime_validation_form.dart
import 'package:flutter/material.dart';

class RealTimeValidationForm extends StatefulWidget {
  const RealTimeValidationForm({super.key});

  @override
  State<RealTimeValidationForm> createState() => _RealTimeValidationFormState();
}

class _RealTimeValidationFormState extends State<RealTimeValidationForm> {
  String? _errorText;
  final _controller = TextEditingController();

  void validate(String value) {
    setState(() {
      if (value.length < 6) {
        _errorText = "Too short";
      } else if (!value.contains('@')) {
        _errorText = "Must include @";
      } else {
        _errorText = null;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primaryContainer,

      appBar: AppBar(title: const Text("Real-time Validation")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: TextField(
          controller: _controller,
          decoration: InputDecoration(
            labelText: "Email",
            errorText: _errorText,
          ),
          onChanged: validate,
        ),
      ),
    );
  }
}
