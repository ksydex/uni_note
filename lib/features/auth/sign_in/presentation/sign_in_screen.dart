import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_list/core/application/auth/auth_bloc.dart';
import 'package:todo_list/core/presentation/constants/indents.dart';
import 'package:todo_list/core/presentation/routes/app_router.dart';
import 'package:todo_list/core/presentation/shared/error_snack_bar.dart';
import 'package:todo_list/features/auth/sign_in/application/sign_in_bloc.dart';
import 'package:todo_list/injection.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Авторизация'),
      ),
      body: BlocProvider(
        create: (context) => getIt<SignInBloc>(),
        child: const _SignInForm(),
      ),
    );
  }
}

class _SignInForm extends StatelessWidget {
  const _SignInForm({Key? key}) : super(key: key);
  static final _signInFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return BlocConsumer<SignInBloc, SignInState>(
      listenWhen: (previous, current) => previous.success != current.success,
      listener: (context, state) {
        if (state.success == true) {
          context.read<AuthBloc>().add(const AuthEvent.authCheckRequested());
          AutoRouter.of(context).replace(HomeRoute());
        } else if (state.success == false) {
          ScaffoldMessenger.of(context)
              .showSnackBar(ErrorSnackBar(message: state.errorMessage!));
        }
      },
      builder: (context, state) => Form(
        key: _signInFormKey,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 250,
                  child: Center(
                    child: Text(
                      "UniNote",
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 32,
                          color: Colors.blue),
                    ),
                  ),
                ),
                TextFormField(
                  decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.email), hintText: 'Email'),
                  autofocus: true,
                  validator: (value) => (value == null || value.isEmpty)
                      ? 'Пожалуйста, введите Email'
                      : null,
                  onChanged: (value) => context.read<SignInBloc>().add(
                      SignInEvent.emailChanged(
                          value)), // валидация на null прошла выше,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.lock),
                    labelText: 'Пароль',
                  ),
                  autocorrect: false,
                  obscureText: true,
                  validator: (value) => (value == null || value.isEmpty)
                      ? 'Пожалуйста, введите пароль'
                      : null,
                  onChanged: (value) => context.read<SignInBloc>().add(
                      SignInEvent.passwordChanged(
                          value)), // валидация на null прошла выше
                ),
                const SizedBox(
                  height: Indents.lg,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                        onPressed: () {}, child: const Text('Сбросить пароль')),
                    ElevatedButton(
                      onPressed: () {
                        if (_signInFormKey.currentState!.validate()) {
                          _signInFormKey.currentState?.save();
                          context
                              .read<SignInBloc>()
                              .add(const SignInEvent.signInBtnPressed());
                        }
                      },
                      child: const Text('Войти'),
                    ),
                  ],
                ),
                if (state.isSubmitting) ...[
                  const SizedBox(
                    height: 8,
                  ),
                  const LinearProgressIndicator(),
                ]
              ],
            ),
          ),
        ),
      ),
    );
  }
}
