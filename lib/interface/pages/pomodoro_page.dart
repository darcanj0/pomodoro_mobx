import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:pomodoro_mobx/core/stores/pomodoro_store.dart';
import 'package:pomodoro_mobx/interface/widgets/time_input.dart';
import 'package:pomodoro_mobx/interface/widgets/timer.dart';
import 'package:provider/provider.dart';

class PomodoroPage extends StatelessWidget {
  const PomodoroPage({super.key});

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<PomodoroStore>(context);
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Expanded(
            child: Timer(),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 20,
            ),
            child: Observer(builder: (_) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  TimeInput(
                    title: 'Work',
                    minutes: store.workTime,
                    increment: store.canChangeWorkTime
                        ? store.incrementWorkTime
                        : null,
                    decrement: store.canChangeWorkTime
                        ? store.decrementWorkTime
                        : null,
                  ),
                  TimeInput(
                    title: 'Rest',
                    minutes: store.restTime,
                    increment: store.canChangeRestTime
                        ? store.incrementRestTime
                        : null,
                    decrement: store.canChangeRestTime
                        ? store.decrementRestTime
                        : null,
                  )
                ],
              );
            }),
          )
        ],
      ),
    );
  }
}
