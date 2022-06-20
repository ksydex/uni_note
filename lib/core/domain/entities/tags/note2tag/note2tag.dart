import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:todo_list/core/domain/entities/tags/tag/tag.dart';

part 'note2tag.freezed.dart';
part 'note2tag.g.dart';

@freezed
class Note2Tag with _$Note2Tag {
  const factory Note2Tag(
      {required int id,
      required int noteId,
      required int tagId,
      required Tag tag}) = _Note2Tag;

  factory Note2Tag.fromJson(Map<String, dynamic> json) =>
      _$Note2TagFromJson(json);
}
