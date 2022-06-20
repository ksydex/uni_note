import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:todo_list/core/domain/entities/tags/tag/tag.dart';

part 'note.freezed.dart';
part 'note.g.dart';

@freezed
class Note with _$Note {
  factory Note(
      {required int id,
      required String name,
      required String body,
      required int groupId,
      required bool isFavorite,
      List<Tag>? tags}) = _Note;

  factory Note.fromJson(Map<String, Object?> json) => _$NoteFromJson(json);

  factory Note.test([bool isFavorite = false]) => Note(
      id: 1,
      name: 'Заметка тест',
      body: 'Заметка тело',
      isFavorite: isFavorite,
      groupId: 1
      // tags: [Tag.test(), Tag.test()]
      );

  factory Note.empty([bool isFavorite = false]) =>
      Note(id: 0, name: '', body: '', isFavorite: false, groupId: 2
          // tags: []
          );
}
