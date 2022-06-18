import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rxdart/transformers.dart';

EventTransformer<Event> debounceRestartable<Event>(Duration duration,) =>
  (events, mapper) => restartable<Event>()
  .call(events.debounceTime(duration), mapper);