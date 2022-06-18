import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:todo_list/core/domain/entities/users/user.dart';
import 'package:todo_list/core/infrastructure/auth/authentication_repository.dart';

part 'auth_bloc.freezed.dart';
part 'auth_event.dart';
part 'auth_state.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthenticationRepository _auth;

  AuthBloc(this._auth) : super(const AuthState.initial()) {
    on<AuthEvent>(
      (event, emit) => event.map(authCheckRequested: (event) async {
        final user = await _auth.getCurrentUser();
        emit((user != null)
            ? AuthState.authenticated(user)
            : const AuthState.unauthenticated());
      }, signedOut: (event) async {
        await _auth.signOut();
        emit(const AuthState.unauthenticated());
      }),
      transformer: sequential(),
    );
  }
}
