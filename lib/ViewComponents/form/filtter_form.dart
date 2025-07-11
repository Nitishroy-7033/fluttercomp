// filter_form.dart
import 'package:flutter/material.dart';

class FilterForm extends StatefulWidget {
  const FilterForm({super.key});

  @override
  State<FilterForm> createState() => _FilterFormState();
}

class _FilterFormState extends State<FilterForm> {
  String? selectedCategory;
  double minPrice = 0;
  double maxPrice = 100;

  final categories = ['Electronics', 'Books', 'Fashion', 'Toys'];

  void applyFilters() {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text("Filters: $selectedCategory, ₹$minPrice - ₹$maxPrice")),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primaryContainer,

      appBar: AppBar(title: const Text("Filter Form")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            DropdownButtonFormField<String>(
              decoration: const InputDecoration(labelText: "Category"),
              items: categories
                  .map((e) => DropdownMenuItem(value: e, child: Text(e)))
                  .toList(),
              onChanged: (val) => setState(() => selectedCategory = val),
            ),
            RangeSlider(
              values: RangeValues(minPrice, maxPrice),
              min: 0,
              max: 1000,
              divisions: 10,
              labels: RangeLabels("₹${minPrice.toInt()}", "₹${maxPrice.toInt()}"),
              onChanged: (values) {
                setState(() {
                  minPrice = values.start;
                  maxPrice = values.end;
                });
              },
            ),
            ElevatedButton(onPressed: applyFilters, child: const Text("Apply Filters")),
          ],
        ),
      ),
    );
  }
}
