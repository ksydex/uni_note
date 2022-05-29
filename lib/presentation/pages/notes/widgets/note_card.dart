import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:todo_list/presentation/pages/notes/widgets/note_inherited.dart';

class NoteCard extends StatelessWidget {
  const NoteCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final note = NoteInherited.of(context).note;
    final theme = Theme.of(context);

    return Slidable(
      endActionPane: _NoteActionPane(),
      child: Card(
          elevation: 1,
          child: InkWell(
              onTap: () => {
                    // AutoRouter.of(context).push(TaskFormRoute(task: task))
                  },
              child: Container(
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.all(12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(note.name, style: theme.textTheme.titleMedium),
                    if (note.isFavorite)
                      Text("В избранном",
                          style: theme.textTheme.bodySmall!
                              .copyWith(color: Colors.orange))
                  ],
                ),
              ))),
    );
  }
}

class _NoteActionPane extends ActionPane {
  _NoteActionPane({Key? key})
      : super(key: key, motion: const DrawerMotion(), children: [
          const FavoriteNoteAction(),
          const DeleteNoteAction(),
        ]);
}

class DeleteNoteAction extends StatelessWidget {
  const DeleteNoteAction({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final note = NoteInherited.of(context).note;

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

class FavoriteNoteAction extends StatelessWidget {
  const FavoriteNoteAction({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final note = NoteInherited.of(context).note;

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
        backgroundColor: Colors.orange,
        foregroundColor: Colors.white,
        icon: note.isFavoriteIcon);
  }
}
