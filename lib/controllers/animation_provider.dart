// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

class animationProvider extends ChangeNotifier {
  double height = 50;
  double width = 50;

  animation({required double size}) {
    height = width = size;
    notifyListeners();
  }
}
