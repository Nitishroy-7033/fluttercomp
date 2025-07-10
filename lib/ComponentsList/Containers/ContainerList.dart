
import 'package:flutter/material.dart';
import 'package:flutterhero/Code/Containers/ContainerCode.dart';
import 'package:flutterhero/Code/Containers/basic_color_container_code.dart';
import 'package:flutterhero/ViewComponents/Containers/basic_color_container.dart';
import 'package:flutterhero/Widgets/WidgetsArea.dart';

import '../../ViewComponents/Containers/Glassmorphic_container.dart';
import '../../ViewComponents/Containers/Interactive_Card _with_InkWell.dart';
import '../../ViewComponents/Containers/border_rounded_shadow_container.dart';
import '../../ViewComponents/Containers/circle_container.dart';
import '../../ViewComponents/Containers/container_with_bg_image.dart';
import '../../ViewComponents/Containers/fixed_size_alignment.dart';
import '../../ViewComponents/Containers/gradient_background_container.dart';
import '../../ViewComponents/Containers/transform_container_roated.dart';
import '../../ViewComponents/Containers/using_constraints.dart';

var containerList = [
  WidgetArea(
    code1Title: "Basic Color uContainer Code",
    code1: basicColorContainerCode,
    code2Title: "Basic Container API Code",
    code2: basicContainerAPICode,
    code3Title: "Basic Container Error Code",
    code3: basicContainerErrorCode,
    
    isBorder: true,
    view: const SizedBox(
      height: 200,
      width: 300,
      child: BasicColorContainer(),
    ),
  ),
  WidgetArea(
    code1Title: "Basic Container Code",
    code1: basicContainerCode,
    code2Title: "Basic Container API Code",
    code2: basicContainerAPICode,
    code3Title: "Basic Container Error Code",
    code3: basicContainerErrorCode,

    isBorder: true,
    view: const SizedBox(
      height: 200,
      width: 300,
      child: BorderRoundedShadowContainer(),
    ),
  ),
  WidgetArea(
    code1Title: "Basic Container Code",
    code1: basicContainerCode,
    code2Title: "Basic Container API Code",
    code2: basicContainerAPICode,
    code3Title: "Basic Container Error Code",
    code3: basicContainerErrorCode,

    isBorder: true,
    view: const SizedBox(
      height: 200,
      width: 200,
      child: GradientBackgroundContainer(),
    ),
  ),
  WidgetArea(
    code1Title: "Basic Container Code",
    code1: basicContainerCode,
    code2Title: "Basic Container API Code",
    code2: basicContainerAPICode,
    code3Title: "Basic Container Error Code",
    code3: basicContainerErrorCode,

    isBorder: true,
    view: const SizedBox(
      height: 200,
      width: 200,
      child: ContainerWithBgImage(),
    ),
  ),
  WidgetArea(
    code1Title: "Basic Container Code",
    code1: basicContainerCode,
    code2Title: "Basic Container API Code",
    code2: basicContainerAPICode,
    code3Title: "Basic Container Error Code",
    code3: basicContainerErrorCode,

    isBorder: true,
    view: const SizedBox(
      height: 200,
      width: 200,
      child: FixedSizeAlignment(),
    ),
  ),

  WidgetArea(
    code1Title: "Basic Container Code",
    code1: basicContainerCode,
    code2Title: "Basic Container API Code",
    code2: basicContainerAPICode,
    code3Title: "Basic Container Error Code",
    code3: basicContainerErrorCode,

    isBorder: true,
    view: const SizedBox(
      height: 200,
      width: 200,
      child: UsingConstraints(),
    ),
  ),

  WidgetArea(
    code1Title: "Basic Container Code",
    code1: basicContainerCode,
    code2Title: "Basic Container API Code",
    code2: basicContainerAPICode,
    code3Title: "Basic Container Error Code",
    code3: basicContainerErrorCode,

    isBorder: true,
    view: const SizedBox(
      height: 200,
      width: 200,
      child: TransformContainerRoated(),
    ),
  ),

  WidgetArea(
    code1Title: "Basic Container Code",
    code1: basicContainerCode,
    code2Title: "Basic Container API Code",
    code2: basicContainerAPICode,
    code3Title: "Basic Container Error Code",
    code3: basicContainerErrorCode,

    isBorder: true,
    view: const SizedBox(
      height: 200,
      width: 200,
      child: CircleContainer(),
    ),
  ),
  WidgetArea(
    code1Title: "Basic Container Code",
    code1: basicContainerCode,
    code2Title: "Basic Container API Code",
    code2: basicContainerAPICode,
    code3Title: "Basic Container Error Code",
    code3: basicContainerErrorCode,

    isBorder: true,
    view: const SizedBox(
      height: 200,
      width: 200,
      child: TappableContainer(),
    ),
  ),
  WidgetArea(
    code1Title: "Basic Container Code",
    code1: basicContainerCode,
    code2Title: "Basic Container API Code",
    code2: basicContainerAPICode,
    code3Title: "Basic Container Error Code",
    code3: basicContainerErrorCode,

    isBorder: true,
    view: const SizedBox(
      height: 200,
      width: 400,
      child: FrostedGlassCard(),
    ),
  ),
];
