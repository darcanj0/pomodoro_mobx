import 'package:flutter/material.dart';
import 'package:pomodoro_mobx/interface/widgets/time_input.dart';

class PomodoroPage extends StatelessWidget {
  const PomodoroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text('Pomodoro'),
          TimeInput(title: 'work', minutes: 10),
          TimeInput(title: 'rest', minutes: 10000)
        ],
      ),
    );
  }
}
