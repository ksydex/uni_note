import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:todo_list/core/presentation/shared/tags/note_card/pane/tag_pane_actions.dart';

class TagActionPane extends ActionPane {
  TagActionPane({Key? key})
      : super(key: key, motion: const DrawerMotion(), children: [
          const TagDeleteAction(),
        ]);
}
