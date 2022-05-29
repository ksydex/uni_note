import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:todo_list/domain/tasks/filtered_tasks_snapshot.dart';
import 'package:todo_list/domain/tasks/task_status_filter.dart';
import 'package:todo_list/domain/tasks/task.dart';
import 'package:todo_list/application/tasks/task_watcher/filtering_strategy/task_status_filter_extension.dart';

part 'task_watcher_event.dart';
part 'task_watcher_state.dart';
part 'task_watcher_bloc.freezed.dart';

@injectable
class TaskWatcherBloc extends HydratedBloc<TaskWatcherEvent, TaskWatcherState> {
  TaskWatcherBloc() : super(const TaskWatcherState.loading()) {
    on<TaskWatcherEvent>(
      (event, emit) async {
        await event.map(
          initiate: (event) {
            final token = super.storageToken;
            if (HydratedBlocOverrides.current!.storage.read(token) != null) {
              return;
            } else {
              add(const TaskWatcherEvent.watch(TaskStatusFilter.all));
            }
          },
          watch: (event) async {
            emit(const TaskWatcherState.loading());
            final strategy = event.filter.strategy();
            await emit.forEach<List<Task>>(
              strategy.doFilter(),
              onData: (tasks) => TaskWatcherState.success(tasks, event.filter),
              onError: (e, stacktrace) => TaskWatcherState.failure("Fail to load tasks: $e"),
            );
          }
        );
      },
      transformer: restartable(),
    );
  }

  @override
  TaskWatcherState? fromJson(Map<String, dynamic> json) {
    try {
      final stateSnapshot = FilteredTasksSnapshot.fromJson(json);
      return Success(stateSnapshot.tasks, stateSnapshot.filter);
    } catch (e) {
      return null;
    }
  }

  @override
  Map<String, dynamic>? toJson(TaskWatcherState state) => (state is Success)
      ? FilteredTasksSnapshot(filter: state.filter, tasks: state.tasks).toJson()
      : null;
}
