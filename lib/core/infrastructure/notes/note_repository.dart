import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:todo_list/core/domain/entities/notes/note.dart';

@LazySingleton()
class NoteRepository {
  final Dio _dio;

  NoteRepository(this._dio);

  Future<List<Note>> getAll(int? groupId,
      [bool isGroupIdFilterStrict = true,
      bool isArchived = false,
      bool? isFavorite]) async {
    Map<String, dynamic> qParams = {
      'GroupId': groupId.toString(),
      'IsGroupIdFilterStrict': true,
      'IsArchived': isArchived,
      'IsFavorite': isFavorite
    };

    final r = await _dio.get('note', queryParameters: qParams);

    return List<Note>.from(r.data.map((x) => Note.fromJson(x)));
  }

  Future<Note> add(Note note) async {
    final r = await _dio.post('note', data: note);
    return Note.fromJson(r.data);
  }

  Future<Note> update(Note note) async {
    final r = await _dio.put('note', data: note);
    return Note.fromJson(r.data);
  }

  Future<Note> getById(int id) async {
    final r = await _dio.get('note/' + id.toString());
    return Note.fromJson(r.data);
  }
}
