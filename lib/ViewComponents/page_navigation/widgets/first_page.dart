import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterhero/ViewComponents/page_navigation/widgets/second_page.dart';

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primaryContainer,

      appBar: AppBar(title: const Text("First Page")),
      body: Center(
        child: ElevatedButton(
          child: const Text("Go to Second Page"),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => SecondPage()),
            );
          },
        ),
      ),
    );
  }
}
