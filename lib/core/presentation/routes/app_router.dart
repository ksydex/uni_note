import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:todo_list/core/domain/notes/note.dart';
import 'package:todo_list/features/auth/sign_in/presentation/sign_in_screen.dart';
import 'package:todo_list/features/home/presentation/home_screen.dart';
import 'package:todo_list/features/note_form/presentation/note_form_screen.dart';
import 'package:todo_list/features/splash/presentation/splash_screen.dart';

part 'app_router.gr.dart';

@MaterialAutoRouter(replaceInRouteName: 'Screen,Route', routes: <AutoRoute>[
  MaterialRoute(path: '/', page: SplashScreen, initial: true),
  MaterialRoute(path: '/signIn', page: SignInScreen),
  MaterialRoute(path: '/', page: HomeScreen),
  MaterialRoute(path: '/note/:id', page: NoteFormScreen)
])
class AppRouter extends _$AppRouter {}
