// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'task_form_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TaskFormState {
  Task get task => throw _privateConstructorUsedError;
  bool get isEditing => throw _privateConstructorUsedError;
  bool get isSaving => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;
  bool? get success => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TaskFormStateCopyWith<TaskFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskFormStateCopyWith<$Res> {
  factory $TaskFormStateCopyWith(
          TaskFormState value, $Res Function(TaskFormState) then) =
      _$TaskFormStateCopyWithImpl<$Res>;
  $Res call(
      {Task task,
      bool isEditing,
      bool isSaving,
      String? errorMessage,
      bool? success});

  $TaskCopyWith<$Res> get task;
}

/// @nodoc
class _$TaskFormStateCopyWithImpl<$Res>
    implements $TaskFormStateCopyWith<$Res> {
  _$TaskFormStateCopyWithImpl(this._value, this._then);

  final TaskFormState _value;
  // ignore: unused_field
  final $Res Function(TaskFormState) _then;

  @override
  $Res call({
    Object? task = freezed,
    Object? isEditing = freezed,
    Object? isSaving = freezed,
    Object? errorMessage = freezed,
    Object? success = freezed,
  }) {
    return _then(_value.copyWith(
      task: task == freezed
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as Task,
      isEditing: isEditing == freezed
          ? _value.isEditing
          : isEditing // ignore: cast_nullable_to_non_nullable
              as bool,
      isSaving: isSaving == freezed
          ? _value.isSaving
          : isSaving // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      success: success == freezed
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }

  @override
  $TaskCopyWith<$Res> get task {
    return $TaskCopyWith<$Res>(_value.task, (value) {
      return _then(_value.copyWith(task: value));
    });
  }
}

/// @nodoc
abstract class _$$_TaskFormStateCopyWith<$Res>
    implements $TaskFormStateCopyWith<$Res> {
  factory _$$_TaskFormStateCopyWith(
          _$_TaskFormState value, $Res Function(_$_TaskFormState) then) =
      __$$_TaskFormStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Task task,
      bool isEditing,
      bool isSaving,
      String? errorMessage,
      bool? success});

  @override
  $TaskCopyWith<$Res> get task;
}

/// @nodoc
class __$$_TaskFormStateCopyWithImpl<$Res>
    extends _$TaskFormStateCopyWithImpl<$Res>
    implements _$$_TaskFormStateCopyWith<$Res> {
  __$$_TaskFormStateCopyWithImpl(
      _$_TaskFormState _value, $Res Function(_$_TaskFormState) _then)
      : super(_value, (v) => _then(v as _$_TaskFormState));

  @override
  _$_TaskFormState get _value => super._value as _$_TaskFormState;

  @override
  $Res call({
    Object? task = freezed,
    Object? isEditing = freezed,
    Object? isSaving = freezed,
    Object? errorMessage = freezed,
    Object? success = freezed,
  }) {
    return _then(_$_TaskFormState(
      task: task == freezed
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as Task,
      isEditing: isEditing == freezed
          ? _value.isEditing
          : isEditing // ignore: cast_nullable_to_non_nullable
              as bool,
      isSaving: isSaving == freezed
          ? _value.isSaving
          : isSaving // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      success: success == freezed
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$_TaskFormState implements _TaskFormState {
  const _$_TaskFormState(
      {required this.task,
      required this.isEditing,
      required this.isSaving,
      required this.errorMessage,
      required this.success});

  @override
  final Task task;
  @override
  final bool isEditing;
  @override
  final bool isSaving;
  @override
  final String? errorMessage;
  @override
  final bool? success;

  @override
  String toString() {
    return 'TaskFormState(task: $task, isEditing: $isEditing, isSaving: $isSaving, errorMessage: $errorMessage, success: $success)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TaskFormState &&
            const DeepCollectionEquality().equals(other.task, task) &&
            const DeepCollectionEquality().equals(other.isEditing, isEditing) &&
            const DeepCollectionEquality().equals(other.isSaving, isSaving) &&
            const DeepCollectionEquality()
                .equals(other.errorMessage, errorMessage) &&
            const DeepCollectionEquality().equals(other.success, success));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(task),
      const DeepCollectionEquality().hash(isEditing),
      const DeepCollectionEquality().hash(isSaving),
      const DeepCollectionEquality().hash(errorMessage),
      const DeepCollectionEquality().hash(success));

  @JsonKey(ignore: true)
  @override
  _$$_TaskFormStateCopyWith<_$_TaskFormState> get copyWith =>
      __$$_TaskFormStateCopyWithImpl<_$_TaskFormState>(this, _$identity);
}

abstract class _TaskFormState implements TaskFormState {
  const factory _TaskFormState(
      {required final Task task,
      required final bool isEditing,
      required final bool isSaving,
      required final String? errorMessage,
      required final bool? success}) = _$_TaskFormState;

  @override
  Task get task => throw _privateConstructorUsedError;
  @override
  bool get isEditing => throw _privateConstructorUsedError;
  @override
  bool get isSaving => throw _privateConstructorUsedError;
  @override
  String? get errorMessage => throw _privateConstructorUsedError;
  @override
  bool? get success => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_TaskFormStateCopyWith<_$_TaskFormState> get copyWith =>
      throw _privateConstructorUsedError;
}
