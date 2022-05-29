import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:todo_list/presentation/constants/indents.dart';
import 'package:todo_list/presentation/shared/groups/group_card/pane/group_action_pane.dart';
import 'package:todo_list/presentation/shared/groups/group_inherited.dart';

class GroupCard extends StatelessWidget {
  const GroupCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final group = GroupInherited.of(context).value;
    final theme = Theme.of(context);

    return Slidable(
      endActionPane: GroupActionPane(),
      child: Card(
          elevation: 1,
          child: InkWell(
              onTap: () => {
                    // AutoRouter.of(context).push(TaskFormRoute(task: task))
                  },
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
