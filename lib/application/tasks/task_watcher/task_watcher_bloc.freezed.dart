// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'task_watcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TaskWatcherEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initiate,
    required TResult Function(TaskStatusFilter filter) watch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initiate,
    TResult Function(TaskStatusFilter filter)? watch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initiate,
    TResult Function(TaskStatusFilter filter)? watch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initiate value) initiate,
    required TResult Function(Watch value) watch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initiate value)? initiate,
    TResult Function(Watch value)? watch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initiate value)? initiate,
    TResult Function(Watch value)? watch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskWatcherEventCopyWith<$Res> {
  factory $TaskWatcherEventCopyWith(
          TaskWatcherEvent value, $Res Function(TaskWatcherEvent) then) =
      _$TaskWatcherEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$TaskWatcherEventCopyWithImpl<$Res>
    implements $TaskWatcherEventCopyWith<$Res> {
  _$TaskWatcherEventCopyWithImpl(this._value, this._then);

  final TaskWatcherEvent _value;
  // ignore: unused_field
  final $Res Function(TaskWatcherEvent) _then;
}

/// @nodoc
abstract class _$$InitiateCopyWith<$Res> {
  factory _$$InitiateCopyWith(
          _$Initiate value, $Res Function(_$Initiate) then) =
      __$$InitiateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitiateCopyWithImpl<$Res>
    extends _$TaskWatcherEventCopyWithImpl<$Res>
    implements _$$InitiateCopyWith<$Res> {
  __$$InitiateCopyWithImpl(_$Initiate _value, $Res Function(_$Initiate) _then)
      : super(_value, (v) => _then(v as _$Initiate));

  @override
  _$Initiate get _value => super._value as _$Initiate;
}

/// @nodoc

class _$Initiate implements Initiate {
  const _$Initiate();

  @override
  String toString() {
    return 'TaskWatcherEvent.initiate()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Initiate);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initiate,
    required TResult Function(TaskStatusFilter filter) watch,
  }) {
    return initiate();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initiate,
    TResult Function(TaskStatusFilter filter)? watch,
  }) {
    return initiate?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initiate,
    TResult Function(TaskStatusFilter filter)? watch,
    required TResult orElse(),
  }) {
    if (initiate != null) {
      return initiate();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initiate value) initiate,
    required TResult Function(Watch value) watch,
  }) {
    return initiate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initiate value)? initiate,
    TResult Function(Watch value)? watch,
  }) {
    return initiate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initiate value)? initiate,
    TResult Function(Watch value)? watch,
    required TResult orElse(),
  }) {
    if (initiate != null) {
      return initiate(this);
    }
    return orElse();
  }
}

abstract class Initiate implements TaskWatcherEvent {
  const factory Initiate() = _$Initiate;
}

/// @nodoc
abstract class _$$WatchCopyWith<$Res> {
  factory _$$WatchCopyWith(_$Watch value, $Res Function(_$Watch) then) =
      __$$WatchCopyWithImpl<$Res>;
  $Res call({TaskStatusFilter filter});
}

/// @nodoc
class __$$WatchCopyWithImpl<$Res> extends _$TaskWatcherEventCopyWithImpl<$Res>
    implements _$$WatchCopyWith<$Res> {
  __$$WatchCopyWithImpl(_$Watch _value, $Res Function(_$Watch) _then)
      : super(_value, (v) => _then(v as _$Watch));

  @override
  _$Watch get _value => super._value as _$Watch;

  @override
  $Res call({
    Object? filter = freezed,
  }) {
    return _then(_$Watch(
      filter == freezed
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as TaskStatusFilter,
    ));
  }
}

/// @nodoc

class _$Watch implements Watch {
  const _$Watch(this.filter);

  @override
  final TaskStatusFilter filter;

  @override
  String toString() {
    return 'TaskWatcherEvent.watch(filter: $filter)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Watch &&
            const DeepCollectionEquality().equals(other.filter, filter));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(filter));

  @JsonKey(ignore: true)
  @override
  _$$WatchCopyWith<_$Watch> get copyWith =>
      __$$WatchCopyWithImpl<_$Watch>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initiate,
    required TResult Function(TaskStatusFilter filter) watch,
  }) {
    return watch(filter);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initiate,
    TResult Function(TaskStatusFilter filter)? watch,
  }) {
    return watch?.call(filter);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initiate,
    TResult Function(TaskStatusFilter filter)? watch,
    required TResult orElse(),
  }) {
    if (watch != null) {
      return watch(filter);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initiate value) initiate,
    required TResult Function(Watch value) watch,
  }) {
    return watch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initiate value)? initiate,
    TResult Function(Watch value)? watch,
  }) {
    return watch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initiate value)? initiate,
    TResult Function(Watch value)? watch,
    required TResult orElse(),
  }) {
    if (watch != null) {
      return watch(this);
    }
    return orElse();
  }
}

abstract class Watch implements TaskWatcherEvent {
  const factory Watch(final TaskStatusFilter filter) = _$Watch;

