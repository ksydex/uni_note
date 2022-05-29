import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:todo_list/presentation/shared/notes/note_card/pane/note_action_pane.dart';
import 'package:todo_list/presentation/shared/notes/note_inherited.dart';

class NoteCard extends StatelessWidget {
  const NoteCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final note = NoteInherited.of(context).value;
    final theme = Theme.of(context);

    return Slidable(
      endActionPane: NoteActionPane(),
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
                      Text("В избранном", style: theme.textTheme.bodySmall)
                  ],
                ),
              ))),
    );
  }
}
