import 'package:flutter/material.dart';
import 'package:flutterhero/Widgets/WidgetsArea.dart';

import '../../Code/chip/action_chip_code.dart';
import '../../Code/chip/basic_chip_code.dart';
import '../../Code/chip/choice_chip_code.dart';
import '../../Code/chip/filter_chip_code.dart';
import '../../Code/chip/input_chip_code.dart';
import '../../ViewComponents/chip/action_chip_screen.dart';
import '../../ViewComponents/chip/basic_chip_screen.dart';
import '../../ViewComponents/chip/choice_chip_screen.dart';
import '../../ViewComponents/chip/filter_chip_screen.dart';
import '../../ViewComponents/chip/input_chip_screen.dart';

var chiplist = [
  WidgetArea(
    code1Title: "Chip Basic",
    code1: basicChipCode,
    isBorder: true,
    view: const SizedBox(
      height: 500,
      width: 300,
      child: BasicChipScreen(),
    ),
  ),
  WidgetArea(
    code1Title: "Input Chip",
    code1: inputChipCode,
    isBorder: true,
    view: const SizedBox(
      height: 500,
      width: 300,
      child: InputChipScreen(),
    ),
  ),
  WidgetArea(
    code1Title: "Action Chip",
    code1: actionChipCode,
    isBorder: true,
    view: const SizedBox(
      height: 500,
      width: 300,
      child: ActionChipScreen(),
    ),
  ),
  WidgetArea(
    code1Title: "Choice Chip",
    code1: choiceChipCode,
    isBorder: true,
    view: const SizedBox(
      height: 500,
      width: 300,
      child: ChoiceChipScreen(),
    ),
  ),
  WidgetArea(
    code1Title: "Filter Chip",
    code1: filterChipCode,
    isBorder: true,
    view: const SizedBox(
      height: 500,
      width: 300,
      child: FilterChipScreen(),
    ),
  ),


];
