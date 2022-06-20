// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'note_form_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NoteFormState {
  Note get model => throw _privateConstructorUsedError;
  bool get isEditing => throw _privateConstructorUsedError;
  bool get isSaving => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;
  bool? get isSuccess => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NoteFormStateCopyWith<NoteFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoteFormStateCopyWith<$Res> {
  factory $NoteFormStateCopyWith(
          NoteFormState value, $Res Function(NoteFormState) then) =
      _$NoteFormStateCopyWithImpl<$Res>;
  $Res call(
      {Note model,
      bool isEditing,
      bool isSaving,
      String? errorMessage,
      bool? isSuccess});

  $NoteCopyWith<$Res> get model;
}

/// @nodoc
class _$NoteFormStateCopyWithImpl<$Res>
    implements $NoteFormStateCopyWith<$Res> {
  _$NoteFormStateCopyWithImpl(this._value, this._then);

  final NoteFormState _value;
  // ignore: unused_field
  final $Res Function(NoteFormState) _then;

  @override
  $Res call({
    Object? model = freezed,
    Object? isEditing = freezed,
    Object? isSaving = freezed,
    Object? errorMessage = freezed,
    Object? isSuccess = freezed,
  }) {
    return _then(_value.copyWith(
      model: model == freezed
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as Note,
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
      isSuccess: isSuccess == freezed
          ? _value.isSuccess
          : isSuccess // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }

  @override
  $NoteCopyWith<$Res> get model {
    return $NoteCopyWith<$Res>(_value.model, (value) {
      return _then(_value.copyWith(model: value));
    });
  }
}

/// @nodoc
abstract class _$$_NoteFormStateCopyWith<$Res>
    implements $NoteFormStateCopyWith<$Res> {
  factory _$$_NoteFormStateCopyWith(
          _$_NoteFormState value, $Res Function(_$_NoteFormState) then) =
      __$$_NoteFormStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Note model,
      bool isEditing,
      bool isSaving,
      String? errorMessage,
      bool? isSuccess});

  @override
  $NoteCopyWith<$Res> get model;
}

/// @nodoc
class __$$_NoteFormStateCopyWithImpl<$Res>
    extends _$NoteFormStateCopyWithImpl<$Res>
    implements _$$_NoteFormStateCopyWith<$Res> {
  __$$_NoteFormStateCopyWithImpl(
      _$_NoteFormState _value, $Res Function(_$_NoteFormState) _then)
      : super(_value, (v) => _then(v as _$_NoteFormState));

  @override
  _$_NoteFormState get _value => super._value as _$_NoteFormState;

  @override
  $Res call({
    Object? model = freezed,
    Object? isEditing = freezed,
    Object? isSaving = freezed,
    Object? errorMessage = freezed,
    Object? isSuccess = freezed,
  }) {
    return _then(_$_NoteFormState(
      model: model == freezed
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as Note,
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
      isSuccess: isSuccess == freezed
          ? _value.isSuccess
          : isSuccess // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$_NoteFormState implements _NoteFormState {
  const _$_NoteFormState(
      {required this.model,
      required this.isEditing,
      required this.isSaving,
      required this.errorMessage,
      required this.isSuccess});

  @override
  final Note model;
  @override
  final bool isEditing;
  @override
  final bool isSaving;
  @override
  final String? errorMessage;
  @override
  final bool? isSuccess;

  @override
  String toString() {
    return 'NoteFormState(model: $model, isEditing: $isEditing, isSaving: $isSaving, errorMessage: $errorMessage, isSuccess: $isSuccess)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NoteFormState &&
            const DeepCollectionEquality().equals(other.model, model) &&
            const DeepCollectionEquality().equals(other.isEditing, isEditing) &&
            const DeepCollectionEquality().equals(other.isSaving, isSaving) &&
            const DeepCollectionEquality()
                .equals(other.errorMessage, errorMessage) &&
            const DeepCollectionEquality().equals(other.isSuccess, isSuccess));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(model),
      const DeepCollectionEquality().hash(isEditing),
      const DeepCollectionEquality().hash(isSaving),
      const DeepCollectionEquality().hash(errorMessage),
      const DeepCollectionEquality().hash(isSuccess));

  @JsonKey(ignore: true)
  @override
  _$$_NoteFormStateCopyWith<_$_NoteFormState> get copyWith =>
      __$$_NoteFormStateCopyWithImpl<_$_NoteFormState>(this, _$identity);
}

abstract class _NoteFormState implements NoteFormState {
  const factory _NoteFormState(
      {required final Note model,
      required final bool isEditing,
      required final bool isSaving,
      required final String? errorMessage,
      required final bool? isSuccess}) = _$_NoteFormState;

  @override
  Note get model => throw _privateConstructorUsedError;
  @override
  bool get isEditing => throw _privateConstructorUsedError;
  @override
  bool get isSaving => throw _privateConstructorUsedError;
  @override
  String? get errorMessage => throw _privateConstructorUsedError;
  @override
  bool? get isSuccess => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_NoteFormStateCopyWith<_$_NoteFormState> get copyWith =>
      throw _privateConstructorUsedError;
}
