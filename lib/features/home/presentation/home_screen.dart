import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:todo_list/core/domain/entities/groups/group.dart';
import 'package:todo_list/core/domain/entities/notes/note.dart';
import 'package:todo_list/core/presentation/constants/indents.dart';
import 'package:todo_list/core/presentation/shared/card_base.dart';
import 'package:todo_list/core/presentation/shared/groups/group_list_view.dart';
import 'package:todo_list/core/presentation/shared/notes/note_list_view.dart';
import 'package:todo_list/features/home/presentation/widgets/home_screen_navbar.dart';
import 'package:todo_list/features/home/presentation/widgets/sign_out_button.dart';

class HomeScreen extends StatelessWidget {
  final Group? group;

  const HomeScreen({Key? key, this.group}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          group?.name ?? 'Документы',
          style: theme.textTheme.titleMedium?.copyWith(
              color: theme.colorScheme.onPrimary, fontWeight: FontWeight.w500),
        ),
        leading: IconButton(
            icon: const Icon(Icons.account_circle_outlined),
            onPressed: () {
              showCupertinoModalBottomSheet(
                  context: context,
                  builder: (ctx) => Padding(
                        padding: const EdgeInsets.all(Indents.lg),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Профиль", style: theme.textTheme.titleLarge),
                            const SignOutButton()
                          ],
                        ),
                      ),
                  expand: false);
            }),
        actions: const [
          // SearchButton(),
          // FilterButton(),
          // SignOutButton(),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(Indents.sm),
        child: _NotesOverview(canBePopped: group != null),
      ),
      bottomNavigationBar: const HomeScreenNavbar(),
    );
  }
}

class _NotesOverview extends StatelessWidget {
  final bool canBePopped;

  const _NotesOverview({Key? key, this.canBePopped = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
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
        if (canBePopped)
          CardBase(
            onTap: () => AutoRouter.of(context).pop(),
            leadingIcon: const Icon(Icons.folder),
            text: Text("..",
                style: theme.textTheme.titleMedium
                    ?.copyWith(color: theme.disabledColor)),
          ),
        GroupListView(groups: groups),
        NoteListView(notes: notes),
      ],
    );
  }
}
