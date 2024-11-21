import 'package:flutter/material.dart';

import '../../constants/string.dart';
import '../../constants/text_style.dart';

class HomeDrawer extends StatelessWidget {
  const HomeDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return const Drawer(
      child: Center(
        child: Text(
          MyString.drawerText,
          style: MyTextStyle.drawerTextStyle,
        ),
      ),
    );
  }
}
