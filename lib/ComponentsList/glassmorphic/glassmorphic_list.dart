import 'package:flutter/material.dart';
import 'package:flutterhero/Widgets/WidgetsArea.dart';
import '../../Code/glassmorphism/glassmorphic_bottomnav_code.dart';
import '../../Code/glassmorphism/glassmorphic_dialog_code.dart';
import '../../Code/glassmorphism/glassmorphic_login_card_code.dart';
import '../../Code/glassmorphism/glassmorphic_profile_code.dart';
import '../../ViewComponents/glassmorphic/glassmmorphic_dialog_box.dart';
import '../../ViewComponents/glassmorphic/glassmorphic_bottomnavigation.dart';
import '../../ViewComponents/glassmorphic/glassmorphic_login_card.dart';
import '../../ViewComponents/glassmorphic/glassmorphic_profile_card.dart';

var glassmorphicList = [
  WidgetArea(
    code1Title: "Glassmorphic Login Card Code",
    code1: glassmorphicLoginCard,
    isBorder: true,
    view: const SizedBox(
      height: 500,
      width: 300,
      child: GlassLoginCard(),
    ),
  ),

  WidgetArea(
    code1Title: "Glassmorphic Bottomnavbar Card Code",
    code1: glassmorphic_bottomnav_code,
    isBorder: true,
    view: const SizedBox(
      height: 500,
      width: 300,
      child: GlassBottomBar(),
    ),
  ),
 WidgetArea(
    code1Title: "Glassmorphic Profile Card Code",
    code1: glassmorphicProfileCode,
    isBorder: true,
    view: const SizedBox(
      height: 500,
      width: 300,
      child: GlassProfileCard(),
    ),
  ), WidgetArea(
    code1Title: "Glassmorphic Dialog Code",
    code1: glassmorphicdialogcode,
    isBorder: true,
    view:  const SizedBox(
      height: 500,
      width: 300,
      child: GlassDialogScreen(),
    ),
  ),


];
