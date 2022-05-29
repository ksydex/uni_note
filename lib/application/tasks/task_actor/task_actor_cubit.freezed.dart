// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'task_actor_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TaskActorState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() actionInProgress,
    required TResult Function() deleteSuccess,
    required TResult Function(String message) deleteFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function()? deleteSuccess,
    TResult Function(String message)? deleteFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function()? deleteSuccess,
    TResult Function(String message)? deleteFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(ActionInProgress value) actionInProgress,
    required TResult Function(DeleteSuccess value) deleteSuccess,
    required TResult Function(DeleteFailure value) deleteFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(ActionInProgress value)? actionInProgress,
    TResult Function(DeleteSuccess value)? deleteSuccess,
    TResult Function(DeleteFailure value)? deleteFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(ActionInProgress value)? actionInProgress,
    TResult Function(DeleteSuccess value)? deleteSuccess,
    TResult Function(DeleteFailure value)? deleteFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskActorStateCopyWith<$Res> {
  factory $TaskActorStateCopyWith(
          TaskActorState value, $Res Function(TaskActorState) then) =
      _$TaskActorStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$TaskActorStateCopyWithImpl<$Res>
    implements $TaskActorStateCopyWith<$Res> {
  _$TaskActorStateCopyWithImpl(this._value, this._then);

  final TaskActorState _value;
  // ignore: unused_field
  final $Res Function(TaskActorState) _then;
}

/// @nodoc
abstract class _$$InitialCopyWith<$Res> {
  factory _$$InitialCopyWith(_$Initial value, $Res Function(_$Initial) then) =
      __$$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialCopyWithImpl<$Res> extends _$TaskActorStateCopyWithImpl<$Res>
    implements _$$InitialCopyWith<$Res> {
  __$$InitialCopyWithImpl(_$Initial _value, $Res Function(_$Initial) _then)
      : super(_value, (v) => _then(v as _$Initial));

  @override
  _$Initial get _value => super._value as _$Initial;
}

/// @nodoc

class _$Initial implements Initial {
  const _$Initial();

  @override
  String toString() {
    return 'TaskActorState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() actionInProgress,
    required TResult Function() deleteSuccess,
    required TResult Function(String message) deleteFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function()? deleteSuccess,
    TResult Function(String message)? deleteFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function()? deleteSuccess,
    TResult Function(String message)? deleteFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(ActionInProgress value) actionInProgress,
    required TResult Function(DeleteSuccess value) deleteSuccess,
    required TResult Function(DeleteFailure value) deleteFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(ActionInProgress value)? actionInProgress,
    TResult Function(DeleteSuccess value)? deleteSuccess,
    TResult Function(DeleteFailure value)? deleteFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(ActionInProgress value)? actionInProgress,
    TResult Function(DeleteSuccess value)? deleteSuccess,
    TResult Function(DeleteFailure value)? deleteFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements TaskActorState {
  const factory Initial() = _$Initial;
}

/// @nodoc
abstract class _$$ActionInProgressCopyWith<$Res> {
  factory _$$ActionInProgressCopyWith(
          _$ActionInProgress value, $Res Function(_$ActionInProgress) then) =
      __$$ActionInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ActionInProgressCopyWithImpl<$Res>
    extends _$TaskActorStateCopyWithImpl<$Res>
    implements _$$ActionInProgressCopyWith<$Res> {
  __$$ActionInProgressCopyWithImpl(
      _$ActionInProgress _value, $Res Function(_$ActionInProgress) _then)
      : super(_value, (v) => _then(v as _$ActionInProgress));

  @override
  _$ActionInProgress get _value => super._value as _$ActionInProgress;
}

/// @nodoc

class _$ActionInProgress implements ActionInProgress {
  const _$ActionInProgress();

  @override
  String toString() {
    return 'TaskActorState.actionInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ActionInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() actionInProgress,
    required TResult Function() deleteSuccess,
    required TResult Function(String message) deleteFailure,
  }) {
    return actionInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function()? deleteSuccess,
    TResult Function(String message)? deleteFailure,
  }) {
    return actionInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function()? deleteSuccess,
    TResult Function(String message)? deleteFailure,
    required TResult orElse(),
  }) {
    if (actionInProgress != null) {
      return actionInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(ActionInProgress value) actionInProgress,
    required TResult Function(DeleteSuccess value) deleteSuccess,
    required TResult Function(DeleteFailure value) deleteFailure,
  }) {
    return actionInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(ActionInProgress value)? actionInProgress,
    TResult Function(DeleteSuccess value)? deleteSuccess,
    TResult Function(DeleteFailure value)? deleteFailure,
  }) {
    return actionInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(ActionInProgress value)? actionInProgress,
    TResult Function(DeleteSuccess value)? deleteSuccess,
    TResult Function(DeleteFailure value)? deleteFailure,
    required TResult orElse(),
  }) {
    if (actionInProgress != null) {
      return actionInProgress(this);
    }
    return orElse();
  }
}

