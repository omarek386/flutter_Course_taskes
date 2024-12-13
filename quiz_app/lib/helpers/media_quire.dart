import 'package:flutter/material.dart';

extension MediaQuire on BuildContext {
  bool get isMobile => MediaQuery.of(this).size.width < 768;
  bool get isTablet =>
      MediaQuery.of(this).size.width >= 768 &&
      MediaQuery.of(this).size.width < 1024;
  bool get isDesktop => MediaQuery.of(this).size.width >= 1024;
  double get width => MediaQuery.of(this).size.width;
  double get height => MediaQuery.of(this).size.height;
}
