import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shared_perf/helper/cache_helper.dart';

class ShowMyData extends StatelessWidget {
  final String myKey;
  final String type;
  // ignore: prefer_const_constructors_in_immutables
  ShowMyData({
    super.key,
    required this.myKey,
    required this.type,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      '$type: ${CacheHelper.getData(key: myKey)}',
      style: TextStyle(
        fontSize: 20.sp,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
