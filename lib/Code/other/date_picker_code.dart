String datePickerCode='''import 'package:flutter/material.dart';

class DatePickerExample extends StatelessWidget {
  const DatePickerExample({super.key});

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(), // current date
      firstDate: DateTime(2000), // start date
      lastDate: DateTime(2100), // end date
    );
    if (picked != null) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Selected date: \${picked.toLocal()}".split(' ')[0])),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primaryContainer,
      appBar: AppBar(title: const Text("Date Picker")),
      body: Center(
        child: ElevatedButton(
          onPressed: () => _selectDate(context),
          child: const Text("Pick a Date"),
        ),
      ),
    );
  }
}''';