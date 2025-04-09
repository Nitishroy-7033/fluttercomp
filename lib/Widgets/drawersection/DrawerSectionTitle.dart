// widgets/DrawerSectionTitle.dart
import 'package:flutter/material.dart';

class DrawerSectionTitle extends StatelessWidget {
  final String title;

  const DrawerSectionTitle({required this.title, super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.labelMedium,
        ),
      ],
    );
  }
}
