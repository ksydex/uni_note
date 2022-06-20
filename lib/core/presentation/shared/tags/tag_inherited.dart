import 'package:flutter/material.dart';
import 'package:todo_list/core/domain/entities/tags/tag/tag.dart';

class TagInherited extends InheritedWidget {
  final Tag value;

  const TagInherited({Key? key, required this.value, required Widget child})
      : super(key: key, child: child);

  static TagInherited of(BuildContext context) {
    final result = context.dependOnInheritedWidgetOfExactType<TagInherited>();
    if (result != null) {
      return result;
    } else {
      throw Exception('Note missing');
    }
  }

  @override
  bool updateShouldNotify(covariant TagInherited oldWidget) =>
      value != oldWidget.value;
}
