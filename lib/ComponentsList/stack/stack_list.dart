// ignore: non_constant_identifier_names
import 'package:flutter/material.dart';
import 'package:flutterhero/Widgets/WidgetsArea.dart';

import '../../Code/stack/gradient_stack_code.dart';
import '../../Code/stack/simple_stack.dart';
import '../../Code/stack/stack_with_image_code.dart';
import '../../ViewComponents/row_column/demo_row_column.dart';
import '../../ViewComponents/stack/gradient_stack_screen.dart';
import '../../ViewComponents/stack/simple_stack.dart';
import '../../ViewComponents/stack/stack_with_profile_image.dart';

var stackList = [
  WidgetArea(
    code1Title: "Simple Stack Demo",
    code1: simpleStackCode,
    isBorder: true,
    view: const SizedBox(
      height: 500,
      width: 300,
      child: SimpleStackExample(),
    ),
  ),

  WidgetArea(
    code1Title: "Stack with Image",
    code1: StackwithImageCode,
    isBorder: true,
    view: const SizedBox(
      height: 500,
      width: 300,
      child: StackWithProfileImage(),
    ),
  ),
  WidgetArea(
    code1Title: "Stack with Gradient",
    code1: gradientStackCode,
    isBorder: true,
    view: const SizedBox(
      height: 500,
      width: 300,
      child: GradientStackScreen(),
    ),
  ),



];
