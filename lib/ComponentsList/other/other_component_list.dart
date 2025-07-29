// ignore: non_constant_identifier_names
import 'package:flutter/material.dart';
import 'package:flutterhero/Widgets/WidgetsArea.dart';

import '../../Code/other/animated_textkit_code.dart';
import '../../Code/other/confetti_example_code.dart';
import '../../Code/other/date_picker_code.dart';
import '../../Code/other/date_range_picker_code.dart';
import '../../Code/other/flip_card_widgets_code.dart';
import '../../Code/other/intractive_widgets_code.dart';
import '../../Code/other/shimmer_loading_effect_code.dart';
import '../../Code/other/time_range_picker_code.dart';
import '../../ViewComponents/other/animated_textkit_screen.dart';
import '../../ViewComponents/other/confetti_screen.dart';
import '../../ViewComponents/other/date_picker_screen.dart';
import '../../ViewComponents/other/date_range_picker.dart';
import '../../ViewComponents/other/flip_card_widgets_screen.dart';
import '../../ViewComponents/other/intractive_widgets_screen.dart';
import '../../ViewComponents/other/shimmer_loading_screen.dart';
import '../../ViewComponents/other/time_range_picker_screen.dart';

var otherComponentList=[

  WidgetArea(
    code1Title: "Date Picker Code",
    code1: datePickerCode,
    isBorder: true,
    view: const SizedBox(
      height: 500,
      width: 300,
      child: DatePickerExample(),
    ),
  ),
   WidgetArea(
    code1Title: "Date Range Picker Code",
    code1: dateRangePickerCode,
    isBorder: true,
    view: const SizedBox(
      height: 500,
      width: 300,
      child: DateRangePickerExample(),
    ),
  ),
 WidgetArea(
    code1Title: "Time Range Picker Code",
    code1: timerangePickerCode,
    isBorder: true,
    view: const SizedBox(
      height: 500,
      width: 300,
      child: TimeRangePickerExample(),
    ),
  ),


 WidgetArea(
    code1Title: "Interactive Widgets Code",
    code1: intractiveWidgetsCode,
    isBorder: true,
    view: const SizedBox(
      height: 500,
      width: 300,
      child: InteractiveWidgetsPage(),
    ),
  ),
  WidgetArea(
    code1Title: "Add Dependencies",
    code1: shimmerdepcode,
    code2Title: "Shimmer Loading Effect Code",
    code2: shimmerLoadingEffectCode,
    isBorder: true,
    view: const SizedBox(
      height: 500,
      width: 300,
      child: ShimmerLoadingList(),
    ),
  ),

  WidgetArea(
    code1Title: "Add Dependency",
    code1: animatedTexkitdep,
    code2Title: "Animated Textkit Code",
    code2: animatedTextkitCode,
    isBorder: true,
    view: const SizedBox(
      height: 500,
      width: 300,
      child: AnimatedTextExample(),
    ),
  ),

  WidgetArea(
    code1Title: "Add Dependency",
    code1: flipcarddep,
    code2Title: "Flipcard widgets Code",
    code2: flipCardWidgetsCode,
    isBorder: true,
    view: const SizedBox(
      height: 500,
      width: 300,
      child: FlipCardExample(),
    ),
  ),

  WidgetArea(
    code1Title: "Add Dependency",
    code1: confeetidepcode,
    code2Title: "Confetti widgets Code",
    code2: confeetiExampleCode,
    isBorder: true,
    view: const SizedBox(
      height: 500,
      width: 300,
      child: ConfettiExample(),
    ),
  ),


];