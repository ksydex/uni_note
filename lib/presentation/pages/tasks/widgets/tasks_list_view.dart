import 'package:flutter/material.dart';
import 'package:todo_list/domain/tasks/task.dart';
import 'package:todo_list/presentation/pages/tasks/widgets/InheritedTask.dart';
import 'package:todo_list/presentation/pages/tasks/widgets/task_card.dart';

class TasksListView extends StatelessWidget {
  final List<Task> tasks;
  const TasksListView({Key? key, required this.tasks}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: ListView.builder(
        itemCount: tasks.length,
        itemBuilder: (context, i) => InheritedTask(
          task: tasks[i],
          child: const TaskCard(),
        ),
      ),
    );
  }
}
