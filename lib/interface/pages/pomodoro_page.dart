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
            child: Consumer<PomodoroStore>(builder: (ctx, store, __) {
              return Observer(builder: (_) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    TimeInput(
                      title: 'Work',
                      minutes: store.workTime,
                      increment: store.incrementWorkTime,
                      decrement: store.decrementWorkTime,
                    ),
                    TimeInput(
                      title: 'Rest',
                      minutes: store.restTime,
                      increment: store.incrementRestTime,
                      decrement: store.decrementRestTime,
                    )
                  ],
                );
              });
            }),
          )
        ],
      ),
    );
  }
}
