import 'package:flutter/material.dart';
import 'package:todo_list/core/domain/entities/tags/tag.dart';
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
          actions: const [
            // SearchButton(),
            // FilterButton(),
            // SignOutButton(),
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
      Tag(id: 1, name: "Расписание пар", colorHex: "#ffaabb"),
      Tag(id: 3, name: "Курсовые проекты", colorHex: "#ffffbb"),
      Tag(id: 2, name: "Тестирование диплома", colorHex: "#ffaaff"),
    ];

    return ListView(
      children: [TagListView(tags: tags)],
    );
  }
}
