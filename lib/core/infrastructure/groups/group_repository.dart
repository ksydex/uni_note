import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:todo_list/core/domain/entities/groups/group.dart';

@LazySingleton()
class GroupRepository {
  final Dio _dio;

  GroupRepository(this._dio);

  Future<List<Group>> getAll(int? groupId,
      [bool isGroupIdFilterStrict = true]) async {
    Map<String, dynamic> qParams = {
      'GroupId': groupId.toString(),
      'IsGroupIdFilterStrict': true,
    };

    final r = await _dio.get('group', queryParameters: qParams);

    return List<Group>.from(r.data.map((x) => Group.fromJson(x)));
  }

  Future<Group> add(Group group) async {
    final r = await _dio.post('group', data: group);
    return Group.fromJson(r.data);
  }

  Future remove(int id) async {
    await _dio.delete('group/' + id.toString());
  }
}
