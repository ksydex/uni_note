import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:todo_list/core/domain/notes/note.dart';
import 'package:todo_list/core/presentation/pages/notes/note_form_page.dart';
import 'package:todo_list/core/presentation/pages/sign_in/sign_in_page.dart';
import 'package:todo_list/core/presentation/pages/splash/splash_page.dart';
import 'package:todo_list/features/home/presentation/screens/home_screen.dart';

part 'app_router.gr.dart';

@MaterialAutoRouter(replaceInRouteName: 'Page,Route', routes: <AutoRoute>[
  MaterialRoute(path: '/', page: SplashPage, initial: true),
  MaterialRoute(path: '/signIn', page: SignInPage),
  MaterialRoute(path: '/', page: HomeScreen),
  MaterialRoute(path: '/note/:id', page: NoteFormPage)
])
class AppRouter extends _$AppRouter {}
