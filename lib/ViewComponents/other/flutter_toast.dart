import 'package:flutter/cupertino.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter/material.dart';

class ToastScreen extends StatelessWidget {
  const ToastScreen({super.key});

  void _showToast() {
    Fluttertoast.showToast(
      msg: "This is a Flutter Toast",
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      backgroundColor: Colors.black,
      textColor: Colors.white,
      fontSize: 16.0,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primaryContainer,

      appBar: AppBar(title: const Text('Toast Demo')),
      body: Center(
        child: ElevatedButton(
          onPressed: _showToast,
          child: const Text("Show Toast"),
        ),
      ),
    );
  }
}
