import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_list/application/tasks/task_searcher/task_searcher_bloc.dart';
import 'package:todo_list/domain/tasks/task.dart';
import 'package:todo_list/presentation/pages/tasks/widgets/empty_result.dart';
import 'package:todo_list/presentation/pages/tasks/widgets/tasks_list_view.dart';

class SearchButton extends StatelessWidget {

  const SearchButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) =>
    IconButton(
      onPressed: () => showSearch(
        context: context,
        delegate: _TaskSearchDelegate(BlocProvider.of<TaskSearcherBloc>(context)),
      ),
      icon: const Icon(Icons.search),
    );
}

class _TaskSearchDelegate extends SearchDelegate<Task?> {
  final TaskSearcherBloc taskSearcherBloc;

  _TaskSearchDelegate(this.taskSearcherBloc);

  @override
  Widget? buildLeading(BuildContext context) =>
    IconButton(
      onPressed: () => close(context, null),
      icon: const Icon(Icons.arrow_back),
    );

  @override
  List<Widget>? buildActions(BuildContext context) => [
    IconButton(
      onPressed: () => (query.isEmpty)
        ? close(context, null)
        : query = '',
      icon: const Icon(Icons.clear)
    ),
  ];

  @override
  Widget buildResults(BuildContext context) {
    taskSearcherBloc.add(TaskSearcherEvent.search(query));
    return BlocBuilder<TaskSearcherBloc, TaskSearcherState>(
      bloc: taskSearcherBloc,
      builder: (context, state) => state.map(
        loading: (_) => const Center(child: CircularProgressIndicator()),
        searchResult: (state) => (state.tasks.isNotEmpty)
          ? TasksListView(tasks: state.tasks,)
          : const EmptyResult(message: "Tasks not found"),
        failure: (state) => Center(child: Text(state.message)),
      ),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) => Container();
}