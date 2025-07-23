import 'package:flutter/material.dart';

class FilterChipScreen extends StatefulWidget {
  const FilterChipScreen({super.key});

  @override
  State<FilterChipScreen> createState() => _FilterChipScreenState();
}

class _FilterChipScreenState extends State<FilterChipScreen> {
  final List<String> filters = ["Bike", "Car", "Bus"];
  final List<String> selectedFilters = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primaryContainer,
      appBar: AppBar(title: const Text("Filter Chip")),
      body: Center(
        child: Wrap(
          spacing: 10,
          children: filters.map((filter) {
            return FilterChip(
              label: Text(filter),
              selected: selectedFilters.contains(filter),
              selectedColor: Colors.green.shade200,
              onSelected: (bool selected) {
                setState(() {
                  selected
                      ? selectedFilters.add(filter)
                      : selectedFilters.remove(filter);
                });
              },
            );
          }).toList(),
        ),
      ),
    );
  }
}
