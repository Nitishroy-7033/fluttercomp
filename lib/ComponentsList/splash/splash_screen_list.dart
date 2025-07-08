// ignore: non_constant_identifier_names
import 'package:flutter/material.dart';
import 'package:flutterhero/Code/splash/basic_splash_code.dart';
import 'package:flutterhero/ViewComponents/splash/basic_splash.dart';
import 'package:flutterhero/Widgets/WidgetsArea.dart';

import '../../Code/splash/animated_splash_code.dart';
import '../../Code/splash/lottie_splash_code.dart';
import '../../ViewComponents/splash/animated_splash.dart';
import '../../ViewComponents/splash/lottie_splash.dart';

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
    code1: animatedSplashCode,
    isBorder: true,
    view: const SizedBox(
      height: 500,
      width: 300,
      child: AnimatedSplash(),
    ),
  ), WidgetArea(
    code1Title: "Animated Lottie Splash Screen",
    code1: lottieSplashCode,
    isBorder: true,
    view: const SizedBox(
      height: 500,
      width: 300,
      child: LottieSplashScreen(),
    ),
  ),

];