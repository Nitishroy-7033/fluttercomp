// ignore: non_constant_identifier_names
import 'package:flutter/material.dart';
import 'package:flutterhero/Widgets/WidgetsArea.dart';

import '../../Code/pagenav/page_navigation_code.dart';
import '../../ViewComponents/page_navigation/widgets/first_page.dart';

var pageNavigationList=[

  WidgetArea(
    code1Title: "Page navigation Code",
    code1: pageNavigationCode,
    isBorder: true,
    view: SizedBox(
      height: 500,
      width: 300,
      child: FirstPage(),
    ),
  ),
];