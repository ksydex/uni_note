import 'package:todo_list/application/tasks/task_watcher/filtering_strategy/i_filtering_strategy.dart';
import 'package:todo_list/domain/tasks/task_status_filter.dart';
import 'package:todo_list/domain/tasks/task.dart';

class ShowingAllStrategy extends IFilteringStrategy {
  @override
  String get label => filter.name;

  @override
  Stream<List<Task>> doFilter() async* {
    yield* super.repository.fetchTasks();
  }

  @override
  TaskStatusFilter get filter => TaskStatusFilter.all;
}