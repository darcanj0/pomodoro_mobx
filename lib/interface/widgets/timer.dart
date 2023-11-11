import 'package:flutter/material.dart';
import 'package:pomodoro_mobx/interface/widgets/timer_button.dart';

class Timer extends StatelessWidget {
  const Timer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromRGBO(231, 10, 10, 0.863),
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Work time',
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
            ),
          ),
          Text(
            '25:00',
            style: TextStyle(
              fontSize: 120,
              color: Colors.white,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TimerButton(
                title: 'Reset',
                icon: Icons.refresh,
              ),
              TimerButton(
                title: 'Stop',
                icon: Icons.stop,
              ),
              TimerButton(
                title: 'Start',
                icon: Icons.play_circle,
              ),
            ],
          )
        ],
      ),
    );
  }
}
