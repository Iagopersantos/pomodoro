import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:pomodoro/components/enter_time.dart';
import 'package:pomodoro/components/stopwatch.dart';
import 'package:pomodoro/store/pomodoro.store.dart';
import 'package:provider/provider.dart';

class Pomodoro extends StatelessWidget {
  const Pomodoro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<PomodoroStore>(context);
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: StopWatch(),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 40),
            child: Observer(
              builder: (_) => Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  EnterTime(
                    dec: store.start && store.setWork()
                        ? null
                        : store.decrementTimeWork,
                    inc: store.start && store.setWork()
                        ? null
                        : store.incrementTimeWork,
                    title: 'Trabalho',
                    value: store.timeWork,
                  ),
                  EnterTime(
                    dec: store.start && store.setRest()
                        ? null
                        : store.decrementTimeRest,
                    inc: store.start && store.setRest()
                        ? null
                        : store.incrementTimeRest,
                    title: 'Descanso',
                    value: store.timeRest,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
