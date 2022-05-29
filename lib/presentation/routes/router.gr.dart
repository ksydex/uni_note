// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i7;
import 'package:flutter/material.dart' as _i8;

import '../../domain/notes/note.dart' as _i10;
import '../../domain/tasks/task.dart' as _i9;
import '../pages/home/home_page.dart' as _i5;
import '../pages/notes/note_form_page.dart' as _i6;
import '../pages/sign_in/sign_in_page.dart' as _i2;
import '../pages/splash/splash_page.dart' as _i1;
import '../pages/tasks/task_form_page.dart' as _i4;
import '../pages/tasks/tasks_overview_page.dart' as _i3;

class Router extends _i7.RootStackRouter {
  Router([_i8.GlobalKey<_i8.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i7.PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: _i1.SplashPage());
    },
    SignInRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.SignInPage());
    },
    TasksOverviewRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.TasksOverviewPage());
    },
    TaskFormRoute.name: (routeData) {
      final args = routeData.argsAs<TaskFormRouteArgs>(
          orElse: () => const TaskFormRouteArgs());
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i4.TaskFormPage(key: args.key, task: args.task));
    },
    HomeRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.HomePage());
    },
    NoteFormRoute.name: (routeData) {
      final args = routeData.argsAs<NoteFormRouteArgs>(
          orElse: () => const NoteFormRouteArgs());
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i6.NoteFormPage(key: args.key, model: args.model));
    }
  };

  @override
  List<_i7.RouteConfig> get routes => [
        _i7.RouteConfig(SplashRoute.name, path: '/'),
        _i7.RouteConfig(SignInRoute.name, path: '/signIn'),
        _i7.RouteConfig(TasksOverviewRoute.name, path: '/tasks'),
        _i7.RouteConfig(TaskFormRoute.name, path: '/task/:id'),
        _i7.RouteConfig(HomeRoute.name, path: '/'),
        _i7.RouteConfig(NoteFormRoute.name, path: '/note/:id')
      ];
}

/// generated route for
/// [_i1.SplashPage]
class SplashRoute extends _i7.PageRouteInfo<void> {
  const SplashRoute() : super(SplashRoute.name, path: '/');

  static const String name = 'SplashRoute';
}

/// generated route for
/// [_i2.SignInPage]
class SignInRoute extends _i7.PageRouteInfo<void> {
  const SignInRoute() : super(SignInRoute.name, path: '/signIn');

  static const String name = 'SignInRoute';
}

/// generated route for
/// [_i3.TasksOverviewPage]
class TasksOverviewRoute extends _i7.PageRouteInfo<void> {
  const TasksOverviewRoute() : super(TasksOverviewRoute.name, path: '/tasks');

  static const String name = 'TasksOverviewRoute';
}

/// generated route for
/// [_i4.TaskFormPage]
class TaskFormRoute extends _i7.PageRouteInfo<TaskFormRouteArgs> {
  TaskFormRoute({_i8.Key? key, _i9.Task? task})
      : super(TaskFormRoute.name,
            path: '/task/:id', args: TaskFormRouteArgs(key: key, task: task));

  static const String name = 'TaskFormRoute';
}

class TaskFormRouteArgs {
  const TaskFormRouteArgs({this.key, this.task});

  final _i8.Key? key;

  final _i9.Task? task;

  @override
  String toString() {
    return 'TaskFormRouteArgs{key: $key, task: $task}';
  }
}

/// generated route for
/// [_i5.HomePage]
class HomeRoute extends _i7.PageRouteInfo<void> {
  const HomeRoute() : super(HomeRoute.name, path: '/');

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i6.NoteFormPage]
class NoteFormRoute extends _i7.PageRouteInfo<NoteFormRouteArgs> {
  NoteFormRoute({_i8.Key? key, _i10.Note? model})
      : super(NoteFormRoute.name,
            path: '/note/:id', args: NoteFormRouteArgs(key: key, model: model));

  static const String name = 'NoteFormRoute';
}

class NoteFormRouteArgs {
  const NoteFormRouteArgs({this.key, this.model});

  final _i8.Key? key;

  final _i10.Note? model;

  @override
  String toString() {
    return 'NoteFormRouteArgs{key: $key, model: $model}';
  }
}
