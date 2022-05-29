import 'package:flutter/material.dart';
import 'package:todo_list/domain/notes/note.dart';

class NoteInherited extends InheritedWidget {
  final Note note;

  const NoteInherited({Key? key, required this.note, required Widget child})
      : super(key: key, child: child);

  static NoteInherited of(BuildContext context) {
    final result = context.dependOnInheritedWidgetOfExactType<NoteInherited>();
    if (result != null) {
      return result;
    } else {
      throw Exception('Note missing');
    }
  }

  @override
  bool updateShouldNotify(covariant NoteInherited oldWidget) =>
      note != oldWidget.note;
}
