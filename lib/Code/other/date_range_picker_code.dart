String dateRangePickerCode='''
import 'package:flutter/material.dart';

class DateRangePickerExample extends StatelessWidget {
  const DateRangePickerExample({super.key});

  Future<void> _selectDateRange(BuildContext context) async {
    final DateTimeRange? picked = await showDateRangePicker(
      context: context,
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );
    if (picked != null) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("From: \${picked.start.toLocal()} To: \${picked.end.toLocal()}")),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primaryContainer,
      appBar: AppBar(title: const Text("Date Range Picker")),
      body: Center(
        child: ElevatedButton(
          onPressed: () => _selectDateRange(context),
          child: const Text("Pick Date Range"),
        ),
      ),
    );
  }
}''';