import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nanoid/nanoid.dart';
import 'package:todo_list/domain/tasks/status.dart';
import 'package:todo_list/domain/users/user.dart';

part 'task.freezed.dart';
part 'task.g.dart';

@freezed
class Task with _$Task{
  const factory Task({
    required String id,
    required String name,
    required String body,
    @Default(Status.waiting) Status status,
    User? assignedUser,
  }) = _Task;

  factory Task.empty() => Task(
    id: nanoid(5),
    name: '',
    body: '',
  );

  factory Task.fromJson(Map<String, dynamic> json) =>
    _$TaskFromJson(json);
}