  TaskStatusFilter get filter => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$WatchCopyWith<_$Watch> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TaskWatcherState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Task> tasks, TaskStatusFilter filter)
        success,
    required TResult Function(String message) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Task> tasks, TaskStatusFilter filter)? success,
    TResult Function(String message)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Task> tasks, TaskStatusFilter filter)? success,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Loading value) loading,
    required TResult Function(Success value) success,
    required TResult Function(Failure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(Success value)? success,
    TResult Function(Failure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(Success value)? success,
    TResult Function(Failure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskWatcherStateCopyWith<$Res> {
  factory $TaskWatcherStateCopyWith(
          TaskWatcherState value, $Res Function(TaskWatcherState) then) =
      _$TaskWatcherStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$TaskWatcherStateCopyWithImpl<$Res>
    implements $TaskWatcherStateCopyWith<$Res> {
  _$TaskWatcherStateCopyWithImpl(this._value, this._then);

  final TaskWatcherState _value;
  // ignore: unused_field
  final $Res Function(TaskWatcherState) _then;
}

/// @nodoc
abstract class _$$LoadingCopyWith<$Res> {
  factory _$$LoadingCopyWith(_$Loading value, $Res Function(_$Loading) then) =
      __$$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingCopyWithImpl<$Res> extends _$TaskWatcherStateCopyWithImpl<$Res>
    implements _$$LoadingCopyWith<$Res> {
  __$$LoadingCopyWithImpl(_$Loading _value, $Res Function(_$Loading) _then)
      : super(_value, (v) => _then(v as _$Loading));

  @override
  _$Loading get _value => super._value as _$Loading;
}

/// @nodoc

class _$Loading implements Loading {
  const _$Loading();

  @override
  String toString() {
    return 'TaskWatcherState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Task> tasks, TaskStatusFilter filter)
        success,
    required TResult Function(String message) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Task> tasks, TaskStatusFilter filter)? success,
    TResult Function(String message)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Task> tasks, TaskStatusFilter filter)? success,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Loading value) loading,
    required TResult Function(Success value) success,
    required TResult Function(Failure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(Success value)? success,
    TResult Function(Failure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(Success value)? success,
    TResult Function(Failure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements TaskWatcherState {
  const factory Loading() = _$Loading;
}

/// @nodoc
abstract class _$$SuccessCopyWith<$Res> {
  factory _$$SuccessCopyWith(_$Success value, $Res Function(_$Success) then) =
      __$$SuccessCopyWithImpl<$Res>;
  $Res call({List<Task> tasks, TaskStatusFilter filter});
}

/// @nodoc
class __$$SuccessCopyWithImpl<$Res> extends _$TaskWatcherStateCopyWithImpl<$Res>
    implements _$$SuccessCopyWith<$Res> {
  __$$SuccessCopyWithImpl(_$Success _value, $Res Function(_$Success) _then)
      : super(_value, (v) => _then(v as _$Success));

  @override
  _$Success get _value => super._value as _$Success;

  @override
  $Res call({
    Object? tasks = freezed,
    Object? filter = freezed,
  }) {
    return _then(_$Success(
      tasks == freezed
          ? _value._tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as List<Task>,
      filter == freezed
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as TaskStatusFilter,
    ));
  }
}

/// @nodoc

class _$Success implements Success {
  const _$Success(final List<Task> tasks, this.filter) : _tasks = tasks;

  final List<Task> _tasks;
  @override
  List<Task> get tasks {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tasks);
  }

  @override
  final TaskStatusFilter filter;

  @override
  String toString() {
    return 'TaskWatcherState.success(tasks: $tasks, filter: $filter)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Success &&
            const DeepCollectionEquality().equals(other._tasks, _tasks) &&
            const DeepCollectionEquality().equals(other.filter, filter));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_tasks),
      const DeepCollectionEquality().hash(filter));

  @JsonKey(ignore: true)
  @override
  _$$SuccessCopyWith<_$Success> get copyWith =>
      __$$SuccessCopyWithImpl<_$Success>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Task> tasks, TaskStatusFilter filter)
        success,
    required TResult Function(String message) failure,
  }) {
    return success(tasks, filter);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Task> tasks, TaskStatusFilter filter)? success,
    TResult Function(String message)? failure,
  }) {
    return success?.call(tasks, filter);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Task> tasks, TaskStatusFilter filter)? success,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(tasks, filter);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Loading value) loading,
    required TResult Function(Success value) success,
    required TResult Function(Failure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(Success value)? success,
    TResult Function(Failure value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(Success value)? success,
    TResult Function(Failure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class Success implements TaskWatcherState {
  const factory Success(final List<Task> tasks, final TaskStatusFilter filter) =
      _$Success;

  List<Task> get tasks => throw _privateConstructorUsedError;
  TaskStatusFilter get filter => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$SuccessCopyWith<_$Success> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailureCopyWith<$Res> {
  factory _$$FailureCopyWith(_$Failure value, $Res Function(_$Failure) then) =
      __$$FailureCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class __$$FailureCopyWithImpl<$Res> extends _$TaskWatcherStateCopyWithImpl<$Res>
    implements _$$FailureCopyWith<$Res> {
  __$$FailureCopyWithImpl(_$Failure _value, $Res Function(_$Failure) _then)
      : super(_value, (v) => _then(v as _$Failure));

  @override
  _$Failure get _value => super._value as _$Failure;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$Failure(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$Failure implements Failure {
  const _$Failure(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'TaskWatcherState.failure(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Failure &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$FailureCopyWith<_$Failure> get copyWith =>
      __$$FailureCopyWithImpl<_$Failure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Task> tasks, TaskStatusFilter filter)
        success,
    required TResult Function(String message) failure,
  }) {
    return failure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Task> tasks, TaskStatusFilter filter)? success,
    TResult Function(String message)? failure,
  }) {
    return failure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Task> tasks, TaskStatusFilter filter)? success,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Loading value) loading,
    required TResult Function(Success value) success,
    required TResult Function(Failure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(Success value)? success,
    TResult Function(Failure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(Success value)? success,
    TResult Function(Failure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class Failure implements TaskWatcherState {
  const factory Failure(final String message) = _$Failure;

  String get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$FailureCopyWith<_$Failure> get copyWith =>
      throw _privateConstructorUsedError;
}
