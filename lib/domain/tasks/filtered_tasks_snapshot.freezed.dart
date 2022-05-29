// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'filtered_tasks_snapshot.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FilteredTasksSnapshot _$FilteredTasksSnapshotFromJson(
    Map<String, dynamic> json) {
  return _FilteredTasksSnapshot.fromJson(json);
}

/// @nodoc
mixin _$FilteredTasksSnapshot {
  TaskStatusFilter get filter => throw _privateConstructorUsedError;
  List<Task> get tasks => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FilteredTasksSnapshotCopyWith<FilteredTasksSnapshot> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilteredTasksSnapshotCopyWith<$Res> {
  factory $FilteredTasksSnapshotCopyWith(FilteredTasksSnapshot value,
          $Res Function(FilteredTasksSnapshot) then) =
      _$FilteredTasksSnapshotCopyWithImpl<$Res>;
  $Res call({TaskStatusFilter filter, List<Task> tasks});
}

/// @nodoc
class _$FilteredTasksSnapshotCopyWithImpl<$Res>
    implements $FilteredTasksSnapshotCopyWith<$Res> {
  _$FilteredTasksSnapshotCopyWithImpl(this._value, this._then);

  final FilteredTasksSnapshot _value;
  // ignore: unused_field
  final $Res Function(FilteredTasksSnapshot) _then;

  @override
  $Res call({
    Object? filter = freezed,
    Object? tasks = freezed,
  }) {
    return _then(_value.copyWith(
      filter: filter == freezed
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as TaskStatusFilter,
      tasks: tasks == freezed
          ? _value.tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as List<Task>,
    ));
  }
}

/// @nodoc
abstract class _$$_FilteredTasksSnapshotCopyWith<$Res>
    implements $FilteredTasksSnapshotCopyWith<$Res> {
  factory _$$_FilteredTasksSnapshotCopyWith(_$_FilteredTasksSnapshot value,
          $Res Function(_$_FilteredTasksSnapshot) then) =
      __$$_FilteredTasksSnapshotCopyWithImpl<$Res>;
  @override
  $Res call({TaskStatusFilter filter, List<Task> tasks});
}

/// @nodoc
class __$$_FilteredTasksSnapshotCopyWithImpl<$Res>
    extends _$FilteredTasksSnapshotCopyWithImpl<$Res>
    implements _$$_FilteredTasksSnapshotCopyWith<$Res> {
  __$$_FilteredTasksSnapshotCopyWithImpl(_$_FilteredTasksSnapshot _value,
      $Res Function(_$_FilteredTasksSnapshot) _then)
      : super(_value, (v) => _then(v as _$_FilteredTasksSnapshot));

  @override
  _$_FilteredTasksSnapshot get _value =>
      super._value as _$_FilteredTasksSnapshot;

  @override
  $Res call({
    Object? filter = freezed,
    Object? tasks = freezed,
  }) {
    return _then(_$_FilteredTasksSnapshot(
      filter: filter == freezed
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as TaskStatusFilter,
      tasks: tasks == freezed
          ? _value._tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as List<Task>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FilteredTasksSnapshot implements _FilteredTasksSnapshot {
  const _$_FilteredTasksSnapshot(
      {required this.filter, required final List<Task> tasks})
      : _tasks = tasks;

  factory _$_FilteredTasksSnapshot.fromJson(Map<String, dynamic> json) =>
      _$$_FilteredTasksSnapshotFromJson(json);

  @override
  final TaskStatusFilter filter;
  final List<Task> _tasks;
  @override
  List<Task> get tasks {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tasks);
  }

  @override
  String toString() {
    return 'FilteredTasksSnapshot(filter: $filter, tasks: $tasks)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FilteredTasksSnapshot &&
            const DeepCollectionEquality().equals(other.filter, filter) &&
            const DeepCollectionEquality().equals(other._tasks, _tasks));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(filter),
      const DeepCollectionEquality().hash(_tasks));

  @JsonKey(ignore: true)
  @override
  _$$_FilteredTasksSnapshotCopyWith<_$_FilteredTasksSnapshot> get copyWith =>
      __$$_FilteredTasksSnapshotCopyWithImpl<_$_FilteredTasksSnapshot>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FilteredTasksSnapshotToJson(this);
  }
}

abstract class _FilteredTasksSnapshot implements FilteredTasksSnapshot {
  const factory _FilteredTasksSnapshot(
      {required final TaskStatusFilter filter,
      required final List<Task> tasks}) = _$_FilteredTasksSnapshot;

  factory _FilteredTasksSnapshot.fromJson(Map<String, dynamic> json) =
      _$_FilteredTasksSnapshot.fromJson;

  @override
  TaskStatusFilter get filter => throw _privateConstructorUsedError;
  @override
  List<Task> get tasks => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_FilteredTasksSnapshotCopyWith<_$_FilteredTasksSnapshot> get copyWith =>
      throw _privateConstructorUsedError;
}
