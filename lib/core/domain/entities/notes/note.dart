import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:todo_list/core/domain/entities/tags/note2tag/note2tag.dart';

part 'note.freezed.dart';
part 'note.g.dart';

@freezed
class Note with _$Note {
  factory Note(
      {required int id,
      required String name,
      required String body,
      required int? groupId,
      required bool isFavorite,
      required bool isArchived,
      required List<Note2Tag> tags}) = _Note;

  factory Note.fromJson(Map<String, Object?> json) => _$NoteFromJson(json);

  factory Note.test([bool isFavorite = false]) => Note(
      id: 1,
      name: 'Заметка тест',
      body: 'Заметка тело',
      isFavorite: isFavorite,
      isArchived: false,
      groupId: 1,
      tags: []);

  factory Note.empty([bool isFavorite = false]) => Note(
      id: 0,
      name: '',
      body: '',
      isArchived: false,
      isFavorite: false,
      groupId: 2,
      tags: []);
}
