import 'package:flutterhero/Config/AssetsPath.dart';
import 'package:flutterhero/model/drawer_menu_model.dart';

final List<Map<String, List<DrawerMenuModel>>> drawerSections = [
  {
    "BASIC": [
      DrawerMenuModel(title: "Home", iconPath: IconsAssets.home, index: 0),
      DrawerMenuModel(
          title: "Buttons", iconPath: IconsAssets.addIcon, index: 1),
      DrawerMenuModel(title: "App Bar", iconPath: IconsAssets.appbar, index: 2),
    ]
  },
  {
    "NAVIGATION": [
      DrawerMenuModel(
          title: "Bottom Nav", iconPath: IconsAssets.bottomNav, index: 3),
      DrawerMenuModel(title: "Page Nav", iconPath: IconsAssets.route, index: 4),
      DrawerMenuModel(title: "Drawer", iconPath: IconsAssets.route, index: 5),
      DrawerMenuModel(title: "Tab bar", iconPath: IconsAssets.route, index: 6),
    ]
  },
  {
    "INPUT": [
      DrawerMenuModel(
          title: "Input Text", iconPath: IconsAssets.bottomNav, index: 7),

      DrawerMenuModel(title: "Form", iconPath: IconsAssets.route, index: 8),
      DrawerMenuModel(
          title: "Dropdown", iconPath: IconsAssets.route, index: 9),
    ]
  },
  {
    "STARTUP": [
      DrawerMenuModel(
          title: "Splash", iconPath: IconsAssets.bottomNav, index: 10),
      DrawerMenuModel(
          title: "Onboarding", iconPath: IconsAssets.bottomNav, index: 11),
    ]
  },
  {
    "LAYOUT": [
      DrawerMenuModel(
          title: "Row / Column", iconPath: IconsAssets.bottomNav, index: 12),
      DrawerMenuModel(
          title: "Stack", iconPath: IconsAssets.bottomNav, index: 13),
      DrawerMenuModel(
          title: "Container", iconPath: IconsAssets.bottomNav, index: 14),
      DrawerMenuModel(
          title: "Align / Padding", iconPath: IconsAssets.bottomNav, index: 15),
    ]
  },
  {
    "DISPLAY": [
      DrawerMenuModel(
          title: "Card", iconPath: IconsAssets.bottomNav, index: 16),
      DrawerMenuModel(
          title: "Dialog", iconPath: IconsAssets.bottomNav, index: 17),
      DrawerMenuModel(
          title: "Chip", iconPath: IconsAssets.bottomNav, index: 18),
    ]
  },
  {
    "ADVANCED": [
      DrawerMenuModel(
          title: "Animation", iconPath: IconsAssets.bottomNav, index: 19),
      DrawerMenuModel(
          title: "Glassmorphism", iconPath: IconsAssets.bottomNav, index: 20),
      DrawerMenuModel(
          title: "Neomorphic", iconPath: IconsAssets.bottomNav, index: 21),
    ]
  },
];
