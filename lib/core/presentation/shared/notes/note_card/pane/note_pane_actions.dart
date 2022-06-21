import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:todo_list/core/presentation/shared/notes/note_inherited.dart';
import 'package:todo_list/features/home/application/home_bloc.dart';
import 'package:todo_list/features/home/application/home_event.dart';

class NoteFavoriteAction extends StatelessWidget {
  const NoteFavoriteAction({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final note = NoteInherited.of(context).value;

    return SlidableAction(
        autoClose: true,
        onPressed: (context) =>
            context.read<HomeBloc>().add(HomeEventFavoriteNote(id: note.id)),
        backgroundColor: Colors.orange,
        foregroundColor: Colors.white,
        icon: note.isFavorite ? Icons.star : Icons.star_border);
  }
}

class NoteDeleteAction extends StatelessWidget {
  const NoteDeleteAction({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final note = NoteInherited.of(context).value;

    print(note.isArchived);

    return SlidableAction(
        onPressed: (context) =>
            context.read<HomeBloc>().add(HomeEventArchiveNote(id: note.id)),
        backgroundColor: note.isArchived ? Colors.green : Colors.red,
        foregroundColor: Colors.white,
        icon:
            note.isArchived ? Icons.restore_from_trash_rounded : Icons.delete);
  }
}
