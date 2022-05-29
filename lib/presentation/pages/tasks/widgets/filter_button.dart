import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_list/domain/tasks/task_status_filter.dart';
import 'package:todo_list/application/tasks/task_watcher/task_watcher_bloc.dart';

class FilterButton extends StatelessWidget {

  const FilterButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final activeFilter = context.select((TaskWatcherBloc bloc) =>
      (bloc.state is Success)
        ? (bloc.state as Success).filter
        : TaskStatusFilter.all);

    return PopupMenuButton<TaskStatusFilter>(
      shape: const ContinuousRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(16))),
      initialValue: activeFilter,
      onSelected: (filter) {
        context.read<TaskWatcherBloc>()
            .add(TaskWatcherEvent.watch(filter));
      },
      itemBuilder: (context) =>
        TaskStatusFilter.values.map((filter) =>
          PopupMenuItem(
            value: filter,
            child: Text(filter.name),
          ),
        ).toList(),
      icon: const Icon(Icons.filter_list_rounded),
    );
  }
}

