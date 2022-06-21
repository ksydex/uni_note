import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:todo_list/core/domain/entities/groups/group.dart';
import 'package:todo_list/core/presentation/constants/indents.dart';
import 'package:todo_list/core/presentation/routes/app_router.dart';
import 'package:todo_list/features/home/application/home_bloc.dart';
import 'package:todo_list/features/home/presentation/widgets/add_group_container.dart';

class HomeScreenNavbar extends StatelessWidget {
  final Group? group;

  const HomeScreenNavbar({Key? key, this.group}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
              offset: const Offset(0, -1),
              blurRadius: 5,
              color: Theme.of(context).disabledColor,
              spreadRadius: -3),
        ],
        color: Theme.of(context).cardColor,
        // border: Border(
        //     top: BorderSide(width: 1, color: Theme.of(context).disabledColor)),
      ),
      child: SafeArea(
        child: Material(
          color: Theme.of(context).cardColor,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: Indents.sm),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    onPressed: () {
                      showCupertinoModalBottomSheet(
                          context: context,
                          builder: (ctx) => Padding(
                              padding: const EdgeInsets.all(Indents.lg),
                              child: BlocProvider.value(
                                value: BlocProvider.of<HomeBloc>(context),
                                child: AddGroupContainer(
                                  groupId: group?.id,
                                ),
                              )),
                          expand: false);
                    },
                    icon: const Icon(Icons.create_new_folder)),
                IconButton(
                    onPressed: () =>
                        AutoRouter.of(context).push(NoteFormRoute()),
                    icon: const Icon(Icons.note_add))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
