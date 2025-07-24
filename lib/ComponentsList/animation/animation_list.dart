// ignore: non_constant_identifier_names
import 'package:flutter/material.dart';
import 'package:flutterhero/Widgets/WidgetsArea.dart';
import '../../Code/animation/animated_align_code.dart';
import '../../Code/animation/animated_container_code.dart';
import '../../Code/animation/animatedbuilder_code.dart';
import '../../Code/animation/fade_transition_code.dart';
import '../../Code/animation/hero_animation_code.dart';
import '../../Code/animation/opacity_animation.dart';
import '../../Code/animation/scale_transition_code.dart';
import '../../Code/animation/slide_transition_code.dart';
import '../../Code/animation/tween_animation_code.dart';
import '../../ViewComponents/animation/animated_align.dart';
import '../../ViewComponents/animation/animated_builder.dart';
import '../../ViewComponents/animation/animated_container.dart';
import '../../ViewComponents/animation/fade_transition.dart';
import '../../ViewComponents/animation/hero_animation.dart';
import '../../ViewComponents/animation/opacity_animation_screen.dart';
import '../../ViewComponents/animation/scale_transition.dart';
import '../../ViewComponents/animation/slide_transition.dart';
import '../../ViewComponents/animation/tween_animation.dart';

var animation_list = [
  WidgetArea(
    code1Title: "Opacity Animation",
    code1: opacityAnimationCode,
    isBorder: true,
    view: SizedBox(
      height: 500,
      width: 300,
      child:  OpacityAnimation(

      ),
    ),
  ),

  WidgetArea(
    code1Title: "Animated Container",
    code1: AnimatedContainerCode,
    isBorder: true,
    view: SizedBox(
      height: 500,
      width: 300,
      child:  ContainerAnimation(),
    ),
  ),

  WidgetArea(
    code1Title: "Hero Animation",
    code1: heroAnimationCode,
    isBorder: true,
    view: SizedBox(
      height: 500,
      width: 300,
      child:  FirstScreen(),
    ),
  ),
  WidgetArea(
    code1Title: "Tween Animation",
    code1: tweenAnimationCode,
    isBorder: true,
    view: const SizedBox(
      height: 500,
      width: 300,
      child:  TweenAnimationExample(),
    ),
  ),

  WidgetArea(
    code1Title: "Animated Builder",
    code1: animatedBuilderCode,
    isBorder: true,
    view: const SizedBox(
      height: 500,
      width: 300,
      child:  AnimatedBuilderExample(),
    ),
  ),

  WidgetArea(
    code1Title: "Scale Transition",
    code1: scaleTransitionCode,
    isBorder: true,
    view: const SizedBox(
      height: 500,
      width: 300,
      child:  ScaleTransitionExample(),
    ),
  ),
  WidgetArea(
    code1Title: "Slide Transition",
    code1: SlideTransitionCode,
    isBorder: true,
    view: const SizedBox(
      height: 500,
      width: 300,
      child:  SlideTransitionExample(),
    ),
  ),
  WidgetArea(
    code1Title: "Fade Transition",
    code1: fadeTransitionCode,
    isBorder: true,
    view: const SizedBox(
      height: 500,
      width: 300,
      child:  FadeTransitionExample(),
    ),
  ),
  WidgetArea(
    code1Title: "Animated Align",
    code1: animated_AlignCode,
    isBorder: true,
    view: const SizedBox(
      height: 500,
      width: 300,
      child:  AnimatedAlignExample(),
    ),
  ),



];
