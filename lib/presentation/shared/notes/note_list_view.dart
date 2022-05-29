import 'package:flutter/material.dart';
import 'package:todo_list/domain/notes/note.dart';
import 'package:todo_list/presentation/shared/notes/note_card/note_card.dart';
import 'package:todo_list/presentation/shared/notes/note_inherited.dart';

class NoteListView extends StatelessWidget {
  final List<Note> notes;
  const NoteListView({Key? key, required this.notes}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: notes.length,
      physics: const ClampingScrollPhysics(),
      itemBuilder: (context, i) => NoteInherited(
        value: notes[i],
        child: const NoteCard(),
      ),
    );
  }
}
