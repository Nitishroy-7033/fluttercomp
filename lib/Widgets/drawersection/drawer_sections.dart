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
    ]
  },
  {
    "INPUT": [
      DrawerMenuModel(
          title: "Input Text", iconPath: IconsAssets.bottomNav, index: 5),
      DrawerMenuModel(
          title: "Containers", iconPath: IconsAssets.route, index: 6),
    ]
  },
  {
    "SCREEN": [
      DrawerMenuModel(
          title: "Splash", iconPath: IconsAssets.bottomNav, index: 7),
    ]
  },
];
