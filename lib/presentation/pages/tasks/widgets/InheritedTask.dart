import 'package:flutter/cupertino.dart';
import 'package:todo_list/domain/tasks/task.dart';

class InheritedTask extends InheritedWidget {
  final Task task;

  const InheritedTask({
    Key? key,
    required this.task,
    required Widget child
  }) : super(key: key, child: child);

  static InheritedTask of(BuildContext context) {
    final result = context.dependOnInheritedWidgetOfExactType<InheritedTask>();
    if (result != null) {
      return result;
    } else {
      throw Exception('Task missing');
    }
  }

  @override
  bool updateShouldNotify(covariant InheritedTask oldWidget) =>
    task != oldWidget.task;
}