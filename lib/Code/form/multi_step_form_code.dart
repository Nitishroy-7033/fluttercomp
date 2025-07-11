String MultiStepFormCode='''


// multi_step_form.dart
import 'package:flutter/material.dart';

class MultiStepForm extends StatefulWidget {
  const MultiStepForm({super.key});

  @override
  State<MultiStepForm> createState() => _MultiStepFormState();
}

class _MultiStepFormState extends State<MultiStepForm> {
  int _currentStep = 0;
  final _formKeys = [GlobalKey<FormState>(), GlobalKey<FormState>()];
  final nameCtrl = TextEditingController();
  final emailCtrl = TextEditingController();

  void _nextStep() {
    if (_formKeys[_currentStep].currentState!.validate()) {
      if (_currentStep < 1) {
        setState(() => _currentStep += 1);
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Submitted: \${nameCtrl.text}, \${emailCtrl.text}')),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Multi-Step Form')),
      body: Stepper(
        currentStep: _currentStep,
        onStepContinue: _nextStep,
        onStepCancel: _currentStep == 0 ? null : () => setState(() => _currentStep -= 1),
        steps: [
          Step(
            title: const Text('Step 1'),
            isActive: _currentStep == 0,
            content: Form(
              key: _formKeys[0],
              child: TextFormField(
                controller: nameCtrl,
                decoration: const InputDecoration(labelText: 'Name'),
                validator: (v) => v!.isEmpty ? 'Enter name' : null,
              ),
            ),
          ),
          Step(
            title: const Text('Step 2'),
            isActive: _currentStep == 1,
            content: Form(
              key: _formKeys[1],
              child: TextFormField(
                controller: emailCtrl,
                decoration: const InputDecoration(labelText: 'Email'),
                validator: (v) => !v!.contains('@') ? 'Enter valid email' : null,
              ),
            ),
          ),
        ],
      ),
    );
  }
}








''';