abstract class ActionInProgress implements TaskActorState {
  const factory ActionInProgress() = _$ActionInProgress;
}

/// @nodoc
abstract class _$$DeleteSuccessCopyWith<$Res> {
  factory _$$DeleteSuccessCopyWith(
          _$DeleteSuccess value, $Res Function(_$DeleteSuccess) then) =
      __$$DeleteSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DeleteSuccessCopyWithImpl<$Res>
    extends _$TaskActorStateCopyWithImpl<$Res>
    implements _$$DeleteSuccessCopyWith<$Res> {
  __$$DeleteSuccessCopyWithImpl(
      _$DeleteSuccess _value, $Res Function(_$DeleteSuccess) _then)
      : super(_value, (v) => _then(v as _$DeleteSuccess));

  @override
  _$DeleteSuccess get _value => super._value as _$DeleteSuccess;
}

/// @nodoc

class _$DeleteSuccess implements DeleteSuccess {
  const _$DeleteSuccess();

  @override
  String toString() {
    return 'TaskActorState.deleteSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DeleteSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() actionInProgress,
    required TResult Function() deleteSuccess,
    required TResult Function(String message) deleteFailure,
  }) {
    return deleteSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function()? deleteSuccess,
    TResult Function(String message)? deleteFailure,
  }) {
    return deleteSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function()? deleteSuccess,
    TResult Function(String message)? deleteFailure,
    required TResult orElse(),
  }) {
    if (deleteSuccess != null) {
      return deleteSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(ActionInProgress value) actionInProgress,
    required TResult Function(DeleteSuccess value) deleteSuccess,
    required TResult Function(DeleteFailure value) deleteFailure,
  }) {
    return deleteSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(ActionInProgress value)? actionInProgress,
    TResult Function(DeleteSuccess value)? deleteSuccess,
    TResult Function(DeleteFailure value)? deleteFailure,
  }) {
    return deleteSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(ActionInProgress value)? actionInProgress,
    TResult Function(DeleteSuccess value)? deleteSuccess,
    TResult Function(DeleteFailure value)? deleteFailure,
    required TResult orElse(),
  }) {
    if (deleteSuccess != null) {
      return deleteSuccess(this);
    }
    return orElse();
  }
}

abstract class DeleteSuccess implements TaskActorState {
  const factory DeleteSuccess() = _$DeleteSuccess;
}

/// @nodoc
abstract class _$$DeleteFailureCopyWith<$Res> {
  factory _$$DeleteFailureCopyWith(
          _$DeleteFailure value, $Res Function(_$DeleteFailure) then) =
      __$$DeleteFailureCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class __$$DeleteFailureCopyWithImpl<$Res>
    extends _$TaskActorStateCopyWithImpl<$Res>
    implements _$$DeleteFailureCopyWith<$Res> {
  __$$DeleteFailureCopyWithImpl(
      _$DeleteFailure _value, $Res Function(_$DeleteFailure) _then)
      : super(_value, (v) => _then(v as _$DeleteFailure));

  @override
  _$DeleteFailure get _value => super._value as _$DeleteFailure;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$DeleteFailure(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DeleteFailure implements DeleteFailure {
  const _$DeleteFailure(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'TaskActorState.deleteFailure(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteFailure &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$DeleteFailureCopyWith<_$DeleteFailure> get copyWith =>
      __$$DeleteFailureCopyWithImpl<_$DeleteFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() actionInProgress,
    required TResult Function() deleteSuccess,
    required TResult Function(String message) deleteFailure,
  }) {
    return deleteFailure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function()? deleteSuccess,
    TResult Function(String message)? deleteFailure,
  }) {
    return deleteFailure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function()? deleteSuccess,
    TResult Function(String message)? deleteFailure,
    required TResult orElse(),
  }) {
    if (deleteFailure != null) {
      return deleteFailure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(ActionInProgress value) actionInProgress,
    required TResult Function(DeleteSuccess value) deleteSuccess,
    required TResult Function(DeleteFailure value) deleteFailure,
  }) {
    return deleteFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(ActionInProgress value)? actionInProgress,
    TResult Function(DeleteSuccess value)? deleteSuccess,
    TResult Function(DeleteFailure value)? deleteFailure,
  }) {
    return deleteFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(ActionInProgress value)? actionInProgress,
    TResult Function(DeleteSuccess value)? deleteSuccess,
    TResult Function(DeleteFailure value)? deleteFailure,
    required TResult orElse(),
  }) {
    if (deleteFailure != null) {
      return deleteFailure(this);
    }
    return orElse();
  }
}

abstract class DeleteFailure implements TaskActorState {
  const factory DeleteFailure(final String message) = _$DeleteFailure;

  String get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$DeleteFailureCopyWith<_$DeleteFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
