import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:todo_list/application/notes/task_form/note_form_cubit.dart';
import 'package:todo_list/domain/notes/note.dart';
import 'package:todo_list/injection.dart';
import 'package:todo_list/presentation/constants/indents.dart';

class NoteFormPage extends StatelessWidget {
  final Note? model;
  const NoteFormPage({Key? key, this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text((model == null) ? 'Новая заметка' : model!.name),
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
              )
          ],
        ),
        body: _NoteFormBody(
          model: model,
        ));
  }
}

class _NoteFormBody extends HookWidget {
  final Note? model;
  static final _taskFormKey = GlobalKey<FormState>();

  const _NoteFormBody({Key? key, this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _taskFormData = <String, dynamic>{};
    final nameController = useTextEditingController();
    final bodyController = useTextEditingController();

    return BlocProvider(
      create: (context) => (model == null)
          ? getIt<NoteFormCubit>()
          : (getIt<NoteFormCubit>()..init(model!)),
      child: BlocBuilder<NoteFormCubit, NoteFormState>(
        buildWhen: (previous, current) =>
            previous.isSaving != current.isSaving &&
            previous.isEditing != current.isEditing,
        builder: (context, state) {
          if (state.isEditing) {
            nameController.text = state.model.name;
            bodyController.text = state.model.body;
          }

          return Form(
            key: _taskFormKey,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextFormField(
                    // name field
                    controller: nameController,
                    onSaved: (value) => _taskFormData['name'] = value,
                    validator: (value) => (value == null || value.isEmpty)
                        ? "Cannot be empty"
                        : null,
                    maxLength: 70,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                    decoration: InputDecoration(
                        hintText: 'Название',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(3),
                        )),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        onPressed: () => Navigator.of(context).pop(),
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.blueGrey.shade50,
                        ),
                        child: const Text("Удалить"),
                      ),
                      const SizedBox(width: Indents.lg),
                      TextButton(
                        onPressed: () async {
                          if (_taskFormKey.currentState!.validate()) {
                            _taskFormKey.currentState?.save();
                            await context.read<NoteFormCubit>().save(Note(
                                id: state
                                    .model.id, // здесь автосгенерированный id
                                name: nameController.value.text,
                                body: bodyController.value.text,
                                isFavorite: false));
                            Navigator.of(context).pop();
                          }
                        },
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.blue,
                        ),
                        child: const Text(
                          "Сохранить",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
