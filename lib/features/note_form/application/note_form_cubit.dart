import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:todo_list/core/domain/entities/notes/note.dart';
import 'package:todo_list/core/infrastructure/notes/note_repository.dart';

part 'note_form_state.dart';

@injectable
class NoteFormCubit extends Cubit<NoteFormState> {
  final NoteRepository _noteRepository;

  NoteFormCubit(this._noteRepository) : super(NoteFormState.initial());

  Future<void> load(int id) async {
    emit(NoteFormState.initial());
    var v = await _noteRepository.getById(id);
    emit(NoteFormState(isLoading: false, note: v));
  }

  Future<void> save(Note note) async {
    emit(NoteFormState(isLoading: false, note: note));
    await _noteRepository.update(note);
    // try {
    //   if (state.isEditing) {
    //     // await _repository.update(note);
    //   } else {
    //     // await _repository.create(note);
    //   }
    //   emit(state.copyWith(model: note, isSaving: false, isSuccess: true));
    // } on Exception catch (e) {
    //   emit(state.copyWith(
    //     isSaving: false,
    //     isSuccess: false,
    //     errorMessage: "Fail to create new task: $e",
    //   ));
    // }
  }
}
