import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:todo_list/domain/notes/note.dart';

part 'note_form_cubit.freezed.dart';
part 'note_form_state.dart';

@injectable
class NoteFormCubit extends Cubit<NoteFormState> {
  NoteFormCubit() : super(NoteFormState.initial());

  Future<void> init(Note note) async =>
      emit(state.copyWith(model: note, isEditing: true));

  Future<void> save(Note note) async {
    print('save worked');

    emit(state.copyWith(isSaving: true));
    try {
      if (state.isEditing) {
        // await _repository.update(note);
      } else {
        // await _repository.create(note);
      }
      emit(state.copyWith(model: note, isSaving: false, isSuccess: true));
    } on Exception catch (e) {
      emit(state.copyWith(
        isSaving: false,
        isSuccess: false,
        errorMessage: "Fail to create new task: $e",
      ));
    }
  }
}
