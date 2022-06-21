import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_list/features/home/application/home_bloc.dart';
import 'package:todo_list/features/home/application/home_event.dart';

class GroupRemoveDialog extends StatelessWidget {
  final int groupId;

  const GroupRemoveDialog({Key? key, required this.groupId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(builder: (context, _) {
      return _CustomDialog(
        child: Column(
          mainAxisSize: MainAxisSize.min, // To make the card compact
          children: <Widget>[
            const ListTile(
              title: Text("Удалить раздел"),
              subtitle: Text(
                  "При удалении все документы из этого раздела попадут в архив"),
              isThreeLine: true,
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () => Navigator.of(context).pop(),
                  child: const Text("Отменить"),
                ),
                const SizedBox(width: 10),
                TextButton(
                  onPressed: () {
                    context
                        .read<HomeBloc>()
                        .add(HomeEventRemoveGroup(id: groupId));
                    Navigator.of(context).pop();
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.red,
                  ),
                  child: const Text(
                    "Удалить",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    });
  }
}

class _CustomDialog extends StatelessWidget {
  final Widget child;
  const _CustomDialog({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      elevation: 0.0,
      backgroundColor: Colors.transparent,
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8.0),
          boxShadow: const [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 10.0,
              offset: Offset(0.0, 10.0),
            ),
          ],
        ),
        child: child,
      ),
    );
  }
}
