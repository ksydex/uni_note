import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:todo_list/application/utils.dart';
import 'package:todo_list/domain/users/authentication_exception.dart';
import 'package:todo_list/domain/users/user.dart';
import 'package:todo_list/infrastructure/auth/authentication_repository.dart';

part 'sign_in_form_bloc.freezed.dart';
part 'sign_in_form_event.dart';
part 'sign_in_form_state.dart';

@injectable
class SignInFormBloc extends Bloc<SignInFormEvent, SignInFormState> {
  final AuthenticationRepository _auth;
  // задержка проверки появления нового значения, 
  // чтобы не проверять после каждой введёной буквы
  static const debounceDuration = Duration(milliseconds: 100);

  SignInFormBloc(this._auth) : super(SignInFormState.initial()) {
    on<EmailChanged>(
      (event, emit) =>
        emit(state.copyWith(email: event.email, success: null)),
      transformer: debounceRestartable(debounceDuration),
    );
    on<PasswordChanged>(
      (event, emit) =>
        emit(state.copyWith(password: event.password, success: null)),
      transformer: debounceRestartable(debounceDuration),
    );
    on<SignInBtnPressed>(
      (event, emit) async {
        emit(state.copyWith(isSubmitting: true, success: null));
        User? user;
        try {
          user = await _auth.signInWithEmailAndPassword(state.email, state.password);
        } on AuthenticationFailure catch (_) {
          emit(state.copyWith(
            errorMessage: "Invalid email and password combination",
            success: false,
            isSubmitting: false
          ));
        }
        if (user != null) {
          emit(state.copyWith(success: true, isSubmitting: false));
        }
      },
    );
  }
}
