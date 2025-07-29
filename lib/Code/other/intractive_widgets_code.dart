
String intractiveWidgetsCode='''import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InteractiveWidgetsPage extends StatefulWidget {
  const InteractiveWidgetsPage({super.key});

  @override
  State<InteractiveWidgetsPage> createState() => _InteractiveWidgetsPageState();
}

class _InteractiveWidgetsPageState extends State<InteractiveWidgetsPage> {
  String dropdownValue = 'One';
  String radioValue = 'Male';
  bool checkboxValue = false;
  double sliderValue = 50;
  bool switchValue = false;
  int selectedSegment = 0;
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Interactive Widgets')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("🔽 DropdownButton"),
            DropdownButton<String>(
              value: dropdownValue,
              onChanged: (String? newValue) {
                setState(() => dropdownValue = newValue!);
              },
              items: <String>['One', 'Two', 'Three']
                  .map<DropdownMenuItem<String>>(
                    (value) => DropdownMenuItem(
                  value: value,
                  child: Text(value),
                ),
              )
                  .toList(),
            ),
            const SizedBox(height: 16),

            const Text("📻 Radio Buttons"),
            Row(
              children: ['Male', 'Female'].map((value) {
                return Expanded(
                  child: RadioListTile(
                    title: Text(value),
                    value: value,
                    groupValue: radioValue,
                    onChanged: (val) => setState(() => radioValue = val!),
                  ),
                );
              }).toList(),
            ),
            const SizedBox(height: 16),

            const Text("☑️ Checkbox"),
            CheckboxListTile(
              title: const Text("Accept Terms"),
              value: checkboxValue,
              onChanged: (bool? value) {
                setState(() => checkboxValue = value!);
              },
            ),
            const SizedBox(height: 16),

            const Text("🎚️ Slider"),
            Slider(
              value: sliderValue,
              min: 0,
              max: 100,
              divisions: 10,
              label: sliderValue.round().toString(),
              onChanged: (value) => setState(() => sliderValue = value),
            ),
            const SizedBox(height: 16),

            const Text("🔘 Switch"),
            SwitchListTile(
              title: const Text("Enable Notifications"),
              value: switchValue,
              onChanged: (bool value) {
                setState(() => switchValue = value);
              },
            ),
            const SizedBox(height: 16),

            const Text("🧩 Segmented Button"),
            SegmentedButton<int>(
              segments: const [
                ButtonSegment(value: 0, label: Text("A")),
                ButtonSegment(value: 1, label: Text("B")),
              ],
              selected: {selectedSegment},
              onSelectionChanged: (values) => setState(() => selectedSegment = values.first),
            ),
            const SizedBox(height: 16),

            const Text("📦 ExpansionTile"),
            ExpansionTile(
              title: const Text("Click to Expand"),
              initiallyExpanded: isExpanded,
              onExpansionChanged: (val) => setState(() => isExpanded = val),
              children: const [
                ListTile(title: Text("Expanded content here")),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
''';