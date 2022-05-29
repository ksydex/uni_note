import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:todo_list/domain/groups/group.dart';
import 'package:todo_list/domain/notes/note.dart';
import 'package:todo_list/presentation/constants/indents.dart';
import 'package:todo_list/presentation/pages/tasks/widgets/search_button.dart';
import 'package:todo_list/presentation/routes/router.gr.dart';
import 'package:todo_list/presentation/shared/groups/group_list_view.dart';
import 'package:todo_list/presentation/shared/notes/note_list_view.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Заметки'),
        leading: IconButton(
            icon: const Icon(Icons.account_circle_outlined), onPressed: () {}),
        actions: const [
          SearchButton(),
          // FilterButton(),
          // SignOutButton(),
        ],
      ),
      body: const Padding(
        padding: EdgeInsets.all(Indents.sm),
        child: _NotesOverview(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => AutoRouter.of(context).push(NoteFormRoute()),
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
    final groups = <Group>[Group.test(), Group.test(true)];
    return ListView(
      children: [
        GroupListView(groups: groups),
        NoteListView(notes: notes),
      ],
    );
  }
}
