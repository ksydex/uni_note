import 'package:auto_route/annotations.dart';
import 'package:todo_list/presentation/pages/home/home_page.dart';
import 'package:todo_list/presentation/pages/notes/note_form_page.dart';
import 'package:todo_list/presentation/pages/sign_in/sign_in_page.dart';
import 'package:todo_list/presentation/pages/splash/splash_page.dart';
import 'package:todo_list/presentation/pages/tasks/task_form_page.dart';
import 'package:todo_list/presentation/pages/tasks/tasks_overview_page.dart';

@MaterialAutoRouter(replaceInRouteName: 'Page,Route', routes: <AutoRoute>[
  MaterialRoute(path: '/', page: SplashPage, initial: true),
  MaterialRoute(path: '/signIn', page: SignInPage),
  MaterialRoute(path: '/tasks', page: TasksOverviewPage),
  MaterialRoute(path: '/task/:id', page: TaskFormPage),
  MaterialRoute(path: '/', page: HomePage),
  MaterialRoute(path: '/note/:id', page: NoteFormPage)
])
class $Router {}
