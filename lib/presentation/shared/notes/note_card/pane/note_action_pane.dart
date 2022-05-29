import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:todo_list/presentation/shared/notes/note_card/pane/note_pane_actions.dart';

class NoteActionPane extends ActionPane {
  NoteActionPane({Key? key})
      : super(key: key, motion: const DrawerMotion(), children: [
          const NoteFavoriteAction(),
          const NoteDeleteAction(),
        ]);
}
