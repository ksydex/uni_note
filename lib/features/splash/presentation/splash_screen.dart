import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_list/core/application/auth/auth_bloc.dart';
import 'package:todo_list/core/presentation/routes/app_router.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) => state.map(
        initial: (_) => null,
        authenticated: (_) => AutoRouter.of(context).replace(const HomeRoute()),
        unauthenticated: (_) =>
            AutoRouter.of(context).replace(const SignInRoute()),
      ),
      child: const Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}
