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
    SignUpRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const SignUpScreen());
    },
    HomeRoute.name: (routeData) {
      final args =
          routeData.argsAs<HomeRouteArgs>(orElse: () => const HomeRouteArgs());
      return MaterialPageX<dynamic>(
          routeData: routeData,
          child: HomeScreen(
              key: args.key,
              group: args.group,
              customTitle: args.customTitle,
              showProfileIcon: args.showProfileIcon,
              showGroups: args.showGroups,
              noteIsArchived: args.noteIsArchived,
              noteIsFavorite: args.noteIsFavorite));
    },
    NoteFormRoute.name: (routeData) {
      final args = routeData.argsAs<NoteFormRouteArgs>();
      return MaterialPageX<dynamic>(
          routeData: routeData,
          child: NoteFormScreen(key: args.key, id: args.id));
    },
    TagsOverviewRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const TagsOverviewScreen());
    }
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(SplashRoute.name, path: '/'),
        RouteConfig(SignInRoute.name, path: '/signIn'),
        RouteConfig(SignUpRoute.name, path: '/signUp'),
        RouteConfig(HomeRoute.name, path: '/'),
        RouteConfig(NoteFormRoute.name, path: '/note/:id'),
        RouteConfig(TagsOverviewRoute.name, path: '/tag')
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
/// [SignUpScreen]
class SignUpRoute extends PageRouteInfo<void> {
  const SignUpRoute() : super(SignUpRoute.name, path: '/signUp');

  static const String name = 'SignUpRoute';
}

/// generated route for
/// [HomeScreen]
class HomeRoute extends PageRouteInfo<HomeRouteArgs> {
  HomeRoute(
      {Key? key,
      Group? group,
      String? customTitle,
      bool showProfileIcon = true,
      bool showGroups = true,
      bool noteIsArchived = false,
      bool? noteIsFavorite})
      : super(HomeRoute.name,
            path: '/',
            args: HomeRouteArgs(
                key: key,
                group: group,
                customTitle: customTitle,
                showProfileIcon: showProfileIcon,
                showGroups: showGroups,
                noteIsArchived: noteIsArchived,
                noteIsFavorite: noteIsFavorite));

  static const String name = 'HomeRoute';
}

class HomeRouteArgs {
  const HomeRouteArgs(
      {this.key,
      this.group,
      this.customTitle,
      this.showProfileIcon = true,
      this.showGroups = true,
      this.noteIsArchived = false,
      this.noteIsFavorite});

  final Key? key;

  final Group? group;

  final String? customTitle;

  final bool showProfileIcon;

  final bool showGroups;

  final bool noteIsArchived;

  final bool? noteIsFavorite;

  @override
  String toString() {
    return 'HomeRouteArgs{key: $key, group: $group, customTitle: $customTitle, showProfileIcon: $showProfileIcon, showGroups: $showGroups, noteIsArchived: $noteIsArchived, noteIsFavorite: $noteIsFavorite}';
  }
}

/// generated route for
/// [NoteFormScreen]
class NoteFormRoute extends PageRouteInfo<NoteFormRouteArgs> {
  NoteFormRoute({Key? key, required int id})
      : super(NoteFormRoute.name,
            path: '/note/:id', args: NoteFormRouteArgs(key: key, id: id));

  static const String name = 'NoteFormRoute';
}

class NoteFormRouteArgs {
  const NoteFormRouteArgs({this.key, required this.id});

  final Key? key;

  final int id;

  @override
  String toString() {
    return 'NoteFormRouteArgs{key: $key, id: $id}';
  }
}

/// generated route for
/// [TagsOverviewScreen]
class TagsOverviewRoute extends PageRouteInfo<void> {
  const TagsOverviewRoute() : super(TagsOverviewRoute.name, path: '/tag');

  static const String name = 'TagsOverviewRoute';
}
