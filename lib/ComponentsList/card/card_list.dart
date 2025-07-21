import 'package:flutter/material.dart';
import 'package:flutterhero/Widgets/WidgetsArea.dart';

import '../../Code/card/card_view_code.dart';
import '../../ViewComponents/card/sample_card.dart';

var cardlist = [
  WidgetArea(
    code1Title: "Card view Demo",
    code1: CardviewCode,
    isBorder: true,
    view: const SizedBox(
      height: 500,
      width: 300,
      child: CardShowcaseScreen(),
    ),
  ),


];
