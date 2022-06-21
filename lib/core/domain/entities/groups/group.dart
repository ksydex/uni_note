import 'package:freezed_annotation/freezed_annotation.dart';

part 'group.freezed.dart';
part 'group.g.dart';

@freezed
class Group with _$Group {
  factory Group(
      {required int id, required String name, required int? groupId}) = _Group;

  factory Group.fromJson(Map<String, Object?> json) => _$GroupFromJson(json);
}
