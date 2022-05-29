import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:todo_list/domain/tasks/task.dart';
import 'package:todo_list/domain/tasks/task_status_filter.dart';

part 'filtered_tasks_snapshot.freezed.dart';
part 'filtered_tasks_snapshot.g.dart';

/// Класс-обёртка над состоянием блока TaskWatcherBloc
/// для удобной конвертации набора фильтра и задач в/из json.
/// Используется для сохранения состояния между переразгухками приложения.
@freezed
class FilteredTasksSnapshot with _$FilteredTasksSnapshot {
  const factory FilteredTasksSnapshot({
    required TaskStatusFilter filter,
    required List<Task> tasks,
  }) = _FilteredTasksSnapshot;

  factory FilteredTasksSnapshot.fromJson(Map<String, dynamic> json) =>
    _$FilteredTasksSnapshotFromJson(json);
}