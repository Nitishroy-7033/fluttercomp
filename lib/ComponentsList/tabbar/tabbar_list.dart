// ignore: non_constant_identifier_names
import 'package:flutter/material.dart';
import 'package:flutterhero/Code/splash/basic_splash_code.dart';
import 'package:flutterhero/ViewComponents/splash/basic_splash.dart';
import 'package:flutterhero/Widgets/WidgetsArea.dart';

import '../../Code/tabbar/basic_tabbar_code.dart';
import '../../Code/tabbar/custom_tabbar_code.dart';
import '../../Code/tabbar/icon_only_tabbar_code.dart';
import '../../Code/tabbar/silver_tabbar_code.dart';
import '../../ViewComponents/tabbar/basic_tab_bar.dart';
import '../../ViewComponents/tabbar/custom_tab_bar.dart';
import '../../ViewComponents/tabbar/icon_only_tabbar.dart';
import '../../ViewComponents/tabbar/silver_tab_bar.dart';

var TabBarList = [
  WidgetArea(
    code1Title: "Basic Tabbar Code",
    code1: BasicTabBarcode,
    isBorder: true,
    view: const SizedBox(
      height: 500,
      width: 300,
      child: BasicTabBar(),
    ),
  ),
  WidgetArea(
    code1Title: "Icon Only TabBar Code",
    code1: IconOnlyTabBarCode,
    isBorder: true,
    view: const SizedBox(
      height: 500,
      width: 300,
      child: IconOnlyTabBar(),
    ),
  ),

  WidgetArea(
    code1Title: "Silver Tabbar Code",
    code1: SilverTabBarCode,
    isBorder: true,
    view: const SizedBox(
      height: 500,
      width: 300,
      child: SilverTabBar(),
    ),
  ),
  WidgetArea(
    code1Title: "Custom Tabbar Code",
    code1: CustomTabBarCode,
    isBorder: true,
    view: const SizedBox(
      height: 500,
      width: 300,
      child: CustomTabBar(),
    ),
  ),
];
