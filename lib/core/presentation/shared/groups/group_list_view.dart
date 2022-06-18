import 'package:flutter/material.dart';
import 'package:todo_list/core/domain/entities/groups/group.dart';
import 'package:todo_list/core/presentation/shared/groups/group_card/group_card.dart';
import 'package:todo_list/core/presentation/shared/groups/group_inherited.dart';

class GroupListView extends StatelessWidget {
  final List<Group> groups;
  const GroupListView({Key? key, required this.groups}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const ClampingScrollPhysics(),
      itemCount: groups.length,
      itemBuilder: (context, i) => GroupInherited(
        value: groups[i],
        child: const GroupCard(),
      ),
    );
  }
}
