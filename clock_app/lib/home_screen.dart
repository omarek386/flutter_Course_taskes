import 'dart:developer';
import 'package:clock_app/clock_widget.dart';
import 'package:clock_app/device_size.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late double clockSize = context.width * 0.5;
  bool isAnalog = true;
  Color clockColor = Colors.black;
  Color hourMinuetsColor = Colors.black;
  Color secondsColor = Colors.black;
  Color numberColor = Colors.black;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            SizedBox(
              width: double.infinity,
              child: const DrawerHeader(
                // curve: Curves.easeInOutCirc,
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Text('Clock App'),
              ),
            ),
            ListTile(
              title: const Text('Analog Clock'),
              onTap: () {
                setState(() {
                  isAnalog = true;
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Digital Clock'),
              onTap: () {
                setState(() {
                  isAnalog = false;
                });
                Navigator.pop(context);
              },
            ),
            pickColor(method: selectColorOfClock(), title: 'Clock Color'),
            isAnalog
                ? pickColor(
                    method: selectColorOfHourMinuets(),
                    title: 'Hour and Minute Color')
                : Container(),
            isAnalog
                ? pickColor(
                    method: selectColorOfSeconds(), title: 'Seconds Color')
                : Container(),
            isAnalog
                ? pickColor(
                    method: selectColorOfNumbers(), title: 'Numbers Color')
                : Container(),
            Slider(
              min: context.width * 0.3,
              max: context.width * 0.9,
              value: clockSize,
              activeColor: Colors.blue,
              label: 'Clock Size',
              onChanged: (value) {
                setState(
                  () {
                    clockSize = value;
                    log('Clock size: $value');
                  },
                );
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: const Text('Clock App'),
      ),
      body: Center(
        child: ClockWidget(
            clockSize: clockSize,
            isAnalog: isAnalog,
            clockColor: clockColor,
            hourMinuteColor: hourMinuetsColor,
            numberColor: numberColor,
            secondHandColor: secondsColor),
      ),
    );
  }

  Widget pickColor({required Widget method, required String title}) {
    return Column(
      children: [
        Divider(),
        Text(title),
        SizedBox(height: 50, child: method),
      ],
    );
  }

  Widget selectColorOfClock() {
    return ListView.builder(
        itemCount: Colors.primaries.length,
        scrollDirection: Axis.horizontal,
        // padding: EdgeInsets.only(left: 10),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: colorBox(
                color: Colors.primaries[index],
                onTap: () {
                  setState(() {
                    clockColor = Colors.primaries[index];
                  });
                }),
          );
        });
  }

  Widget selectColorOfHourMinuets() {
    return ListView.builder(
        itemCount: Colors.primaries.length,
        scrollDirection: Axis.horizontal,
        // padding: EdgeInsets.only(left: 10),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: colorBox(
                color: Colors.primaries[index],
                onTap: () {
                  setState(() {
                    hourMinuetsColor = Colors.primaries[index];
                  });
                }),
          );
        });
  }

  Widget selectColorOfSeconds() {
    return ListView.builder(
        itemCount: Colors.primaries.length,
        scrollDirection: Axis.horizontal,
        // padding: EdgeInsets.only(left: 10),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: colorBox(
                color: Colors.primaries[index],
                onTap: () {
                  setState(() {
                    secondsColor = Colors.primaries[index];
                  });
                }),
          );
        });
  }

  Widget selectColorOfNumbers() {
    return ListView.builder(
        itemCount: Colors.primaries.length,
        scrollDirection: Axis.horizontal,
        // padding: EdgeInsets.only(left: 10),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: colorBox(
                color: Colors.primaries[index],
                onTap: () {
                  setState(() {
                    numberColor = Colors.primaries[index];
                  });
                }),
          );
        });
  }

  Widget colorBox({required Color color, required Function() onTap}) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}
