import 'package:flutter/material.dart';
import 'package:flutterhero/Widgets/WidgetsArea.dart';

import '../../Code/drawer/basic_drawer_code.dart';
import '../../ViewComponents/drawer/basic_drawer.dart';

var DrawerList = [
  WidgetArea(
    code1Title: "Basic Drawer Code",
    code1: BasicDrawerCode,
    isBorder: true,
    view: const SizedBox(
      height: 500,
      width: 300,
      child: BasicDrawer(),
    ),
  ),

];
