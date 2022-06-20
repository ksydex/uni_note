import 'package:flutter/material.dart';
import 'package:todo_list/core/domain/entities/tags/tag/tag.dart';
import 'package:todo_list/core/presentation/shared/tags/note_card/tag_card.dart';
import 'package:todo_list/core/presentation/shared/tags/tag_inherited.dart';

class TagListView extends StatelessWidget {
  final List<Tag> tags;
  const TagListView({Key? key, required this.tags}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: tags.length,
      physics: const ClampingScrollPhysics(),
      itemBuilder: (context, i) => TagInherited(
        value: tags[i],
        child: const TagCard(),
      ),
    );
  }
}
