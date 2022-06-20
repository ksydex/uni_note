import 'package:flutter/material.dart';
import 'package:todo_list/core/presentation/constants/indents.dart';
import 'package:todo_list/core/presentation/shared/card_base.dart';
import 'package:todo_list/core/presentation/shared/notes/note_card/pane/note_action_pane.dart';
import 'package:todo_list/core/presentation/shared/notes/note_inherited.dart';
import 'package:todo_list/core/presentation/shared/tags/note_card/tag_card.dart';

class NoteCard extends StatelessWidget {
  const NoteCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final note = NoteInherited.of(context).value;
    final theme = Theme.of(context);

    return CardBase(
      actionPane: NoteActionPane(),
      text: Text(note.name, style: theme.textTheme.titleMedium),
      onTap: () => {
        // AutoRouter.of(context).push(TaskFormRoute(task: task))
      },
      append: Row(
        children: [
          if (note.isFavorite)
            Text("В избранном", style: theme.textTheme.bodySmall)
        ],
      ),
      appendBottom: Padding(
        padding: const EdgeInsets.only(top: Indents.sm),
        child: Row(
          children: (note.tags)
              .map((e) => Padding(
                    padding: const EdgeInsets.only(right: Indents.md),
                    child: TagIndicator(
                      tag: e.tag,
                      height: 10,
                      showText: true,
                    ),
                  ))
              .toList(),
        ),
      ),
    );
  }
}
