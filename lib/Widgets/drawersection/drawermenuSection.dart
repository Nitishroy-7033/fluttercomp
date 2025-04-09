import 'package:flutter/material.dart';
import 'package:flutterhero/Widgets/drawersection/DrawerMenu.dart';


class DrawerMenuItem {
  final String title;
  final String iconPath;
  final VoidCallback onTap;
  final bool isSelected;

  DrawerMenuItem({
    required this.title,
    required this.iconPath,
    required this.onTap,
    required this.isSelected,
  });
}

class DrawerMenuSection extends StatelessWidget {
  final String title;
  final List<DrawerMenuItem> items;

  const DrawerMenuSection({
    super.key,
    required this.title,
    required this.items,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: Theme.of(context).textTheme.labelMedium),
        const SizedBox(height: 10),
        ...items.map((item) => MyDrawerMenu(
              title: item.title,
              icon: item.iconPath,
              onPress: item.onTap,
              isSeleted: item.isSelected,
            )),
        const SizedBox(height: 20),
      ],
    );
  }
}
