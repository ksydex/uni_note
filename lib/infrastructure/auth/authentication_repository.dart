import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:rx_shared_preferences/rx_shared_preferences.dart';
import 'package:todo_list/domain/users/authentication_exception.dart';
import 'package:todo_list/domain/users/user.dart';

@LazySingleton()
class AuthenticationRepository {
  final RxSharedPreferences _prefs;
  static const userKey = "user";

  AuthenticationRepository(this._prefs);

  Future<User?> getCurrentUser() async {
    String? userData = await _prefs.getString(userKey);
    return (userData != null) ? User.fromJson(jsonDecode(userData)) : null;
  }

  Future<User> signInWithEmailAndPassword(String email, String password) async {
    if (email == 'artyom@gmail.com' && password == "123456") {
      final user = User(id: 1, name: 'Ivan', email: email);
      await _prefs.setString(userKey, jsonEncode(user.toJson()));
      return user;
    } else {
      throw AuthenticationFailure.invalidEmailAndPasswordCombination();
    }
  }

  Future<void> signOut() async => await _prefs.remove(userKey);
}
