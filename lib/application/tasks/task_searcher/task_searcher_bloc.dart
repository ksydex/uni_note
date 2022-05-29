import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:todo_list/domain/tasks/task.dart';
import 'package:todo_list/infrastructure/tasks/task_repository.dart';

part 'task_searcher_event.dart';
part 'task_searcher_state.dart';
part 'task_searcher_bloc.freezed.dart';

// Отдельный Bloc на поиск нужен потому что я вывожу результат поиска в окне
// SearchDelegate. Так сделано, чтобы не смешивать поиск и фильтрацию по статусам.
// Иначе может быть непонятно по всем задачам ведётся поиск или только по задачам
// определённого статуса.
@injectable
class TaskSearcherBloc extends Bloc<TaskSearcherEvent, TaskSearcherState> {
  final TaskRepository _repository;

  TaskSearcherBloc(this._repository) : super(const TaskSearcherState.loading()) {
    on<TaskSearcherEvent>(
      (event, emit) async {
        emit(const TaskSearcherState.loading());
        await emit.forEach<List<Task>>(
          _repository.fetchSearchedTasks(event.query),
          onData: (tasks) => TaskSearcherState.searchResult(tasks),
          onError: (e, stacktrace) => TaskSearcherState.failure("Fail to load tasks: $e"),
        );
      },
      transformer: restartable(),
    );
  }
}
