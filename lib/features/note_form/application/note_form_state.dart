part of 'note_form_cubit.dart';

class NoteFormState {
  final bool isLoading;
  final Note? note;

  NoteFormState({required this.isLoading, this.note});

  factory NoteFormState.initial() => NoteFormState(isLoading: true, note: null);
}
