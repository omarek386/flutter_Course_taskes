import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TimerBox extends StatelessWidget {
  TimerBox({
    super.key,
    required this.time,
    required this.activeTimer,
  });

  final int time;
  bool activeTimer;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: -25,
      child: Container(
        height: 40,
        width: 100,
        decoration: BoxDecoration(
          color: activeTimer
              ? time > 6
                  ? Colors.green[300]
                  : time > 3
                      ? Colors.yellow[300]
                      : Colors.red[300]
              : Colors.grey,
          boxShadow: const [
            BoxShadow(
              color: Colors.black,
              blurRadius: 5,
            ),
          ],
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.timer_outlined),
            Text(
              activeTimer ? '$time s' : 'Stopped',
              style: const TextStyle(
                color: Colors.black,
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
