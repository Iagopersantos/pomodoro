// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pomodoro.store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$PomodoroStore on _PomodoroStore, Store {
  late final _$startAtom = Atom(name: '_PomodoroStore.start', context: context);

  @override
  bool get start {
    _$startAtom.reportRead();
    return super.start;
  }

  @override
  set start(bool value) {
    _$startAtom.reportWrite(value, super.start, () {
      super.start = value;
    });
  }

  late final _$timeMinutesAtom =
      Atom(name: '_PomodoroStore.timeMinutes', context: context);

  @override
  int get timeMinutes {
    _$timeMinutesAtom.reportRead();
    return super.timeMinutes;
  }

  @override
  set timeMinutes(int value) {
    _$timeMinutesAtom.reportWrite(value, super.timeMinutes, () {
      super.timeMinutes = value;
    });
  }

  late final _$timeSecondsAtom =
      Atom(name: '_PomodoroStore.timeSeconds', context: context);

  @override
  int get timeSeconds {
    _$timeSecondsAtom.reportRead();
    return super.timeSeconds;
  }

  @override
  set timeSeconds(int value) {
    _$timeSecondsAtom.reportWrite(value, super.timeSeconds, () {
      super.timeSeconds = value;
    });
  }

  late final _$timeWorkAtom =
      Atom(name: '_PomodoroStore.timeWork', context: context);

  @override
  int get timeWork {
    _$timeWorkAtom.reportRead();
    return super.timeWork;
  }

  @override
  set timeWork(int value) {
    _$timeWorkAtom.reportWrite(value, super.timeWork, () {
      super.timeWork = value;
    });
  }

  late final _$timeRestAtom =
      Atom(name: '_PomodoroStore.timeRest', context: context);

  @override
  int get timeRest {
    _$timeRestAtom.reportRead();
    return super.timeRest;
  }

  @override
  set timeRest(int value) {
    _$timeRestAtom.reportWrite(value, super.timeRest, () {
      super.timeRest = value;
    });
  }

  late final _$tipoBreakAtom =
      Atom(name: '_PomodoroStore.tipoBreak', context: context);

  @override
  TipoBreak get tipoBreak {
    _$tipoBreakAtom.reportRead();
    return super.tipoBreak;
  }

  @override
  set tipoBreak(TipoBreak value) {
    _$tipoBreakAtom.reportWrite(value, super.tipoBreak, () {
      super.tipoBreak = value;
    });
  }

  @override
  String toString() {
    return '''
start: ${start},
timeMinutes: ${timeMinutes},
timeSeconds: ${timeSeconds},
timeWork: ${timeWork},
timeRest: ${timeRest},
tipoBreak: ${tipoBreak}
    ''';
  }
}
