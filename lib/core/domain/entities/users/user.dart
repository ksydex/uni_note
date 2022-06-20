import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  const factory User({
    required int id,
    required String name,
    required String email,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  /// Нужен на случай ошибки загрузки User'ов в выпадающий список,
  /// т.к. null зарезервирован на элемент 'assign to...'
  factory User.noUser() => const User(
        id: -1,
        name: '',
        email: '',
      );
}
