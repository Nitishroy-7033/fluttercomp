// ignore: non_constant_identifier_names
import 'package:flutter/material.dart';
import 'package:flutterhero/Code/splash/basic_splash_code.dart';
import 'package:flutterhero/ViewComponents/splash/basic_splash.dart';
import 'package:flutterhero/Widgets/WidgetsArea.dart';
import 'package:highlight/languages/basic.dart';

var SplashScreenList=[

 WidgetArea(
    code1Title: "Basic Splash Screen",
    code1: BasicSplashCode,
    isBorder: true,
    view: const SizedBox(
      height: 500,
      width: 300,
      child: BasicSplash(),
    ),
  ),

   WidgetArea(
    code1Title: "Animated Splash Screen",
    code1: BasicSplashCode,
    isBorder: true,
    view: const SizedBox(
      height: 500,
      width: 300,
      child: BasicSplash(),
    ),
  ),

];