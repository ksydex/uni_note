import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_list/application/tasks/task_searcher/task_searcher_bloc.dart';
import 'package:todo_list/domain/tasks/task_status_filter.dart';
import 'package:todo_list/application/tasks/task_watcher/task_watcher_bloc.dart';
import 'package:todo_list/injection.dart';
import 'package:todo_list/presentation/pages/tasks/widgets/empty_result.dart';
import 'package:todo_list/presentation/pages/tasks/widgets/filter_button.dart';
import 'package:todo_list/presentation/pages/tasks/widgets/search_button.dart';
import 'package:todo_list/presentation/pages/tasks/widgets/sign_out_button.dart';
import 'package:todo_list/presentation/pages/tasks/widgets/tasks_list_view.dart';
import 'package:todo_list/presentation/routes/router.gr.dart';

class TasksOverviewPage extends StatelessWidget {
  const TasksOverviewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => getIt<TaskWatcherBloc>()
          ..add(const TaskWatcherEvent.initiate()),),
        BlocProvider(create: (context) => getIt<TaskSearcherBloc>(),),
      ],
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Todos'),
          actions: const [SearchButton(), FilterButton(), SignOutButton(),],
        ),
        body: const _TasksOverview(),
        floatingActionButton: FloatingActionButton(
          onPressed: () => AutoRouter.of(context).push(TaskFormRoute()),
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}

class _TasksOverview extends StatelessWidget {
  const _TasksOverview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TaskWatcherBloc, TaskWatcherState>(
      builder: (context, state) {
        return state.map(
          loading: (_) => const Center(child: CircularProgressIndicator()),
          success: (state) =>
            (state.tasks.isNotEmpty)
              ? TasksListView(tasks: state.tasks,)
              : EmptyResult(
              message: "There is no ${(state.filter != TaskStatusFilter.all)
                ? state.filter.name
                : ''} tasks to show"
          ),
          failure: (state) => Center(child: Text(state.message)),
        );
      },
    );
  }
}
