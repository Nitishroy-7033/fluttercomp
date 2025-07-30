import 'package:flutter/material.dart';
import 'package:showcaseview/showcaseview.dart';

class ShowcaseExample extends StatefulWidget {
  @override
  _ShowcaseExampleState createState() => _ShowcaseExampleState();
}

class _ShowcaseExampleState extends State<ShowcaseExample> {
  final GlobalKey _one = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return ShowCaseWidget(
      builder: (context) => Scaffold(
        backgroundColor: Theme.of(context).colorScheme.primaryContainer,

        appBar: AppBar(title: Text('Showcase View')),
        body: Center(
          child: Showcase(
            key: _one,
            description: 'Tap here to explore!',
            child: ElevatedButton(
              onPressed: () {
                ShowCaseWidget.of(context)!.startShowCase([_one]);
              },
              child: Text('Start Showcase'),
            ),
          ),
        ),
      ),
    );
  }
}
