import 'package:flutter/material.dart';

extension Navigation on BuildContext {
  Future<dynamic> pushReplacementNamed(String page, {Object? arguments}) {
    return Navigator.of(this).pushReplacementNamed(page, arguments: arguments);
  }

  Future<dynamic> pushNamed(String page, {Object? arguments}) {
    return Navigator.of(this).pushNamed(page, arguments: arguments);
  }

  Future<dynamic> pushNamedAndRemoveUntil(String page,
      {Object? arguments, required RoutePredicate predicate}) {
    return Navigator.of(this)
        .pushNamedAndRemoveUntil(page, predicate, arguments: arguments);
  }

  void pop() => Navigator.of(this).pop();
}
