import 'package:flutter/material.dart';

import '../../constants/string.dart';

PreferredSizeWidget homeAppBar() {
  return AppBar(
    title: const Text(MyString.homePageTitle),
    backgroundColor: Colors.blue,
    centerTitle: true,
  );
}
