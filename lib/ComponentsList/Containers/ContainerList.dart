
import 'package:flutter/material.dart';
import 'package:flutterhero/Code/Containers/ContainerCode.dart';
import 'package:flutterhero/ViewComponents/Containers/SimpleContainer.dart';
import 'package:flutterhero/Widgets/WidgetsArea.dart';

var containerList = [
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
      child: Simplecontainer(),
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
      child: Simplecontainer(),
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
      child: Simplecontainer(),
    ),
  ),
];
