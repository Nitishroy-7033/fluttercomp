String SignUpCode='''



// signup_form.dart
import 'package:flutter/material.dart';

class SignupForm extends StatefulWidget {
  const SignupForm({super.key});

  @override
  State<SignupForm> createState() => _SignupFormState();
}

class _SignupFormState extends State<SignupForm> {
  final _formKey = GlobalKey<FormState>();
  final passCtrl = TextEditingController();
  final confirmCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Signup")),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                decoration: const InputDecoration(labelText: "Full Name"),
                validator: (v) =>
                v!.isEmpty ? 'Please enter your name' : null,
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: "Email"),
                validator: (v) =>
                !v!.contains('@') ? 'Invalid email' : null,
              ),
              TextFormField(
                controller: passCtrl,
                obscureText: true,
                decoration: const InputDecoration(labelText: "Password"),
                validator: (v) =>
                v!.length < 6 ? 'Min 6 chars required' : null,
              ),
              TextFormField(
                controller: confirmCtrl,
                obscureText: true,
                decoration: const InputDecoration(labelText: "Confirm Password"),
                validator: (v) =>
                v != passCtrl.text ? 'Passwords do not match' : null,
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                child: const Text("Sign Up"),
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text("Signup successful")),
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