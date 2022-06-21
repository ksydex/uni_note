import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:todo_list/core/infrastructure/auth/authentication_repository.dart';
import 'package:todo_list/core/presentation/shared/error_snack_bar.dart';
import 'package:todo_list/core/presentation/shared/indent.dart';
import 'package:todo_list/injection.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final _formKey = GlobalKey<FormState>();

  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Регистрация'),
      ),
      body: Form(
        key: _formKey,
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
                  controller: _nameController,
                  decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.person), hintText: 'Имя'),
                  autofocus: true,
                  validator: (value) => (value == null || value.isEmpty)
                      ? 'Пожалуйста, введите ваше имя'
                      : null, // валидация на null прошла выше,
                ),
                TextFormField(
                  controller: _emailController,
                  decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.alternate_email),
                      hintText: 'Email'),
                  autofocus: true,
                  validator: (value) => (value == null || value.isEmpty)
                      ? 'Пожалуйста, введите Email'
                      : null, // валидация на null прошла выше,
                ),
                TextFormField(
                  controller: _passwordController,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.lock),
                    labelText: 'Пароль',
                  ),
                  autocorrect: false,
                  obscureText: true,
                  validator: (value) => (value == null || value.isEmpty)
                      ? 'Пожалуйста, введите пароль'
                      : null, // валидация на null прошла выше
                ),
                const Indent.lg(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    // TextButton(
                    //     onPressed: () {}, child: const Text('Сбросить пароль')),
                    Row(
                      children: [
                        ElevatedButton(
                          onPressed: () async {
                            if (_formKey.currentState!.validate()) {
                              var repo = getIt<AuthenticationRepository>();
                              var r = await repo.signUp(
                                  _nameController.text,
                                  _emailController.text,
                                  _passwordController.text);
                              if (!r) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                    ErrorSnackBar(
                                        message: "Ошибка при регистрации!"));
                              } else {
                                ScaffoldMessenger.of(context).showSnackBar(
                                    SuccessSnackBar(
                                        message: "Регистрация успешна!"));
                                AutoRouter.of(context).pop();
                              }
                            }
                          },
                          child: const Text('Зарегистрироваться'),
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
