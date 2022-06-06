import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:todo_list/domain/groups/group.dart';
import 'package:todo_list/domain/notes/note.dart';
import 'package:todo_list/presentation/constants/indents.dart';
import 'package:todo_list/presentation/pages/tasks/widgets/search_button.dart';
import 'package:todo_list/presentation/pages/tasks/widgets/sign_out_button.dart';
import 'package:todo_list/presentation/routes/router.gr.dart';
import 'package:todo_list/presentation/shared/groups/group_list_view.dart';
import 'package:todo_list/presentation/shared/notes/note_list_view.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Документы'),
        leading: IconButton(
            icon: const Icon(Icons.account_circle_outlined), onPressed: () {}),
        actions: const [
          SearchButton(),
          // FilterButton(),
          SignOutButton(),
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
    final notes = <Note>[
      Note(id: 1, name: "Расписание пар", body: "", isFavorite: true),
      Note(id: 3, name: "Курсовые проекты", body: "", isFavorite: true),
      Note(id: 2, name: "Тестирование диплома", body: "", isFavorite: false),
    ];
    final groups = <Group>[
      Group(id: 1, name: "Функциональное программирование", isFavorite: false),
      Group(id: 2, name: "Компьютерная графика", isFavorite: false),
      Group(id: 3, name: "Информатика", isFavorite: false),
      Group(id: 4, name: "Мультимедийные технологии", isFavorite: false),
    ];
    return ListView(
      children: [
        GroupListView(groups: groups),
        NoteListView(notes: notes),
      ],
    );
  }
}
