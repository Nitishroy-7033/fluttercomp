import 'package:flutter/material.dart';
import 'package:flutterhero/Config/AssetsPath.dart';
import 'package:flutterhero/Provider/drawerProvider.dart';
import 'package:flutterhero/Widgets/drawersection/ThemeSwitcher.dart';
import 'package:flutterhero/Widgets/drawersection/drawer_header_logo.dart';
import 'package:flutterhero/Widgets/drawersection/drawer_search_box.dart';
import 'package:flutterhero/Widgets/drawersection/drawer_sections.dart';
import 'package:flutterhero/Widgets/drawersection/drawermenuSection.dart';
import 'package:provider/provider.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 200,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            const SizedBox(height: 20),
            const DrawerHeaderLogo(),
            const SizedBox(height: 20),
            const DrawerSearchBox(),
            const SizedBox(height: 20),
            Expanded(
              child: SingleChildScrollView(
                child: Consumer<DrawerProvider>(
                  builder: (context, drawerProvider, _) {
                    return Column(
                      children: drawerSections.map((sectionMap) {
                        final title = sectionMap.keys.first;
                        final items = sectionMap[title]!;

                        return DrawerMenuSection(
                          title: title,
                          items: items.map((item) {
                            return DrawerMenuItem(
                              title: item.title,
                              iconPath: item.iconPath,
                              onTap: () =>
                                  drawerProvider.seletedMenu(item.index),
                              isSelected: drawerProvider.selectedPageIndex ==
                                  item.index,
                            );
                          }).toList(),
                        );
                      }).toList(),
                    );
                  },
                ),
              ),
            ),
            const ThemeSwitcher(),
          ],
        ),
      ),
    );
  }
}
