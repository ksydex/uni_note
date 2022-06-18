import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:todo_list/core/presentation/shared/groups/group_card/pane/group_pane_actions.dart';

class GroupActionPane extends ActionPane {
  GroupActionPane({Key? key})
      : super(key: key, motion: const DrawerMotion(), children: [
          const GroupFavoriteAction(),
          const GroupDeleteAction(),
        ]);
}
