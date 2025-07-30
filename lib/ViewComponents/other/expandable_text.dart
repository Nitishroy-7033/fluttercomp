import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

class ExpandableTextExample extends StatelessWidget {
  final String longText = 'Flutter is an open-source UI software development kit created by Google. '
      'It is used to develop cross platform applications...';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primaryContainer,
      appBar: AppBar(title: Text('Expandable Text')),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ReadMoreText(
          longText,
          trimLines: 2,
          trimMode: TrimMode.Line,
          trimCollapsedText: 'Show more',
          trimExpandedText: 'Show less',
          style: TextStyle(fontSize: 16),
        ),
      ),
    );
  }
}
