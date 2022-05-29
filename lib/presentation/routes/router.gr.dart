// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i6;
import 'package:flutter/material.dart' as _i7;

import '../../domain/tasks/task.dart' as _i8;
import '../pages/notes/notes_overview_page.dart' as _i5;
import '../pages/sign_in/sign_in_page.dart' as _i2;
import '../pages/splash/splash_page.dart' as _i1;
import '../pages/tasks/task_form_page.dart' as _i4;
import '../pages/tasks/tasks_overview_page.dart' as _i3;

class Router extends _i6.RootStackRouter {
  Router([_i7.GlobalKey<_i7.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i6.PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: _i1.SplashPage());
    },
    SignInRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.SignInPage());
    },
    TasksOverviewRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.TasksOverviewPage());
    },
    TaskFormRoute.name: (routeData) {
      final args = routeData.argsAs<TaskFormRouteArgs>(
          orElse: () => const TaskFormRouteArgs());
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i4.TaskFormPage(key: args.key, task: args.task));
    },
    NotesOverviewRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.NotesOverviewPage());
    }
  };

  @override
  List<_i6.RouteConfig> get routes => [
        _i6.RouteConfig(SplashRoute.name, path: '/'),
        _i6.RouteConfig(SignInRoute.name, path: '/signIn'),
        _i6.RouteConfig(TasksOverviewRoute.name, path: '/tasks'),
        _i6.RouteConfig(TaskFormRoute.name, path: '/task/:id'),
        _i6.RouteConfig(NotesOverviewRoute.name, path: '/note')
      ];
}

/// generated route for
/// [_i1.SplashPage]
class SplashRoute extends _i6.PageRouteInfo<void> {
  const SplashRoute() : super(SplashRoute.name, path: '/');

  static const String name = 'SplashRoute';
}

/// generated route for
/// [_i2.SignInPage]
class SignInRoute extends _i6.PageRouteInfo<void> {
  const SignInRoute() : super(SignInRoute.name, path: '/signIn');

  static const String name = 'SignInRoute';
}

/// generated route for
/// [_i3.TasksOverviewPage]
class TasksOverviewRoute extends _i6.PageRouteInfo<void> {
  const TasksOverviewRoute() : super(TasksOverviewRoute.name, path: '/tasks');

  static const String name = 'TasksOverviewRoute';
}

/// generated route for
/// [_i4.TaskFormPage]
class TaskFormRoute extends _i6.PageRouteInfo<TaskFormRouteArgs> {
  TaskFormRoute({_i7.Key? key, _i8.Task? task})
      : super(TaskFormRoute.name,
            path: '/task/:id', args: TaskFormRouteArgs(key: key, task: task));

  static const String name = 'TaskFormRoute';
}

class TaskFormRouteArgs {
  const TaskFormRouteArgs({this.key, this.task});

  final _i7.Key? key;

  final _i8.Task? task;

  @override
  String toString() {
    return 'TaskFormRouteArgs{key: $key, task: $task}';
  }
}

/// generated route for
/// [_i5.NotesOverviewPage]
class NotesOverviewRoute extends _i6.PageRouteInfo<void> {
  const NotesOverviewRoute() : super(NotesOverviewRoute.name, path: '/note');

  static const String name = 'NotesOverviewRoute';
}
