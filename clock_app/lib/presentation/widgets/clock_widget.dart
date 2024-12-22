import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:one_clock/one_clock.dart';

class ClockWidget extends StatelessWidget {
  const ClockWidget(
      {super.key,
      required this.clockSize,
      required this.isAnalog,
      required this.hourMinuteColor,
      required this.numberColor,
      required this.secondHandColor,
      required this.clockColor});

  final double clockSize;
  final bool isAnalog;
  final Color clockColor;
  final Color hourMinuteColor;
  final Color numberColor;
  final Color secondHandColor;

  @override
  Widget build(BuildContext context) {
    return isAnalog
        ? AnalogClock(
            secondHandColor: secondHandColor,
            tickColor: clockColor,
            decoration: BoxDecoration(
                border: Border.all(width: 2.0.w, color: clockColor),
                color: Colors.transparent,
                shape: BoxShape.circle),
            width: clockSize,
            height: clockSize,
            isLive: true,
            hourHandColor: hourMinuteColor,
            minuteHandColor: hourMinuteColor,
            showSecondHand: true,
            numberColor: numberColor,
            showNumbers: true,
            showAllNumbers: true,
            textScaleFactor: 1.4,
            showTicks: true,
            showDigitalClock: true,
            datetime: DateTime.now(),
          )
        : DigitalClock(
            textScaleFactor: clockSize / 120,
            showSeconds: false,
            isLive: true,
            digitalClockTextColor: clockColor,
            format: DateFormat.jms().pattern,
            decoration: BoxDecoration(
              // color: Colors.yellow,
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.all(Radius.circular(15.r)),
            ),
            datetime: DateTime.now());
  }
}
