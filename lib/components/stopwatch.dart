import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:pomodoro/components/stopwatch_button.dart';
import 'package:pomodoro/store/pomodoro.store.dart';
import 'package:provider/provider.dart';

class StopWatch extends StatelessWidget {
  const StopWatch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<PomodoroStore>(context);
    return Observer(
      builder: (_) {
        return Container(
          color: store.setWork() ? Colors.red[800] : Colors.green[900],
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                store.setWork() ? 'Hora de Trabalhar' : 'Hora de Descansar',
                style: TextStyle(
                  fontSize: 40,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 20),
              Text(
                '${store.timeMinutes.toString().padLeft(2, '0')}:${store.timeSeconds.toString().padLeft(2, '0')}',
                style: TextStyle(
                  fontSize: 120,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  if (!store.start)
                    Padding(
                      padding: EdgeInsets.only(right: 10),
                      child: StopWatchButton(
                        text: 'Iniciar',
                        click: store.starting,
                        icon: Icons.play_arrow,
                      ),
                    ),
                  if (store.start)
                    Padding(
                      padding: EdgeInsets.only(right: 10),
                      child: StopWatchButton(
                        text: 'Parar',
                        click: store.stop,
                        icon: Icons.stop,
                      ),
                    ),
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: StopWatchButton(
                      text: 'Reiniciar',
                      click: store.restart,
                      icon: Icons.refresh,
                    ),
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
