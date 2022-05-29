import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_list/application/auth/auth_bloc.dart';
import 'package:todo_list/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:todo_list/injection.dart';
import 'package:todo_list/presentation/routes/router.gr.dart';
import 'package:todo_list/presentation/shared/error_snack_bar.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Вход'),
      ),
      body: BlocProvider(
        create: (context) => getIt<SignInFormBloc>(),
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
    return BlocConsumer<SignInFormBloc, SignInFormState>(
      listenWhen: (previous, current) => previous.success != current.success,
      listener: (context, state) {
        if (state.success == true) {
          context.read<AuthBloc>().add(const AuthEvent.authCheckRequested());
          AutoRouter.of(context).replace(const TasksOverviewRoute());
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
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextFormField(
                  decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.email), hintText: 'email'),
                  autofocus: true,
                  validator: (value) => (value == null || value.isEmpty)
                      ? 'Enter the email, please'
                      : null,
                  onChanged: (value) => context.read<SignInFormBloc>().add(
                      SignInFormEvent.emailChanged(
                          value)), // валидация на null прошла выше,
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.lock),
                    labelText: 'Password',
                  ),
                  autocorrect: false,
                  obscureText: true,
                  validator: (value) => (value == null || value.isEmpty)
                      ? 'Enter the password, please'
                      : null,
                  onChanged: (value) => context.read<SignInFormBloc>().add(
                      SignInFormEvent.passwordChanged(
                          value)), // валидация на null прошла выше
                ),
                const SizedBox(
                  height: 10,
                ),
                TextButton(
                  onPressed: () {
                    if (_signInFormKey.currentState!.validate()) {
                      _signInFormKey.currentState?.save();
                      context
                          .read<SignInFormBloc>()
                          .add(const SignInFormEvent.signInBtnPressed());
                    }
                  },
                  child: const Text('SIGN IN'),
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
