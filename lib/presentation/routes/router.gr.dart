// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i5;
import 'package:flutter/material.dart' as _i6;

import '../../domain/tasks/task.dart' as _i7;
import '../pages/sign_in/sign_in_page.dart' as _i2;
import '../pages/splash/splash_page.dart' as _i1;
import '../pages/tasks/task_form_page.dart' as _i4;
import '../pages/tasks/tasks_overview_page.dart' as _i3;

class Router extends _i5.RootStackRouter {
  Router([_i6.GlobalKey<_i6.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: _i1.SplashPage());
    },
    SignInRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.SignInPage());
    },
    TasksOverviewRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.TasksOverviewPage());
    },
    TaskFormRoute.name: (routeData) {
      final args = routeData.argsAs<TaskFormRouteArgs>(
          orElse: () => const TaskFormRouteArgs());
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i4.TaskFormPage(key: args.key, task: args.task));
    }
  };

  @override
  List<_i5.RouteConfig> get routes => [
        _i5.RouteConfig(SplashRoute.name, path: '/'),
        _i5.RouteConfig(SignInRoute.name, path: '/signIn'),
        _i5.RouteConfig(TasksOverviewRoute.name, path: '/tasks'),
        _i5.RouteConfig(TaskFormRoute.name, path: '/task/:id')
      ];
}

/// generated route for
/// [_i1.SplashPage]
class SplashRoute extends _i5.PageRouteInfo<void> {
  const SplashRoute() : super(SplashRoute.name, path: '/');

  static const String name = 'SplashRoute';
}

/// generated route for
/// [_i2.SignInPage]
class SignInRoute extends _i5.PageRouteInfo<void> {
  const SignInRoute() : super(SignInRoute.name, path: '/signIn');

  static const String name = 'SignInRoute';
}

/// generated route for
/// [_i3.TasksOverviewPage]
class TasksOverviewRoute extends _i5.PageRouteInfo<void> {
  const TasksOverviewRoute() : super(TasksOverviewRoute.name, path: '/tasks');

  static const String name = 'TasksOverviewRoute';
}

/// generated route for
/// [_i4.TaskFormPage]
class TaskFormRoute extends _i5.PageRouteInfo<TaskFormRouteArgs> {
  TaskFormRoute({_i6.Key? key, _i7.Task? task})
      : super(TaskFormRoute.name,
            path: '/task/:id', args: TaskFormRouteArgs(key: key, task: task));

  static const String name = 'TaskFormRoute';
}

class TaskFormRouteArgs {
  const TaskFormRouteArgs({this.key, this.task});

  final _i6.Key? key;

  final _i7.Task? task;

  @override
  String toString() {
    return 'TaskFormRouteArgs{key: $key, task: $task}';
  }
}
