import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:todo_list/core/presentation/shared/notes/note_inherited.dart';

class NoteFavoriteAction extends StatelessWidget {
  const NoteFavoriteAction({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final note = NoteInherited.of(context).value;

    return SlidableAction(
        autoClose: true,
        onPressed: (context) => {
              //   showDialog(
              //   barrierDismissible: false,
              //   context: context,
              //   builder: (context) => TaskDeletingDialog(
              //     note: task,
              //   ),
              // );
            },
        backgroundColor: Colors.orange,
        foregroundColor: Colors.white,
        icon: Icons.abc_outlined);
  }
}

class NoteDeleteAction extends StatelessWidget {
  const NoteDeleteAction({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final note = NoteInherited.of(context).value;

    return SlidableAction(
        onPressed: (context) => {
              //   showDialog(
              //   barrierDismissible: false,
              //   context: context,
              //   builder: (context) => TaskDeletingDialog(
              //     note: task,
              //   ),
              // );
            },
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,
        icon: Icons.delete);
  }
}
