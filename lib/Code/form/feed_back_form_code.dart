String FeedBackFormCode='''


// feedback_form.dart
import 'package:flutter/material.dart';

class FeedbackForm extends StatefulWidget {
  const FeedbackForm({super.key});

  @override
  State<FeedbackForm> createState() => _FeedbackFormState();
}

class _FeedbackFormState extends State<FeedbackForm> {
  final _controller = TextEditingController();
  double rating = 3;

  void submit() {
    if (_controller.text.isNotEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Rating: \$rating\nFeedback: \${_controller.text}")),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primaryContainer,

      appBar: AppBar(title: const Text("Feedback Form")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              controller: _controller,
              maxLines: 3,
              decoration: const InputDecoration(labelText: "Your Feedback"),
            ),
            const SizedBox(height: 20),
            Text("Rating: \${rating.toStringAsFixed(1)}"),
            Slider(
              min: 1,
              max: 5,
              divisions: 4,
              label: rating.toStringAsFixed(1),
              value: rating,
              onChanged: (val) => setState(() => rating = val),
            ),
            ElevatedButton(onPressed: submit, child: const Text("Submit")),
          ],
        ),
      ),
    );
  }
}




''';