import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_list/application/tasks/task_actor/task_actor_cubit.dart';
import 'package:todo_list/domain/tasks/task.dart';
import 'package:todo_list/injection.dart';
import 'package:todo_list/presentation/custom_widgets/error_snack_bar.dart';

class TaskDeletingDialog extends StatelessWidget {
  final Task task;
  const TaskDeletingDialog({Key? key, required this.task}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<TaskActorCubit>(
      create: (context) => getIt<TaskActorCubit>(),
      child: _CustomDialog(
        child: BlocListener<TaskActorCubit, TaskActorState>(
          listener: (context, state) =>
            state.maybeMap(
              deleteFailure: (state) => ErrorSnackBar(message: state.message),
              orElse: () => null,
            ),
          child: Column(
            mainAxisSize: MainAxisSize.min, // To make the card compact
            children: <Widget>[
              const Text("Deleting a task",
                style: TextStyle(fontWeight: FontWeight.bold),),
              const SizedBox(height: 10),
              ListTile(
                title: Text(task.name,),
                subtitle: Text(task.body),
                isThreeLine: true,
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: () => Navigator.of(context).pop(),
                    style: TextButton.styleFrom(backgroundColor: Colors.blueGrey.shade50,),
                    child: const Text("CANCEL"),),
                  const SizedBox(width: 10),
                  BlocBuilder<TaskActorCubit, TaskActorState>(
                    builder: (context, state) => TextButton(
                      onPressed: () {
                        context.read<TaskActorCubit>().delete(task);
                        Navigator.of(context).pop();
                      },
                      style: TextButton.styleFrom(backgroundColor: Colors.blue,),
                      child: const Text("DELETE", style: TextStyle(color: Colors.white),),),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _CustomDialog extends StatelessWidget {
  final Widget child;
  const _CustomDialog({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      elevation: 0.0,
      backgroundColor: Colors.transparent,
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8.0),
          boxShadow: const [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 10.0,
              offset: Offset(0.0, 10.0),
            ),
          ],
        ),
        child: child,
      ),
    );
  }
}

