import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';

class PieChartExample extends StatelessWidget {
  final Map<String, double> dataMap = {
    "Flutter": 5,
    "React Native": 3,
    "Kotlin": 2,
  };

  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        appBar: AppBar(
          title: Text("Pie Chart"),
        ),
        backgroundColor: Theme.of(context).colorScheme.primaryContainer,
        body: Center(
        child: PieChart(
          dataMap: dataMap,
          chartRadius: MediaQuery.of(context).size.width / 2.2,
          chartType: ChartType.ring,
          ringStrokeWidth: 32,
          legendOptions: LegendOptions(showLegends: true),
        ),
            ),
      );
  }
}
