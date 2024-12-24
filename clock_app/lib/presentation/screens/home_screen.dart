import 'dart:developer';
import 'package:clock_app/presentation/widgets/clock_widget.dart';
import 'package:clock_app/helpers/extensions/device_size.dart';
import 'package:clock_app/presentation/widgets/pick_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    if (isSelected) {
      Future.delayed(const Duration(seconds: 3), () {
        setState(() {
          isSelected = false;
        });
      });
    }
    return Scaffold(
      drawer: clockControlDrawer(context),
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

  Drawer clockControlDrawer(BuildContext context) {
    return Drawer(
        backgroundColor: isSelected
            ? Colors.white.withOpacity(0.4)
            : Colors.white, // Colors.white.withOpacity(0.9),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(
                width: double.infinity,
                child: drawerHeader(),
              ),
              analogButton(context),
              digitalButton(context),
              PickColor(method: selectColorOfClock(), title: 'Clock Color'),
              isAnalog
                  ? PickColor(
                      method: selectColorOfHourMinuets(),
                      title: 'Hour and Minute Color')
                  : Container(),
              isAnalog
                  ? PickColor(
                      method: selectColorOfSeconds(), title: 'Seconds Color')
                  : Container(),
              isAnalog
                  ? PickColor(
                      method: selectColorOfNumbers(), title: 'Numbers Color')
                  : Container(),
              SizedBox(height: 20.h),
              const Divider(),
              SizedBox(height: 20.h),
              const Text('Clock Size'),
              slider(context),
            ],
          ),
        ));
  }

  Slider slider(BuildContext context) {
    return Slider(
      min: context.width * 0.3,
      max: context.width * 0.9,
      value: clockSize,
      activeColor: Colors.blue,
      label: 'Clock Size',
      onChanged: (value) {
        isSelected = true;
        setState(
          () {
            clockSize = value;
            log('Clock size: $value');
          },
        );
      },
    );
  }

  DrawerHeader drawerHeader() {
    return DrawerHeader(
      // curve: Curves.easeInOutCirc,
      decoration: BoxDecoration(
        color: Colors.blue.withOpacity(isSelected ? 0.4 : 1.0),
      ),
      child: const Center(
          child: Text(
        'Clock App',
        style: TextStyle(
            fontSize: 30, color: Colors.white, fontWeight: FontWeight.bold),
      )),
    );
  }

  ListTile analogButton(BuildContext context) {
    return ListTile(
      title: const Text('Analog Clock'),
      onTap: () {
        setState(() {
          isAnalog = true;
        });
        Navigator.pop(context);
      },
    );
  }

  ListTile digitalButton(BuildContext context) {
    return ListTile(
      title: const Text('Digital Clock'),
      onTap: () {
        setState(() {
          isAnalog = false;
        });
        Navigator.pop(context);
      },
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
            child: ColorBox(
                color:
                    Colors.primaries[index].withOpacity(isSelected ? 0.4 : 1.0),
                onTap: () {
                  setState(() {
                    clockColor = Colors.primaries[index];
                    isSelected = true;
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
            child: ColorBox(
                color:
                    Colors.primaries[index].withOpacity(isSelected ? 0.4 : 1.0),
                onTap: () {
                  setState(() {
                    hourMinuetsColor = Colors.primaries[index];
                    isSelected = true;
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
            child: ColorBox(
                color:
                    Colors.primaries[index].withOpacity(isSelected ? 0.4 : 1.0),
                onTap: () {
                  setState(() {
                    secondsColor = Colors.primaries[index];
                    isSelected = true;
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
            child: ColorBox(
                color:
                    Colors.primaries[index].withOpacity(isSelected ? 0.4 : 1.0),
                onTap: () {
                  setState(() {
                    numberColor = Colors.primaries[index];
                    isSelected = true;
                  });
                }),
          );
        });
  }
}

class ColorBox extends StatelessWidget {
  const ColorBox({
    super.key,
    required this.color,
    required this.onTap,
  });

  final Color color;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
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
