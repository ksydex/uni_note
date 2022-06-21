import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:todo_list/core/infrastructure/hive_auth_box.dart';
import 'package:todo_list/core/presentation/constants/indents.dart';
import 'package:todo_list/core/presentation/routes/app_router.dart';
import 'package:todo_list/core/presentation/shared/indent.dart';
import 'package:todo_list/core/presentation/shared/text_button_with_icon.dart';
import 'package:todo_list/features/home/presentation/widgets/sign_out_button.dart';

class ProfileContainer extends StatelessWidget {
  const ProfileContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final userName = HiveAuthBox.user?.name ?? "Нет имени!";

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: Indents.lg)
              .copyWith(top: Indents.md),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(userName, style: theme.textTheme.titleLarge),
              const Indent.md(),
              Row(
                children: [
                  Text("Всего заметок: 20", style: theme.textTheme.bodyMedium),
                  const Indent.lg(),
                  Text("Всего папок: 20", style: theme.textTheme.bodyMedium)
                ],
              )
            ],
          ),
        ),
        const Divider(),
        TextButtonWithIcon(
            onPressed: () =>
                AutoRouter.of(context).push(const TagsOverviewRoute()),
            text: const Text("Архив"),
            icon: const Icon(Icons.archive)),
        TextButtonWithIcon(
            onPressed: () =>
                AutoRouter.of(context).push(const TagsOverviewRoute()),
            text: const Text("Управление тегами"),
            icon: const Icon(Icons.tag)),
        TextButtonWithIcon(
            onPressed: () =>
                AutoRouter.of(context).push(const TagsOverviewRoute()),
            text: const Text("Настройки"),
            icon: const Icon(Icons.settings)),
        const SignOutButton(),
        const SizedBox(
          height: 100,
        )
      ],
    );
  }
}
