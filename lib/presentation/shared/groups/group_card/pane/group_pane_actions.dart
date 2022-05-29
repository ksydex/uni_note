import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:todo_list/presentation/shared/groups/group_inherited.dart';

class GroupDeleteAction extends StatelessWidget {
  const GroupDeleteAction({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final group = GroupInherited.of(context).value;

    return SlidableAction(
        onPressed: (context) => {
              //   showDialog(
              //   barrierDismissible: false,
              //   context: context,
              //   builder: (context) => TaskDeletingDialog(
              //     note: task,
              //   ),
              // );
            },
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,
        icon: Icons.delete);
  }
}

class GroupFavoriteAction extends StatelessWidget {
  const GroupFavoriteAction({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final group = GroupInherited.of(context).value;

    return SlidableAction(
        autoClose: true,
        onPressed: (context) => {
              //   showDialog(
              //   barrierDismissible: false,
              //   context: context,
              //   builder: (context) => TaskDeletingDialog(
              //     note: task,
              //   ),
              // );
            },
        backgroundColor: Colors.orange,
        foregroundColor: Colors.white,
        icon: group.isFavoriteIcon);
  }
}
