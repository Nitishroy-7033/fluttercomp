import 'package:flutter/material.dart';

class TimeRangePickerExample extends StatefulWidget {
  const TimeRangePickerExample({super.key});

  @override
  State<TimeRangePickerExample> createState() => _TimeRangePickerExampleState();
}

class _TimeRangePickerExampleState extends State<TimeRangePickerExample> {
  TimeOfDay? startTime;
  TimeOfDay? endTime;

  Future<void> _pickStartTime() async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );
    if (picked != null) setState(() => startTime = picked);
  }

  Future<void> _pickEndTime() async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );
    if (picked != null) setState(() => endTime = picked);
  }

  String formatTime(TimeOfDay? time) {
    if (time == null) return "--:--";
    return "${time.hour.toString().padLeft(2, '0')}:${time.minute.toString().padLeft(2, '0')}";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primaryContainer,
      appBar: AppBar(title: const Text("Time Range Picker")),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ElevatedButton(onPressed: _pickStartTime, child: const Text("Pick Start Time")),
            ElevatedButton(onPressed: _pickEndTime, child: const Text("Pick End Time")),
            const SizedBox(height: 20),
            Text("Start: ${formatTime(startTime)}"),
            Text("End: ${formatTime(endTime)}"),
          ],
        ),
      ),
    );
  }
}
