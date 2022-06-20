import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:todo_list/core/domain/entities/notes/note.dart';

@LazySingleton()
class NoteRepository {
  final Dio _dio;

  NoteRepository(this._dio);

  Future<List<Note>> getAll(int? groupId,
      [bool isGroupIdFilterStrict = true]) async {
    Map<String, dynamic> qParams = {
      'GroupId': groupId.toString(),
      'IsGroupIdFilterStrict': true,
    };

    final r = await _dio.get('note', queryParameters: qParams);

    return List<Note>.from(r.data.map((x) => Note.fromJson(x)));
  }
}
