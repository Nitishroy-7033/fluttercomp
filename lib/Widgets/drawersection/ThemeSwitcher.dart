// widgets/ThemeSwitcher.dart
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutterhero/Config/AssetsPath.dart';
import 'package:flutterhero/Provider/ThemeProvider.dart';
import 'package:provider/provider.dart';


class ThemeSwitcher extends StatelessWidget {
  const ThemeSwitcher({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeProvider>(
      builder: (context, value, child) {
        return Container(
          padding: const EdgeInsets.all(5),
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Theme.of(context).colorScheme.surface,
          ),
          child: Row(
            children: [
              Expanded(
                child: _ThemeButton(
                  icon: IconsAssets.sun,
                  label: "LIGHT",
                  isSelected: value.themeMode == ThemeMode.light,
                  onTap: () {
                    value.changeTheme(ThemeMode.light);
                  },
                ),
              ),
              Expanded(
                child: _ThemeButton(
                  icon: IconsAssets.moon,
                  label: "DARK",
                  isSelected: value.themeMode == ThemeMode.dark,
                  onTap: () {
                    value.changeTheme(ThemeMode.dark);
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

class _ThemeButton extends StatelessWidget {
  final String icon;
  final String label;
  final bool isSelected;
  final VoidCallback onTap;

  const _ThemeButton({
    required this.icon,
    required this.label,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      hoverColor: Colors.transparent,
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      focusColor: Colors.transparent,
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: isSelected
              ? Theme.of(context).colorScheme.secondaryContainer
              : null,
        ),

        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              icon,
              width: 15,
              color: Theme.of(context).colorScheme.onSurface,
            ),
            const SizedBox(width: 6),
            Flexible(
              child: Text(
                label,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 12,
                  color: Theme.of(context).colorScheme.onSurface,
                ),
              ),
            ),
          ],
        ),

      ),
    );
  }
}
