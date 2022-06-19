import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:todo_list/core/domain/entities/groups/group.dart';
import 'package:todo_list/core/domain/entities/notes/note.dart';
import 'package:todo_list/core/domain/entities/tags/tag.dart';
import 'package:todo_list/core/presentation/constants/indents.dart';
import 'package:todo_list/core/presentation/shared/card_base.dart';
import 'package:todo_list/core/presentation/shared/groups/group_list_view.dart';
import 'package:todo_list/core/presentation/shared/notes/note_list_view.dart';
import 'package:todo_list/features/home/presentation/widgets/home_screen_navbar.dart';
import 'package:todo_list/features/home/presentation/widgets/profile_container.dart';

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
                  builder: (ctx) => const Padding(
                      padding: EdgeInsets.all(Indents.lg),
                      child: ProfileContainer()),
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
      Note(id: 1, name: "Расписание пар", body: "", isFavorite: true, tags: [
        Tag.test(),
        Tag(id: 2, name: "Lol lmao!", colorHex: "#ffccaa"),
        Tag(id: 2, name: "Kekw 2", colorHex: "#ddccdd")
      ]),
      Note(
          id: 3,
          name: "Курсовые проекты",
          body: "",
          isFavorite: true,
          tags: [Tag.test()]),
      Note(
          id: 2,
          name: "Тестирование диплома",
          body: "",
          isFavorite: false,
          tags: [Tag.test(), Tag(id: 2, name: "Kekw", colorHex: "#ffcccc")]),
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
          Row(
            children: [
              Expanded(
                child: CardBase(
                  onTap: () => AutoRouter.of(context).pop(),
                  leadingIcon: const Icon(Icons.folder_outlined),
                  text: Text("Назад", style: theme.textTheme.titleMedium),
                ),
              ),
              if (AutoRouter.of(context).stack.length > 2)
                Expanded(
                  child: CardBase(
                    onTap: () => AutoRouter.of(context).popUntilRoot(),
                    leadingIcon: const Icon(Icons.folder_copy_outlined),
                    text: Text("В начало", style: theme.textTheme.titleMedium),
                  ),
                ),
            ],
          ),
        GroupListView(groups: groups),
        NoteListView(notes: notes),
      ],
    );
  }
}
