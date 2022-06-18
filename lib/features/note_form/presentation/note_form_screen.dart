import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:todo_list/core/domain/notes/note.dart';
import 'package:todo_list/features/note_form/presentation/rich_text_editor.dart';

class NoteFormScreen extends StatelessWidget {
  final Note? model;

  const NoteFormScreen({Key? key, this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text((model == null) ? 'Новый документ' : model!.name),
          actions: [
            if (model != null)
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
            IconButton(icon: const Icon(Icons.done), onPressed: () {})
          ],
        ),
        body: _NoteFormBody(
          model: model,
        ));
  }
}

class _NoteFormBody extends HookWidget {
  final Note? model;

  const _NoteFormBody({Key? key, this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(children: const <Widget>[
        RichTextEditor(),
        // SizedBox(
        //   height: 400,
        // )
      ]),
    ); // Single child scroll view
  }
}
