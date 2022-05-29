import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:todo_list/presentation/pages/tasks/widgets/InheritedTask.dart';
import 'package:todo_list/presentation/pages/tasks/widgets/task_deleting_dialog.dart';
import 'package:todo_list/presentation/routes/router.gr.dart';

class TaskCard extends StatelessWidget {
  const TaskCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final task = InheritedTask.of(context).task;
    return Slidable(
      endActionPane: _TaskActionPane(),
      child: Card(
          elevation: 5,
          child: InkWell(
              onTap: () =>
                  AutoRouter.of(context).push(TaskFormRoute(task: task)),
              child: Container(
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.all(12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      task.name,
                      style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87),
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    Text(
                      task.body,
                      style: const TextStyle(color: Colors.black54),
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          task.status.name,
                          style: const TextStyle(color: Colors.orange),
                        )
                      ],
                    )
                  ],
                ),
              ))),
    );
  }
}

class _TaskActionPane extends ActionPane {
  _TaskActionPane({Key? key})
      : super(
            key: key,
            motion: const DrawerMotion(),
            children: [const DeleteTaskAction()]);
}

class DeleteTaskAction extends StatelessWidget {
  const DeleteTaskAction({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final task = InheritedTask.of(context).task;
    return SlidableAction(
      onPressed: (context) => showDialog(
        barrierDismissible: false,
        context: context,
        builder: (context) => TaskDeletingDialog(
          task: task,
        ),
      ),
      backgroundColor: Colors.red,
      foregroundColor: Colors.white,
      icon: Icons.delete,
      label: 'Delete',
    );
  }
}
