part of 'task_form_cubit.dart';

@freezed
class TaskFormState with _$TaskFormState {
  const factory TaskFormState({
    required Task task,
    required bool isEditing,
    required bool isSaving,
    required String? errorMessage,
    required bool? success,
  }) = _TaskFormState;

  factory TaskFormState.initial() => TaskFormState(
    task: Task.empty(),
    isEditing: false,
    isSaving: false,
    errorMessage: null,
    success: null,
  );
}

