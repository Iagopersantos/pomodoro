import 'dart:async';

import 'package:mobx/mobx.dart';

part 'pomodoro.store.g.dart';

class PomodoroStore = _PomodoroStore with _$PomodoroStore;

enum TipoBreak { WORK, REST }

abstract class _PomodoroStore with Store {
  @observable
  bool start = true;

  @observable
  int timeMinutes = 2;

  @observable
  int timeSeconds = 0;

  @observable
  int timeWork = 2;

  @observable
  int timeRest = 1;

  @observable
  TipoBreak tipoBreak = TipoBreak.WORK;

  Timer? stopwatch;

  void starting() {
    start = true;
    stopwatch = Timer.periodic(Duration(milliseconds: 50), (timer) {
      if (timeMinutes == 0 && timeSeconds == 0) {
        _trocarTipoBreak();
      } else if (timeSeconds == 0) {
        timeSeconds = 59;
        timeMinutes--;
      } else {
        timeSeconds--;
      }
    });
  }

  @action
  void stop() {
    start = false;
    stopwatch?.cancel();
  }

  @action
  void restart() {
    stop();
    timeMinutes = setWork() ? timeWork : timeRest;
    timeSeconds = 0;
  }

    @action
  void incrementTimeWork() {
    timeWork++;
    if (setWork()) {
      restart();
    }
  }

  @action
  void decrementTimeWork() {
    timeWork--;
    if (setWork()) {
      restart();
    }
  }

  @action
  void incrementTimeRest() {
    timeRest++;
    if (setRest()) {
      restart();
    }
  }


  @action
  void decrementTimeRest() {
    timeRest--;
    if (setRest()) {
      restart();
    }
  }

  bool setWork() {
    return tipoBreak == TipoBreak.WORK;
  }

  bool setRest() {
    return tipoBreak == TipoBreak.REST;
  }

  void _trocarTipoBreak() {
    if (setWork()) {
      tipoBreak = TipoBreak.REST;
      timeMinutes = timeRest;
    } else {
      tipoBreak = TipoBreak.WORK;
      timeMinutes = timeWork;
    }
    timeSeconds = 0;
  }
}
