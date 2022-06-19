import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:todo_list/core/presentation/shared/indent.dart';

class CardBase extends StatelessWidget {
  final VoidCallback? onTap;
  final ActionPane? actionPane;
  final Icon? leadingIcon;
  final Text text;
  final Widget? append;
  final Widget? appendBottom;

  const CardBase(
      {Key? key,
      this.onTap,
      this.appendBottom,
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
                padding: const EdgeInsets.all(12),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Row(children: [
                          if (leadingIcon != null) leadingIcon!,
                          if (leadingIcon != null) const Indent.md(),
                          text,
                        ]),
                        if (append != null) append!
                      ],
                    ),
                    if (appendBottom != null) appendBottom!
                  ],
                ),
              ))),
    );
  }
}
