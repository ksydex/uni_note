import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:todo_list/core/domain/entities/groups/group.dart';
import 'package:todo_list/core/presentation/constants/indents.dart';
import 'package:todo_list/core/presentation/shared/card_base.dart';
import 'package:todo_list/core/presentation/shared/groups/group_list_view.dart';
import 'package:todo_list/core/presentation/shared/notes/note_list_view.dart';
import 'package:todo_list/features/home/application/home_bloc.dart';
import 'package:todo_list/features/home/application/home_event.dart';
import 'package:todo_list/features/home/presentation/widgets/home_screen_navbar.dart';
import 'package:todo_list/features/home/presentation/widgets/profile_container.dart';
import 'package:todo_list/injection.dart';

class HomeScreen extends StatelessWidget {
  final Group? group;

  const HomeScreen({Key? key, this.group}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return BlocProvider(
        create: (context) =>
            getIt<HomeBloc>()..add(HomeEventInitialLoad(groupId: group?.id)),
        child: Scaffold(
          appBar: AppBar(
            title: Text(
              group?.name ?? 'Документы',
              style: theme.textTheme.titleMedium?.copyWith(
                  color: theme.colorScheme.onPrimary,
                  fontWeight: FontWeight.w500),
            ),
            leading: IconButton(
                icon: const Icon(Icons.account_circle_outlined),
                onPressed: () {
                  showCupertinoModalBottomSheet(
                      context: context,
                      builder: (ctx) => const Padding(
                          padding: EdgeInsets.all(Indents.lg),
                          child: ProfileContainer()));
                }),
            actions: const [
              // SearchButton(),
              // FilterButton(),
              // SignOutButton(),
            ],
          ),
          body: Padding(
            padding: const EdgeInsets.all(Indents.sm),
            child: _NotesOverview(canBePopped: group != null, group: group),
          ),
          bottomNavigationBar: HomeScreenNavbar(
            group: group,
          ),
        ));
  }
}

class _NotesOverview extends StatelessWidget {
  final bool canBePopped;
  final Group? group;

  const _NotesOverview({Key? key, this.canBePopped = false, this.group})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return BlocBuilder<HomeBloc, HomeState>(builder: (context, state) {
      return state.isLoading
          ? const Center(child: CircularProgressIndicator())
          : ListView(
              children: [
                if (canBePopped)
                  Row(
                    children: [
                      Expanded(
                        child: CardBase(
                          onTap: () => AutoRouter.of(context).pop(),
                          leadingIcon: const Icon(Icons.folder_outlined),
                          text:
                              Text("Назад", style: theme.textTheme.titleMedium),
                        ),
                      ),
                      if (AutoRouter.of(context).stack.length > 2)
                        Expanded(
                          child: CardBase(
                            onTap: () => AutoRouter.of(context).popUntilRoot(),
                            leadingIcon: const Icon(Icons.folder_copy_outlined),
                            text: Text("В начало",
                                style: theme.textTheme.titleMedium),
                          ),
                        ),
                    ],
                  ),
                if (state.notes.isEmpty && state.groups.isEmpty)
                  Padding(
                    padding: const EdgeInsets.only(top: Indents.lg * 2),
                    child: Center(
                      child: Text(
                        "Добавьте первую заметку или раздел!",
                        style: theme.textTheme.titleMedium
                            ?.copyWith(color: theme.disabledColor),
                      ),
                    ),
                  )
                else ...[
                  GroupListView(groups: state.groups),
                  NoteListView(notes: state.notes),
                ]
              ],
            );
    });
  }
}
