import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:todo_list/core/presentation/shared/indent.dart';

class CardBase extends StatelessWidget {
  final VoidCallback? onTap;
  final ActionPane? actionPane;
  final Icon? leadingIcon;
  final Text text;
  final Widget? append;

  const CardBase(
      {Key? key,
      this.onTap,
      this.leadingIcon,
      required this.text,
      this.actionPane,
      this.append})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Slidable(
      endActionPane: actionPane,
      child: Card(
          elevation: 1,
          child: InkWell(
              onTap: () => onTap?.call(),
              child: Container(
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.all(12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Row(children: [
                      if (leadingIcon != null) const Icon(Icons.folder),
                      if (leadingIcon != null) const Indent.md(),
                      text,
                    ]),
                    if (append != null) append!
                  ],
                ),
              ))),
    );
  }
}
