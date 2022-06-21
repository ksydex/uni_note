import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:todo_list/core/presentation/routes/app_router.dart';
import 'package:todo_list/core/presentation/shared/card_base.dart';
import 'package:todo_list/core/presentation/shared/groups/group_card/pane/group_action_pane.dart';
import 'package:todo_list/core/presentation/shared/groups/group_inherited.dart';

class GroupCard extends StatelessWidget {
  const GroupCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final group = GroupInherited.of(context).value;
    final theme = Theme.of(context);

    return CardBase(
        onTap: () => AutoRouter.of(context).push(HomeRoute(group: group)),
        actionPane: GroupActionPane(),
        text: Text(group.name, style: theme.textTheme.titleMedium),
        leadingIcon: const Icon(Icons.folder));
  }
}
