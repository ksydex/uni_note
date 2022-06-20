import 'dart:convert';

import 'package:hive/hive.dart';
import 'package:todo_list/core/domain/entities/users/user.dart';

class HiveAuthBox {
  static const String _accessTokenKey = "jwt";
  static const String _refreshTokenKey = "refresh_token";
  static const String _userKey = "user";

  static Box get box => Hive.box('auth');

  static bool get isAuthorized => accessToken != null;

  static Future open() async => await Hive.openBox('auth');

  static String? get refreshToken => box.get(_refreshTokenKey);
  static set refreshToken(String? v) => box.put(_refreshTokenKey, v);

  static String? get accessToken => box.get(_accessTokenKey);
  static set accessToken(String? v) => box.put(_accessTokenKey, v);

  static User? get user {
    var v = box.get(_userKey);
    if (v == null) return null;
    return User.fromJson(jsonDecode(v));
  }

  static set user(User? v) =>
      box.put(_userKey, v == null ? null : jsonEncode(v.toJson()));
}
