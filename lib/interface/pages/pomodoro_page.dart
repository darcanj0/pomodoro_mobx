import 'package:flutter/material.dart';
import 'package:pomodoro_mobx/interface/widgets/time_input.dart';
import 'package:pomodoro_mobx/interface/widgets/timer.dart';

class PomodoroPage extends StatelessWidget {
  const PomodoroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Timer(),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 20,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TimeInput(title: 'work', minutes: 10),
                TimeInput(title: 'rest', minutes: 10000)
              ],
            ),
          )
        ],
      ),
    );
  }
}
