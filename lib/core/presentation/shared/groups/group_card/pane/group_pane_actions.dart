import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:todo_list/core/presentation/shared/groups/group_card/pane/group_remove_dialog.dart';
import 'package:todo_list/core/presentation/shared/groups/group_inherited.dart';
import 'package:todo_list/features/home/application/home_bloc.dart';

class GroupDeleteAction extends StatelessWidget {
  const GroupDeleteAction({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final group = GroupInherited.of(context).value;

    return SlidableAction(
        onPressed: (context) {
          showDialog(
            barrierDismissible: false,
            context: context,
            builder: (_) => BlocProvider.value(
                value: BlocProvider.of<HomeBloc>(context),
                child: GroupRemoveDialog(groupId: group.id)),
          );
        },
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,
        icon: Icons.delete);
  }
}
