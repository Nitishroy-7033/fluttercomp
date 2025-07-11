// survey_form.dart
import 'package:flutter/material.dart';

class SurveyForm extends StatefulWidget {
  const SurveyForm({super.key});

  @override
  State<SurveyForm> createState() => _SurveyFormState();
}

class _SurveyFormState extends State<SurveyForm> {
  String? selectedAnswer;

  void submit() {
    if (selectedAnswer != null) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text("You selected: $selectedAnswer")));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primaryContainer,

      appBar: AppBar(title: const Text("Survey Form")),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(16),
            child: Text("What is your favorite mobile OS?"),
          ),
          RadioListTile(
            title: const Text("Android"),
            value: "Android",
            groupValue: selectedAnswer,
            onChanged: (val) => setState(() => selectedAnswer = val),
          ),
          RadioListTile(
            title: const Text("iOS"),
            value: "iOS",
            groupValue: selectedAnswer,
            onChanged: (val) => setState(() => selectedAnswer = val),
          ),
          RadioListTile(
            title: const Text("Other"),
            value: "Other",
            groupValue: selectedAnswer,
            onChanged: (val) => setState(() => selectedAnswer = val),
          ),
          ElevatedButton(onPressed: submit, child: const Text("Submit")),
        ],
      ),
    );
  }
}
