import 'package:flutter/material.dart';
import 'package:todo_list/core/domain/entities/tags/tag/tag.dart';
import 'package:todo_list/core/presentation/constants/indents.dart';
import 'package:todo_list/core/presentation/shared/tags/tag_list_view.dart';

class TagsOverviewScreen extends StatelessWidget {
  const TagsOverviewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
        appBar: AppBar(
          title: Text('Теги'),
          actions: [
            // SearchButton(),
            // FilterButton(),
            // SignOutButton(),
            IconButton(
              icon: const Icon(Icons.add),
              onPressed: () {},
            )
          ],
        ),
        body: const Padding(
          padding: EdgeInsets.all(Indents.sm),
          child: _TagsOverview(),
        ));
  }
}

class _TagsOverview extends StatelessWidget {
  const _TagsOverview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    final tags = <Tag>[
      Tag(id: 2, name: "Первый семестр", colorHex: "#59cd90"),
      Tag(id: 2, name: "Второй семестр", colorHex: "#d9b5e8"),
      Tag(id: 2, name: "Неотложно", colorHex: "#f9626c"),
      Tag(id: 2, name: "Срочно", colorHex: "#fa5e1f"),
      Tag(id: 2, name: "Важно", colorHex: "#ffccaa"),
      Tag(id: 2, name: "Неприоритетно", colorHex: "#cce6f4")
    ];

    return ListView(
      children: [TagListView(tags: tags)],
    );
  }
}
