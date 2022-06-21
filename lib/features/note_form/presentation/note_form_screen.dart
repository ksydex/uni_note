import 'dart:convert';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_quill/flutter_quill.dart';
import 'package:todo_list/core/domain/entities/notes/note.dart';
import 'package:todo_list/features/note_form/application/note_form_cubit.dart';
import 'package:todo_list/features/note_form/presentation/rich_text_editor.dart';
import 'package:todo_list/injection.dart';

class NoteFormScreen extends StatefulWidget {
  final int id;

  const NoteFormScreen({Key? key, required this.id}) : super(key: key);

  @override
  State<NoteFormScreen> createState() => _NoteFormScreenState();
}

class _NoteFormScreenState extends State<NoteFormScreen> {
  late final QuillController? controller;

  _NoteFormScreenState() {
    // final delta = Delta()
    //   ..insert("Новый документ")
    //   ..insert("\n", <String, dynamic>{"header": 2});
    //
    // final v = Document.fromJson(jsonDecode(widget.model.body));

    // controller = QuillController(
    //   document: v,
    //   selection: const TextSelection.collapsed(offset: 0),
    // )..changes.listen((event) {
    //     final r = event.item2.first.value == 1;
    //     if (r != _isSaveDisabled) setState(() => _isSaveDisabled = r);
    //   });
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (_) => getIt<NoteFormCubit>()..load(widget.id),
        child: BlocConsumer<NoteFormCubit, NoteFormState>(
            listener: (context, state) {
          if (state.isLoading == false && state.note != null) {
            controller = QuillController(
              document: Document.fromJson(jsonDecode(state.note!.body)),
              selection: const TextSelection.collapsed(offset: 0),
            );
          }
        }, builder: (context, state) {
          return Scaffold(
              appBar: AppBar(
                actions: [
                  // IconButton(
                  //   icon: const Icon(Icons.delete),
                  //   onPressed: () async {
                  //     // var v = await showDialog(
                  //     //   barrierDismissible: false,
                  //     //   context: context,
                  //     //   builder: (context) => TaskDeletingDialog(
                  //     //     task: model!,
                  //     //   ),
                  //     // );
                  //     //
                  //     // if (v == null) AutoRouter.of(context).pop();
                  //   },
                  // ),
                  if (state.note != null)
                    IconButton(
                        icon: const Icon(Icons.done),
                        onPressed: () async {
                          final note = state.note!;
                          await context.read<NoteFormCubit>().save(Note(
                              id: note.id,
                              isFavorite: note.isFavorite,
                              name: note.name,
                              body: jsonEncode(
                                  controller!.document.toDelta().toJson()),
                              groupId: note.groupId,
                              isArchived: note.isArchived,
                              tags: note.tags));
                          AutoRouter.of(context).pop(true);
                        })
                ],
              ),
              body: state.isLoading
                  ? const Center(child: CircularProgressIndicator())
                  : SingleChildScrollView(
                      child: Column(children: <Widget>[
                        RichTextEditor(
                          controller: controller!,
                        ),
                      ]),
                    ));
        }));
  }
}
