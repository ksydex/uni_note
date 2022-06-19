import 'package:flutter/material.dart';
import 'package:todo_list/core/domain/entities/tags/tag.dart';
import 'package:todo_list/core/presentation/constants/indents.dart';
import 'package:todo_list/core/presentation/shared/card_base.dart';
import 'package:todo_list/core/presentation/shared/notes/note_card/pane/note_action_pane.dart';
import 'package:todo_list/core/presentation/shared/tags/tag_inherited.dart';

class TagIndicator extends StatelessWidget {
  final Tag tag;
  final bool showText;
  final double height;
  final double width;

  const TagIndicator(
      {Key? key,
      required this.tag,
      this.showText = false,
      this.height = 20,
      this.width = 40})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: showText ? null : height,
      width: showText ? null : width,
      decoration: BoxDecoration(
          color: tag.color,
          borderRadius: const BorderRadius.all(Radius.circular(5))),
      child: showText
          ? Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: Indents.md, vertical: Indents.sm),
              child: Text(
                tag.name,
                style: Theme.of(context)
                    .textTheme
                    .caption
                    ?.copyWith(fontWeight: FontWeight.w500),
              ),
            )
          : Container(),
    );
  }
}

class TagCard extends StatelessWidget {
  const TagCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final tag = TagInherited.of(context).value;
    final theme = Theme.of(context);

    return CardBase(
      actionPane: NoteActionPane(),
      text: Text(tag.name, style: theme.textTheme.titleMedium),
      onTap: () => {
        // AutoRouter.of(context).push(TaskFormRoute(task: task))
      },
      append: Row(
        children: [
          TagIndicator(
            tag: tag,
            width: 50,
          )
        ],
      ),
    );
  }
}
