import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_list/core/application/auth/auth_bloc.dart';
import 'package:todo_list/core/presentation/routes/app_router.dart';
import 'package:todo_list/core/presentation/shared/text_button_with_icon.dart';
import 'package:todo_list/injection.dart';

class SignOutButton extends StatelessWidget {
  const SignOutButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<AuthBloc>(),
      child: BlocConsumer<AuthBloc, AuthState>(
          listener: (ctx, state) => state.maybeMap(
              unauthenticated: (_) =>
                  AutoRouter.of(context).replace(const SignInRoute()),
              orElse: () => null),
          builder: (context, __) => TextButtonWithIcon(
                style:
                    TextButton.styleFrom(primary: Theme.of(context).errorColor),
                icon: const Icon(Icons.exit_to_app),
                text: const Text("Выйти из приложения"),
                onPressed: () =>
                    context.read<AuthBloc>().add(const AuthEvent.signedOut()),
              )),
    );
  }
}
