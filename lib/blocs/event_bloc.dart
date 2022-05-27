library blocs;

import 'dart:async' show StreamController;

import 'package:bloc_implementation/bloc_implementation.dart' show Bloc;

class EventBloc extends Bloc {
  final StreamController _eventStream = StreamController();

  StreamController get eventStream => _eventStream;

  @override
  void dispose() {}
}
