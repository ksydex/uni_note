import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:todo_list/core/domain/entities/users/user.dart';
import 'package:todo_list/core/infrastructure/auth/authentication_exception.dart';
import 'package:todo_list/core/infrastructure/auth/authentication_repository.dart';

part 'sign_in_bloc.freezed.dart';
part 'sign_in_event.dart';
part 'sign_in_state.dart';

@injectable
class SignInBloc extends Bloc<SignInEvent, SignInState> {
  final AuthenticationRepository _auth;
  // задержка проверки появления нового значения,
  // чтобы не проверять после каждой введёной буквы
  static const debounceDuration = Duration(milliseconds: 100);

  SignInBloc(this._auth) : super(SignInState.initial()) {
    on<EmailChanged>((event, emit) =>
        emit(state.copyWith(email: event.email, success: null)));
    on<PasswordChanged>((event, emit) =>
        emit(state.copyWith(password: event.password, success: null)));
    on<SignInBtnPressed>(
      (event, emit) async {
        emit(state.copyWith(isSubmitting: true, success: null));
        User? user;
        try {
          user = await _auth.signInWithEmailAndPassword(
              state.email, state.password);
        } on AuthenticationFailure catch (_) {
          emit(state.copyWith(
              errorMessage: "Неправильный Email или пароль",
              success: false,
              isSubmitting: false));
        }
        if (user != null) {
          emit(state.copyWith(success: true, isSubmitting: false));
        }
      },
    );
  }
}
