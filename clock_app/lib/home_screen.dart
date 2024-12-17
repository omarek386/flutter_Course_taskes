import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:one_clock/one_clock.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('Drawer Header'),
            ),
            ListTile(
              title: const Text('Item 1'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Item 2'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: const Text('Clock App'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          AnalogClock(
            decoration: BoxDecoration(
                border: Border.all(width: 2.0, color: Colors.black),
                color: Colors.transparent,
                shape: BoxShape.circle),
            width: 150.0,
            height: 150,
            isLive: true,
            hourHandColor: Colors.black,
            minuteHandColor: Colors.black,
            showSecondHand: true,
            numberColor: Colors.black87,
            showNumbers: true,
            showAllNumbers: true,
            textScaleFactor: 1.4,
            showTicks: true,
            showDigitalClock: true,
            datetime: DateTime.now(),
          ),
          DigitalClock(
              showSeconds: false,
              isLive: true,
              digitalClockTextColor: Colors.black,
              format: DateFormat.jms().pattern,
              decoration: const BoxDecoration(
                  color: Colors.yellow,
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.all(Radius.circular(15))),
              datetime: DateTime.now())
        ],
      ),
    );
  }
}
