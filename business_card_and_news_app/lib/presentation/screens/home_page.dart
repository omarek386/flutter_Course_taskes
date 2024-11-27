import 'package:business_card/constants/routes.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text(
          'Home Page',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          const SizedBox(
            width: double.infinity,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, Routes.businessCard);
            },
            style: ElevatedButton.styleFrom(
              shadowColor: Colors.black,
              elevation: 5,
              minimumSize: Size(width / 1.2, 50),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child: const Text(
              'Business Card',
              style: TextStyle(color: Colors.black),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, Routes.flutterNews);
            },
            style: ElevatedButton.styleFrom(
              shadowColor: Colors.black,
              elevation: 5,
              minimumSize: Size(width / 1.2, 50),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child: const Text(
              'News Page',
              style: TextStyle(color: Colors.black),
            ),
          ),
        ],
      ),
      // body: ,
    );
  }
}
