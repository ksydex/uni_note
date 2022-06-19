import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:todo_list/core/presentation/constants/indents.dart';
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
        leadingIcon: const Icon(Icons.folder),
        append: Row(
          children: [
            if (group.isFavorite)
              Text("В избранном", style: theme.textTheme.bodySmall)
          ],
        ));

    Slidable(
      endActionPane: GroupActionPane(),
      child: Card(
          elevation: 1,
          child: InkWell(
              onTap: () => AutoRouter.of(context).push(HomeRoute(group: group)),
              child: Container(
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.all(12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Row(
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(right: Indents.md),
                          child: Icon(Icons.folder),
                        ),
                        Text(group.name, style: theme.textTheme.titleMedium),
                      ],
                    ),
                    if (group.isFavorite)
                      Text("В избранном", style: theme.textTheme.bodySmall)
                  ],
                ),
              ))),
    );
  }
}
