import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:todo_list/core/domain/entities/groups/group.dart';
import 'package:todo_list/core/domain/entities/notes/note.dart';
import 'package:todo_list/core/infrastructure/groups/group_repository.dart';
import 'package:todo_list/core/infrastructure/notes/note_repository.dart';
import 'package:todo_list/features/home/application/home_event.dart';

part 'home_state.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final NoteRepository _noteRepository;
  final GroupRepository _groupRepository;

  // задержка проверки появления нового значения,
  // чтобы не проверять после каждой введёной буквы
  static const debounceDuration = Duration(milliseconds: 100);

  HomeBloc(this._noteRepository, this._groupRepository)
      : super(HomeState.initial(noteIsArchived: false)) {
    on<HomeEventInitialLoad>((e, emit) =>
        _onInitialLoad(e.groupId, emit, e.noteIsArchived, e.noteIsFavorite));
    on<HomeEventRemoveGroup>((e, emit) => _onRemoveGroup(e.id, emit));
    on<HomeEventArchiveNote>((e, emit) => _onArchiveNote(e.id, emit));
    on<HomeEventFavoriteNote>((e, emit) => _onFavoriteNote(e.id, emit));
    on<HomeEventAddGroup>((e, emit) async {
      await _groupRepository
          .add(Group(id: 0, groupId: state.groupId, name: e.name));
      await _reloadData(state.groupId, emit);
    });
  }
  Future<void> _onRemoveGroup(int id, Emitter<HomeState> emit) async {
    await _groupRepository.remove(id);
    await _reloadData(state.groupId, emit);
  }

  Future<void> _onArchiveNote(int id, Emitter<HomeState> emit) async {
    var note = state.notes.firstWhere((element) => element.id == id);
    await _noteRepository.update(Note(
        id: note.id,
        isFavorite: note.isFavorite,
        name: note.name,
        body: note.body,
        groupId: note.groupId,
        isArchived: !note.isArchived,
        tags: note.tags));
    await _reloadData(state.groupId, emit);
  }

  Future<void> _onFavoriteNote(int id, Emitter<HomeState> emit) async {
    var note = state.notes.firstWhere((element) => element.id == id);
    await _noteRepository.update(Note(
        id: note.id,
        isFavorite: !note.isFavorite,
        name: note.name,
        body: note.body,
        groupId: note.groupId,
        isArchived: note.isArchived,
        tags: note.tags));
    await _reloadData(state.groupId, emit);
  }

  FutureOr<void> _onInitialLoad(int? groupId, Emitter<HomeState> emit,
      bool? noteIsArchived, bool? noteIsFavorite) async {
    emit(HomeState.initial(
        noteIsArchived: noteIsArchived ?? state.noteIsArchived,
        noteIsFavorite: noteIsFavorite));
    await _reloadData(groupId, emit);
  }

  Future<void> _reloadData(int? groupId, Emitter<HomeState> emit) async {
    final notes = await _noteRepository.getAll(
        groupId, true, state.noteIsArchived, state.noteIsFavorite);
    final groups = await _groupRepository.getAll(groupId, true);
    emit(HomeState(
        noteIsArchived: state.noteIsArchived,
        noteIsFavorite: state.noteIsFavorite,
        groupId: groupId,
        groups: groups,
        notes: notes,
        isLoading: false));
  }
}
