import 'package:flutter/material.dart';
import 'package:todo_list/presentation/constants/indents.dart';

class Indent extends StatelessWidget {
  const Indent({Key? key, this.vertical = 0, this.horizontal = 0})
      : super(key: key);

  const Indent.sm({Key? key})
      : vertical = Indents.sm,
        horizontal = Indents.sm,
        super(key: key);

  const Indent.md({Key? key})
      : vertical = Indents.md,
        horizontal = Indents.md,
        super(key: key);

  const Indent.lg({Key? key})
      : vertical = Indents.lg,
        horizontal = Indents.lg,
        super(key: key);

  const Indent.xl({Key? key})
      : vertical = Indents.xl,
        horizontal = Indents.xl,
        super(key: key);

  final double vertical;
  final double horizontal;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: horizontal,
      height: vertical,
    );
  }
}
