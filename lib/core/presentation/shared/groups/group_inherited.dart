import 'package:flutter/material.dart';
import 'package:todo_list/core/domain/groups/group.dart';

class GroupInherited extends InheritedWidget {
  final Group value;

  const GroupInherited({Key? key, required this.value, required Widget child})
      : super(key: key, child: child);

  static GroupInherited of(BuildContext context) {
    final result = context.dependOnInheritedWidgetOfExactType<GroupInherited>();
    if (result != null) {
      return result;
    } else {
      throw Exception('Note missing');
    }
  }

  @override
  bool updateShouldNotify(covariant GroupInherited oldWidget) =>
      value != oldWidget.value;
}
