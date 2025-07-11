// dynamic_form.dart
import 'package:flutter/material.dart';

class DynamicForm extends StatefulWidget {
  const DynamicForm({super.key});

  @override
  State<DynamicForm> createState() => _DynamicFormState();
}

class _DynamicFormState extends State<DynamicForm> {
  final List<TextEditingController> controllers = [];

  void addField() {
    setState(() {
      controllers.add(TextEditingController());
    });
  }

  void submit() {
    for (var ctrl in controllers) {
      if (ctrl.text.isEmpty) {
        ScaffoldMessenger.of(context)
            .showSnackBar(const SnackBar(content: Text('All fields must be filled')));
        return;
      }
    }

    final data = controllers.map((e) => e.text).join(', ');
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Submitted: $data")));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primaryContainer,

      appBar: AppBar(title: const Text("Dynamic Form")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            ...List.generate(controllers.length, (index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: TextField(
                  controller: controllers[index],
                  decoration: InputDecoration(labelText: 'Field ${index + 1}'),
                ),
              );
            }),
            const SizedBox(height: 20),
            ElevatedButton(onPressed: addField, child: const Text("Add Field")),
            const SizedBox(height: 10),
            ElevatedButton(onPressed: submit, child: const Text("Submit")),
          ],
        ),
      ),
    );
  }
}
