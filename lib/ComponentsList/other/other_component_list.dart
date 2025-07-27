// ignore: non_constant_identifier_names
import 'package:flutter/material.dart';
import 'package:flutterhero/Widgets/WidgetsArea.dart';

import '../../Code/other/date_picker_code.dart';
import '../../Code/other/date_range_picker_code.dart';
import '../../Code/other/time_range_picker_code.dart';
import '../../ViewComponents/other/date_picker_screen.dart';
import '../../ViewComponents/other/date_range_picker.dart';
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



];