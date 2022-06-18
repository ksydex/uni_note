part of 'sign_in_bloc.dart';

@freezed
class SignInState with _$SignInState {
  const factory SignInState({
    required String email,
    required String password,
    required bool isSubmitting,
    required bool? success,
    required String? errorMessage,
  }) = _SignInState;

  factory SignInState.initial() => const SignInState(
        email: '',
        password: '',
        isSubmitting: false,
        errorMessage: null,
        success: null,
      );
}
