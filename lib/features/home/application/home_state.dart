part of 'home_bloc.dart';

class HomeState {
  final List<Note> notes;
  final bool isLoading;

  HomeState({required this.notes, this.isLoading = false});

  factory HomeState.initial() => HomeState(notes: [], isLoading: true);
}
