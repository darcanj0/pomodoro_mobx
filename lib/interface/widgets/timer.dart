import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:pomodoro_mobx/core/stores/pomodoro_store.dart';
import 'package:pomodoro_mobx/interface/widgets/timer_button.dart';
import 'package:provider/provider.dart';

class Timer extends StatelessWidget {
  const Timer({super.key});

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<PomodoroStore>(context);
    return Observer(
      builder: (ctx) {
        final isWork = store.mode == TimerModes.work;
        return Container(
          color:
              isWork ? const Color.fromRGBO(231, 10, 10, 0.863) : Colors.green,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '${isWork ? 'Work' : 'Rest'} time',
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                ),
              ),
              Text(
                '${store.minutes.toString().padLeft(2, '0')}:${store.seconds.toString().padLeft(2, '0')}',
                style: const TextStyle(
                  fontSize: 120,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  TimerButton(
                    title: 'Reset',
                    icon: Icons.refresh,
                    onClick: store.restart,
                  ),
                  if (store.isRunning)
                    TimerButton(
                      title: 'Stop',
                      icon: Icons.stop,
                      onClick: store.stop,
                    ),
                  if (!store.isRunning)
                    TimerButton(
                      title: 'Start',
                      icon: Icons.play_circle,
                      onClick: store.start,
                    ),
                ],
              )
            ],
          ),
        );
      },
    );
  }
}
