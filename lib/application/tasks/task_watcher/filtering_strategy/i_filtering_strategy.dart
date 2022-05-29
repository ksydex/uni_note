import 'package:todo_list/domain/tasks/task_status_filter.dart';
import 'package:todo_list/domain/tasks/task.dart';
import 'package:todo_list/infrastructure/tasks/task_repository.dart';
import 'package:todo_list/injection.dart';

abstract class IFilteringStrategy {
  final TaskRepository _repository = getIt<TaskRepository>();
  TaskRepository get repository => _repository;

  String get label;
  Stream<List<Task>> doFilter();
  TaskStatusFilter get filter;
}