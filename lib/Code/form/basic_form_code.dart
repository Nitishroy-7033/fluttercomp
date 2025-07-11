String BasicFormCode='''



// basic_form.dart
import 'package:flutter/material.dart';

class BasicForm extends StatefulWidget {
  const BasicForm({super.key});

  @override
  State<BasicForm> createState() => _BasicFormState();
}

class _BasicFormState extends State<BasicForm> {
  final _formKey = GlobalKey<FormState>();
  final nameCtrl = TextEditingController();
  final emailCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primaryContainer,
      appBar: AppBar(title: const Text("Basic Form")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: nameCtrl,
                decoration: const InputDecoration(labelText: "Name"),
                validator: (value) =>
                value!.isEmpty ? 'Please enter your name' : null,
              ),
              TextFormField(
                controller: emailCtrl,
                decoration: const InputDecoration(labelText: "Email"),
                validator: (value) =>
                !value!.contains('@') ? 'Enter valid email' : null,
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                child: const Text("Submit"),
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    ScaffoldMessenger.of(context).showSnackBar(
             SnackBar(content: Text('Submitted: \${nameCtrl.text}'))     
             
                  );
                  }
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}







''';