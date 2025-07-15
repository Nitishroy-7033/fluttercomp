// ignore: non_constant_identifier_names
import 'package:flutter/material.dart';
import 'package:flutterhero/Widgets/WidgetsArea.dart';

import '../../Code/onboarding/lottie_onboarding_code.dart';
import '../../Code/onboarding/multipage_onboarding_page.dart';
import '../../Code/onboarding/simple_onboarding_code.dart';
import '../../ViewComponents/onboarding/lottie_onboarding.dart';
import '../../ViewComponents/onboarding/multipage_onboarding_screen.dart';
import '../../ViewComponents/onboarding/simple_onboarding_screen.dart';

var OnboardingScreenList=[

  WidgetArea(
    code1Title: "Simple Onboarding Code",
    code1: SimpleOnboardingCode,
    isBorder: true,
    view: const SizedBox(
      height: 500,
      width: 300,
      child: SimpleOnboarding(),
    ),
  ),

  WidgetArea(
    code1Title: "Multipage Onboarding Screen Code",
    code1: MultipageOnboardingPageCode,
    isBorder: true,
    view: const SizedBox(
      height: 500,
      width: 300,
      child: MultiPageOnboarding(),
    ),
  ),

  WidgetArea(
    code1Title: "Lottie Onboarding Screen Code",
    code1: LottieOnboardingCode,
    isBorder: true,
    view: const SizedBox(
      height: 500,
      width: 300,
      child: LottieOnboarding(),
    ),
  ),
];