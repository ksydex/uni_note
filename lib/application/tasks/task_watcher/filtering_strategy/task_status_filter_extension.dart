import 'package:todo_list/application/tasks/task_watcher/filtering_strategy/i_filtering_strategy.dart';
import 'package:todo_list/application/tasks/task_watcher/filtering_strategy/showing_all_strategy.dart';
import 'package:todo_list/application/tasks/task_watcher/filtering_strategy/showing_done_strategy.dart';
import 'package:todo_list/application/tasks/task_watcher/filtering_strategy/showing_in_progress_strategy.dart';
import 'package:todo_list/application/tasks/task_watcher/filtering_strategy/showing_waiting_strategy.dart';
import 'package:todo_list/domain/tasks/task_status_filter.dart';

extension TaskStatusFilterX on TaskStatusFilter{
  IFilteringStrategy strategy() {
    switch (this) {
      case TaskStatusFilter.all:
        return ShowingAllStrategy();
      case TaskStatusFilter.waiting:
        return ShowingWaitingStrategy();
      case TaskStatusFilter.inProgress:
        return ShowingInProgressStrategy();
      case TaskStatusFilter.done:
        return ShowingDoneStrategy();
    }
  }
}