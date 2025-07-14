// ignore: non_constant_identifier_names
import 'package:flutter/material.dart';
import 'package:flutterhero/Code/splash/basic_splash_code.dart';
import 'package:flutterhero/ViewComponents/splash/basic_splash.dart';
import 'package:flutterhero/Widgets/WidgetsArea.dart';

import '../../Code/dropdown/basic_dropdown_code.dart';
import '../../Code/dropdown/custom_dropdown_code.dart';
import '../../Code/dropdown/dropdown_form_validation.dart';
import '../../Code/dropdown/dropdown_with_hint_icon_code.dart';
import '../../Code/splash/animated_splash_code.dart';
import '../../Code/splash/lottie_splash_code.dart';
import '../../ViewComponents/dropdown/basic_dropdown.dart';
import '../../ViewComponents/dropdown/custom_dropdown.dart';
import '../../ViewComponents/dropdown/dropdown_inside_form.dart';
import '../../ViewComponents/dropdown/dropdown_with_hint_icon.dart';
import '../../ViewComponents/splash/animated_splash.dart';
import '../../ViewComponents/splash/lottie_splash.dart';

var DropdownScreenList=[

  WidgetArea(
    code1Title: "Basic Dropdown Screen Code",
    code1: basicDropdownCode,
    isBorder: true,
    view: const SizedBox(
      height: 500,
      width: 300,
      child: BasicDropdown(),
    ),
  ),
  WidgetArea(
    code1Title: "Styled Dropdown Code",
    code1: dropdownwithIconCode,
    isBorder: true,
    view: const SizedBox(
      height: 500,
      width: 300,
      child: StyledDropdown(),
    ),
  ),

  WidgetArea(
    code1Title: "Dropdown Form Validation Code",
    code1: dropDownFormValidation,
    isBorder: true,
    view: const SizedBox(
      height: 500,
      width: 300,
      child: DropdownFormField(),
    ),
  ),
  WidgetArea(
    code1Title: "Custom Dropdown Code",
    code1: CustomDropdownCode,
    isBorder: true,
    view: const SizedBox(
      height: 500,
      width: 300,
      child: ObjectDropdown(),
    ),
  ),



];