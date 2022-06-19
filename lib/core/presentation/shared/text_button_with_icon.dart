import 'package:flutter/material.dart';
import 'package:todo_list/core/presentation/shared/indent.dart';

class TextButtonWithIcon extends StatelessWidget {
  final VoidCallback? onPressed;
  final Icon icon;
  final Text text;
  final ButtonStyle? style;

  const TextButtonWithIcon(
      {Key? key,
      this.onPressed,
      required this.text,
      required this.icon,
      this.style})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
        style: style,
        onPressed: () => onPressed?.call(),
        child: Row(
          children: [icon, const Indent.md(), text],
        ));
  }
}
