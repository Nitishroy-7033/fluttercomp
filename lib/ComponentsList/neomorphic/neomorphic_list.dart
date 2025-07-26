

import 'package:flutter/material.dart';
import 'package:flutterhero/Widgets/WidgetsArea.dart';
import '../../Code/neomorphic/neomeric_toggle_switch_code.dart';
import '../../Code/neomorphic/neomorphic_button_code.dart';
import '../../Code/neomorphic/neomorphic_code.dart';
import '../../Code/neomorphic/neomorphic_textfiled_code.dart';
import '../../ViewComponents/neomorphic/NeumorphicUI.dart';
import '../../ViewComponents/neomorphic/neomorphic_button.dart';
import '../../ViewComponents/neomorphic/neomorphic_textfiled.dart';
import '../../ViewComponents/neomorphic/neomorphic_toggle_switch.dart';

var neoMorphicList = [
  WidgetArea(
    code1Title: "Neomorphic UI Code",
    code1: neomorphic_Code,
    isBorder: true,
    view: const SizedBox(
      height: 500,
      width: 300,
      child: NeumorphicUI(),
    ),
  ),

  WidgetArea(
    code1Title: "Neomorphic Button Code",
    code1: neoMorphicButtonCode,
    isBorder: true,
    view:  SizedBox(
      height: 500,
      width: 300,
      child: NeumorphicButton(icon: Icons.favorite, onPressed: () {  },),
    ),
  ),


  WidgetArea(
    code1Title: "Neomorphic Toggleswitch Code",
    code1: neomorphic_toggleswitch_code,
    isBorder: true,
    view:  const SizedBox(
      height: 500,
      width: 300,
      child: NeumorphicSwitch(),
    ),
  ),
  WidgetArea(
    code1Title: "Neomorphic Textfiled Code",
    code1: neomorphic_textFiled_code,
    isBorder: true,
    view:  const SizedBox(
      height: 500,
      width: 300,
      child: NeumorphicTextField(hintText: 'Enter your name',),
    ),
  ),



];
