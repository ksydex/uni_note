import 'package:flutter/material.dart';
import 'package:todo_list/domain/notes/note.dart';
import 'package:todo_list/presentation/pages/notes/widgets/note_list_view.dart';
import 'package:todo_list/presentation/pages/tasks/widgets/empty_result.dart';

class NotesOverviewPage extends StatelessWidget {
  const NotesOverviewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Заметки'),
        actions: const [
          // SearchButton(),
          // FilterButton(),
          // SignOutButton(),th
        ],
      ),
      body: const _NotesOverview(),
      floatingActionButton: FloatingActionButton(
        onPressed: () => {
          // AutoRouter.of(context).push(TaskFormRoute());
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

class _NotesOverview extends StatelessWidget {
  const _NotesOverview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final notes = <Note>[Note.test(), Note.test(true), Note.test()];
    return notes.isNotEmpty
        ? NoteListView(notes: notes)
        : const EmptyResult(message: "Создайте вашу первую заметку!");
  }
}
