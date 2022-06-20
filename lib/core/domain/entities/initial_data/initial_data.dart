import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:todo_list/core/domain/entities/users/user.dart';

part 'initial_data.freezed.dart';
part 'initial_data.g.dart';

@freezed
class InitialData with _$InitialData {
  const factory InitialData(
      {required String tokenAccess,
      required String tokenRefresh,
      required User user}) = _InitialData;

  factory InitialData.fromJson(Map<String, dynamic> json) =>
      _$InitialDataFromJson(json);
}
