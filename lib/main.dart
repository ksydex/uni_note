import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';
import 'package:todo_list/application/app_bloc_observer.dart';
import 'package:todo_list/application/auth/auth_bloc.dart';
import 'package:todo_list/injection.dart';
import 'package:todo_list/presentation/routes/router.gr.dart' as app_router;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureInjection();
  Directory appDocDir = kIsWeb
      ? HydratedStorage.webStorageDirectory
      : await getApplicationDocumentsDirectory();
  final storage = await HydratedStorage.build(storageDirectory: appDocDir);
  HydratedBlocOverrides.runZoned(
    () => runApp(TodoApp()),
    blocObserver: AppBlocObserver(),
    storage: storage,
  );
}

class TodoApp extends StatelessWidget {
  TodoApp({Key? key}) : super(key: key);

  final _appRouter = app_router.Router();

  // This widget is the root of the application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          getIt<AuthBloc>()..add(const AuthEvent.authCheckRequested()),
      child: MaterialApp.router(
        title: 'UniNote',
        routerDelegate: _appRouter.delegate(),
        routeInformationParser: _appRouter.defaultRouteParser(),
        theme: ThemeData(
            primarySwatch: Colors.blue,
            iconTheme: const IconThemeData(color: Colors.grey)),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
