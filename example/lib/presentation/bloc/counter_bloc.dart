import 'dart:async';

import 'package:bloc_abstraction/bloc_abstraction.dart';

class CounterBloc extends BlocBase {
  int _counter = 0;
  final _counterStream = StreamController<String>();

  Stream<String> get counterStream => _counterStream.stream;
  addCounter() {
    _counter++;
    _counterStream.add(_counter.toString());
  }

  @override
  void dispose() {
    _counterStream.close();
  }
}