import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:todo_list/core/domain/entities/notes/note.dart';
import 'package:todo_list/core/infrastructure/notes/note_repository.dart';
import 'package:todo_list/features/home/application/home_event.dart';

part 'home_state.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final NoteRepository _noteRepository;

  // задержка проверки появления нового значения,
  // чтобы не проверять после каждой введёной буквы
  static const debounceDuration = Duration(milliseconds: 100);

  HomeBloc(this._noteRepository) : super(HomeState.initial()) {
    on<HomeEventInitialLoad>((e, s) async {
      final notes = await _noteRepository.getAll(e.groupId, true);
      emit(HomeState(notes: notes, isLoading: false));
    });
  }
}
