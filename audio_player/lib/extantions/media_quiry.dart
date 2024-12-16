import 'package:flutter/material.dart';

extension MediaQueryExt on BuildContext {
  double get deviceHigh => MediaQuery.of(this).size.height;
  double get deviceWidth => MediaQuery.of(this).size.width;
}
