// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'filtered_tasks_snapshot.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FilteredTasksSnapshot _$$_FilteredTasksSnapshotFromJson(
        Map<String, dynamic> json) =>
    _$_FilteredTasksSnapshot(
      filter: $enumDecode(_$TaskStatusFilterEnumMap, json['filter']),
      tasks: (json['tasks'] as List<dynamic>)
          .map((e) => Task.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_FilteredTasksSnapshotToJson(
        _$_FilteredTasksSnapshot instance) =>
    <String, dynamic>{
      'filter': _$TaskStatusFilterEnumMap[instance.filter],
      'tasks': instance.tasks,
    };

const _$TaskStatusFilterEnumMap = {
  TaskStatusFilter.all: 'all',
  TaskStatusFilter.waiting: 'waiting',
  TaskStatusFilter.inProgress: 'inProgress',
  TaskStatusFilter.done: 'done',
};
