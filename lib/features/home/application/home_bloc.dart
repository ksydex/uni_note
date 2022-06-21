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
      : super(HomeState.initial()) {
    on<HomeEventInitialLoad>((e, emit) => _onInitialLoad(e.groupId, emit));

    on<HomeEventAddGroup>((e, emit) async {
      await _groupRepository
          .create(Group(id: 0, groupId: state.groupId, name: e.name));
      await _reloadData(state.groupId, emit);
    });
  }

  FutureOr<void> _onInitialLoad(int? groupId, Emitter<HomeState> emit) async {
    emit(HomeState.initial());
    await _reloadData(groupId, emit);
  }

  Future<void> _reloadData(int? groupId, Emitter<HomeState> emit) async {
    final notes = await _noteRepository.getAll(groupId, true);
    final groups = await _groupRepository.getAll(groupId, true);
    emit(HomeState(
        groupId: groupId, groups: groups, notes: notes, isLoading: false));
  }
}
