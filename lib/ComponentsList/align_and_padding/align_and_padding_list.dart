// ignore: non_constant_identifier_names
import 'package:flutter/material.dart';
import 'package:flutterhero/Widgets/WidgetsArea.dart';
import '../../Code/align_and_padding/align_and_padding_code.dart';
import '../../ViewComponents/align_and_padding/align_and_padding_example.dart';
import '../../ViewComponents/stack/simple_stack.dart';

var align_and_paddingList = [
  WidgetArea(
    code1Title: "Align and Padding Demo",
    code1: align_and_paddingCode,
    isBorder: true,
    view: const SizedBox(
      height: 500,
      width: 300,
      child: AlignPaddingShowcase(),
    ),
  ),



];
