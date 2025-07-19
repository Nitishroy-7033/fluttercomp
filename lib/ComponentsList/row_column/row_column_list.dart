// ignore: non_constant_identifier_names
import 'package:flutter/material.dart';
import 'package:flutterhero/Widgets/WidgetsArea.dart';

import '../../Code/row_column/product_card_demo_code.dart';
import '../../Code/row_column/row_column_demo.dart';
import '../../ViewComponents/row_column/demo_row_column.dart';
import '../../ViewComponents/row_column/product_card_demo.dart';

var RowColumnList = [
  WidgetArea(
    code1Title: "Row Column Demo",
    code1: rowColumnDemoCode,
    isBorder: true,
    view: const SizedBox(
      height: 500,
      width: 300,
      child: RowColumnDemo(),
    ),
  ), WidgetArea(
    code1Title: "Product Card Demo Code",
    code1: ProductCardDemoCode,
    isBorder: true,
    view: const SizedBox(
      height: 500,
      width: 300,
      child: ProductCardDemo(),
    ),
  ),
];
