import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:hive/hive.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';
import 'package:todo_list/core/application/app_bloc_observer.dart';
import 'package:todo_list/core/application/auth/auth_bloc.dart';
import 'package:todo_list/core/infrastructure/hive_auth_box.dart';
import 'package:todo_list/core/presentation/routes/app_router.dart';
import 'package:todo_list/injection.dart';

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  Hive.init('home');
  final directory = await getApplicationDocumentsDirectory();
  Hive.init(directory.path);
  await HiveAuthBox.open();

  HttpOverrides.global = MyHttpOverrides();
  await dotenv.load(fileName: ".env");
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

  final _appRouter = AppRouter();

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
