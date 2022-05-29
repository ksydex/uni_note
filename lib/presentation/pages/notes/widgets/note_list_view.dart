import 'package:flutter/material.dart';
import 'package:todo_list/domain/notes/note.dart';
import 'package:todo_list/presentation/pages/notes/widgets/note_card.dart';
import 'package:todo_list/presentation/pages/notes/widgets/note_inherited.dart';

class NoteListView extends StatelessWidget {
  final List<Note> notes;
  const NoteListView({Key? key, required this.notes}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: ListView.builder(
        itemCount: notes.length,
        itemBuilder: (context, i) => NoteInherited(
          note: notes[i],
          child: const NoteCard(),
        ),
      ),
    );
  }
}
