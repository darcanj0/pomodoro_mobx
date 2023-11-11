import 'dart:async';

import 'package:mobx/mobx.dart';
part 'pomodoro_store.g.dart';

class PomodoroStore = _PomodoroStore with _$PomodoroStore;

enum TimerModes { work, rest }

abstract class _PomodoroStore with Store {
  @observable
  int workTime = 1;

  @observable
  int restTime = 1;

  @observable
  int minutes = 2;

  @observable
  int seconds = 0;

  @observable
  bool isRunning = false;

  @observable
  TimerModes mode = TimerModes.work;

  @observable
  Timer? timer;

  @action
  void start() {
    isRunning = true;
    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (minutes == 0 && seconds == 0) {
        _changeMode();
      } else if (seconds == 0) {
        seconds = 59;
        minutes--;
      } else {
        seconds--;
      }
    });
  }

  @action
  void stop() {
    isRunning = false;
    timer?.cancel();
  }

  @action
  void restart() {
    stop();
    switch (mode) {
      case TimerModes.work:
        minutes = workTime;
        seconds = 0;
      case TimerModes.rest:
        minutes = restTime;
        seconds = 0;
    }
  }

  bool get canChangeWorkTime {
    if (isRunning) {
      return mode != TimerModes.work;
    }
    return true;
  }

  bool get canChangeRestTime {
    if (isRunning) {
      return mode != TimerModes.rest;
    }
    return true;
  }

  @action
  void incrementWorkTime() {
    if (canChangeWorkTime) workTime++;
  }

  @action
  void decrementWorkTime() {
    if (workTime == 0) return;
    if (canChangeWorkTime) workTime--;
  }

  @action
  void incrementRestTime() {
    if (canChangeRestTime) restTime++;
  }

  @action
  void decrementRestTime() {
    if (restTime == 0) return;
    if (canChangeRestTime) restTime--;
  }

  void _changeMode() {
    switch (mode) {
      case TimerModes.work:
        mode = TimerModes.rest;
        minutes = restTime;
      case TimerModes.rest:
        mode = TimerModes.work;
        minutes = workTime;
    }
  }
}
