import 'package:flutter/material.dart';

class FormProvider with ChangeNotifier {
  String _name = '';
  String get name => _name;

  void updateName(String value) {
    _name = value;
    notifyListeners();
  }
}
