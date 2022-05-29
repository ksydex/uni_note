part of 'note_form_cubit.dart';

@freezed
class NoteFormState with _$NoteFormState {
  const factory NoteFormState({
    required Note model,
    required bool isEditing,
    required bool isSaving,
    required String? errorMessage,
    required bool? isSuccess,
  }) = _NoteFormState;

  factory NoteFormState.initial() => NoteFormState(
        model: Note.empty(),
        isEditing: false,
        isSaving: false,
        errorMessage: null,
        isSuccess: null,
      );
}
