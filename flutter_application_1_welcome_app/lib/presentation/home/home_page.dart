import 'package:flutter/material.dart';
import 'package:flutter_application_1_welcome_app/constants/string.dart';
import 'package:flutter_application_1_welcome_app/presentation/home/app_bar.dart';
import 'package:flutter_application_1_welcome_app/presentation/home/drawer.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: homeAppBar(),
      drawer: const HomeDrawer(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Image.network(MyString.photoLink)],
        ),
      ),
    );
  }
}
