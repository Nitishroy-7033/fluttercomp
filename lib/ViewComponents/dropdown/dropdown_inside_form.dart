import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DropdownFormField extends StatefulWidget {
  const DropdownFormField({super.key});

  @override
  State<DropdownFormField> createState() => _DropdownFormFieldState();
}

class _DropdownFormFieldState extends State<DropdownFormField> {
  final _formKey = GlobalKey<FormState>();
  String? selected;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primaryContainer,
      appBar: AppBar(title: const Text("Dropdown in Form")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              DropdownButtonFormField<String>(
                value: selected,
                decoration: const InputDecoration(labelText: "Choose Country"),
                validator: (value) =>
                value == null ? "Please select a country" : null,
                items: ['India', 'USA', 'Canada']
                    .map((item) => DropdownMenuItem(
                  value: item,
                  child: Text(item),
                ))
                    .toList(),
                onChanged: (value) {
                  setState(() => selected = value);
                },
              ),
              const SizedBox(height: 100),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text("Selected: $selected")),
                      );
                    }
                  },
                  child: const Text("Submit"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
