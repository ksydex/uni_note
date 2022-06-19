// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'app_router.dart';

class _$AppRouter extends RootStackRouter {
  _$AppRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const SplashScreen());
    },
    SignInRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const SignInScreen());
    },
    HomeRoute.name: (routeData) {
      final args =
          routeData.argsAs<HomeRouteArgs>(orElse: () => const HomeRouteArgs());
      return MaterialPageX<dynamic>(
          routeData: routeData,
          child: HomeScreen(key: args.key, group: args.group));
    },
    NoteFormRoute.name: (routeData) {
      final args = routeData.argsAs<NoteFormRouteArgs>(
          orElse: () => const NoteFormRouteArgs());
      return MaterialPageX<dynamic>(
          routeData: routeData,
          child: NoteFormScreen(key: args.key, model: args.model));
    }
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(SplashRoute.name, path: '/'),
        RouteConfig(SignInRoute.name, path: '/signIn'),
        RouteConfig(HomeRoute.name, path: '/'),
        RouteConfig(NoteFormRoute.name, path: '/note/:id')
      ];
}

/// generated route for
/// [SplashScreen]
class SplashRoute extends PageRouteInfo<void> {
  const SplashRoute() : super(SplashRoute.name, path: '/');

  static const String name = 'SplashRoute';
}

/// generated route for
/// [SignInScreen]
class SignInRoute extends PageRouteInfo<void> {
  const SignInRoute() : super(SignInRoute.name, path: '/signIn');

  static const String name = 'SignInRoute';
}

/// generated route for
/// [HomeScreen]
class HomeRoute extends PageRouteInfo<HomeRouteArgs> {
  HomeRoute({Key? key, Group? group})
      : super(HomeRoute.name,
            path: '/', args: HomeRouteArgs(key: key, group: group));

  static const String name = 'HomeRoute';
}

class HomeRouteArgs {
  const HomeRouteArgs({this.key, this.group});

  final Key? key;

  final Group? group;

  @override
  String toString() {
    return 'HomeRouteArgs{key: $key, group: $group}';
  }
}

/// generated route for
/// [NoteFormScreen]
class NoteFormRoute extends PageRouteInfo<NoteFormRouteArgs> {
  NoteFormRoute({Key? key, Note? model})
      : super(NoteFormRoute.name,
            path: '/note/:id', args: NoteFormRouteArgs(key: key, model: model));

  static const String name = 'NoteFormRoute';
}

class NoteFormRouteArgs {
  const NoteFormRouteArgs({this.key, this.model});

  final Key? key;

  final Note? model;

  @override
  String toString() {
    return 'NoteFormRouteArgs{key: $key, model: $model}';
  }
}
