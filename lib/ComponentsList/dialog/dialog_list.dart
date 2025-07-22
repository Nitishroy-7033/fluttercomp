// ignore: non_constant_identifier_names
import 'package:flutter/material.dart';
import 'package:flutterhero/Widgets/WidgetsArea.dart';
import '../../Code/dialog/alert_dialog_code.dart';
import '../../Code/dialog/buttomsheet_dialog_code.dart';
import '../../Code/dialog/custom_dialog_code.dart';
import '../../Code/dialog/simple_dialog_code.dart';
import '../../ViewComponents/dialog/alert_dialog_screen.dart';
import '../../ViewComponents/dialog/bottom_sheet_dialog.dart';
import '../../ViewComponents/dialog/custom_dialog.dart';
import '../../ViewComponents/dialog/simple_dialog_screen.dart';

var dialogList = [
  WidgetArea(
    code1Title: "Alert Dialog Demo",
    code1: alertDialogCode,
    isBorder: true,
    view: const SizedBox(
      height: 500,
      width: 300,
      child: AlertDialogScreen(),
    ),
  ),

  WidgetArea(
    code1Title: "Simple Dialog Demo",
    code1: simpleDialogCode,
    isBorder: true,
    view: const SizedBox(
      height: 500,
      width: 300,
      child: SimpleDialogScreen(),
    ),
  ),

  WidgetArea(
    code1Title: "Custom Dialog Demo",
    code1: customDialogCode,
    isBorder: true,
    view: const SizedBox(
      height: 500,
      width: 300,
      child: CustomDialogScreen(),
    ),
  ),

  WidgetArea(
    code1Title: "ButtomSheet Dialog Demo",
    code1: buttomSheetCode,
    isBorder: true,
    view: const SizedBox(
      height: 500,
      width: 300,
      child: ButtomSheetDialogScreen(),
    ),
  ),
];
