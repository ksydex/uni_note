// Create a Form widget.
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_list/core/presentation/shared/indent.dart';
import 'package:todo_list/features/home/application/home_bloc.dart';
import 'package:todo_list/features/home/application/home_event.dart';

class AddGroupContainer extends StatefulWidget {
  final int? groupId;
  const AddGroupContainer({Key? key, this.groupId}) : super(key: key);

  @override
  AddGroupContainerState createState() {
    return AddGroupContainerState();
  }
}

class AddGroupContainerState extends State<AddGroupContainer> {
  final _formKey = GlobalKey<FormState>();

  final nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey created above.
    return BlocBuilder<HomeBloc, HomeState>(builder: (context, state) {
      return Padding(
        padding:
            EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
        child: SafeArea(
          child: Form(
            key: _formKey,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Material(
                      child: TextFormField(
                          controller: nameController,
                          decoration: const InputDecoration(
                              hintText: 'Название раздела'),
                          autofocus: true,
                          validator: (value) => (value == null || value.isEmpty)
                              ? 'Пожалуйста, введите Email'
                              : null)), // валидация на null прошла выше,
                ),
                const Indent.md(),
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      context.read<HomeBloc>().add(
                          HomeEventAddGroup(name: nameController.value.text));
                      AutoRouter.of(context).pop();
                    }
                  },
                  child: const Text('Добавить'),
                ),
              ],
            ),
          ),
        ),
      );
    });
  }
}
