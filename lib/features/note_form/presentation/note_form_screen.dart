import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_quill/flutter_quill.dart';
import 'package:todo_list/core/domain/entities/notes/note.dart';
import 'package:todo_list/core/presentation/routes/app_router.dart';
import 'package:todo_list/features/note_form/presentation/rich_text_editor.dart';

class NoteFormScreen extends StatefulWidget {
  final Note? model;

  const NoteFormScreen({Key? key, this.model}) : super(key: key);

  @override
  State<NoteFormScreen> createState() => _NoteFormScreenState();
}

class _NoteFormScreenState extends State<NoteFormScreen> {
  late final QuillController controller;

  _NoteFormScreenState() {
    final v = Document.fromDelta(Delta()
      ..insert("")
      ..insert("\n", <String, dynamic>{"header": 2}));

    controller = QuillController(
      document: v,
      selection: const TextSelection.collapsed(offset: 0),
    )..changes.listen((event) {
        final r = event.item2.first.value == 1;
        if (r != _isSaveDisabled) setState(() => _isSaveDisabled = r);
      });
  }

  bool _isSaveDisabled = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            if (widget.model != null)
              IconButton(
                icon: const Icon(Icons.delete),
                onPressed: () async {
                  // var v = await showDialog(
                  //   barrierDismissible: false,
                  //   context: context,
                  //   builder: (context) => TaskDeletingDialog(
                  //     task: model!,
                  //   ),
                  // );
                  //
                  // if (v == null) AutoRouter.of(context).pop();
                },
              ),
            IconButton(
                icon: const Icon(Icons.done),
                onPressed: _isSaveDisabled
                    ? null
                    : () {
                        print(controller.document.toDelta().toList());
                        AutoRouter.of(context).replace(HomeRoute());
                      })
          ],
        ),
        body: SingleChildScrollView(
          child: Column(children: <Widget>[
            RichTextEditor(
              controller: controller,
            ),
          ]),
        ));
  }
}
