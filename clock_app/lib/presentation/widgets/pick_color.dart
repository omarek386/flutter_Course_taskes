import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PickColor extends StatelessWidget {
  const PickColor({
    super.key,
    required this.method,
    required this.title,
  });

  final Widget method;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Divider(),
        Text(title),
        SizedBox(height: 50.h, child: method),
      ],
    );
  }
}
