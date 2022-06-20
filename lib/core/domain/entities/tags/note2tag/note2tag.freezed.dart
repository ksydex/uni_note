// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'note2tag.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Note2Tag _$Note2TagFromJson(Map<String, dynamic> json) {
  return _Note2Tag.fromJson(json);
}

/// @nodoc
mixin _$Note2Tag {
  int get id => throw _privateConstructorUsedError;
  int get noteId => throw _privateConstructorUsedError;
  int get tagId => throw _privateConstructorUsedError;
  Tag get tag => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $Note2TagCopyWith<Note2Tag> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $Note2TagCopyWith<$Res> {
  factory $Note2TagCopyWith(Note2Tag value, $Res Function(Note2Tag) then) =
      _$Note2TagCopyWithImpl<$Res>;
  $Res call({int id, int noteId, int tagId, Tag tag});

  $TagCopyWith<$Res> get tag;
}

/// @nodoc
class _$Note2TagCopyWithImpl<$Res> implements $Note2TagCopyWith<$Res> {
  _$Note2TagCopyWithImpl(this._value, this._then);

  final Note2Tag _value;
  // ignore: unused_field
  final $Res Function(Note2Tag) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? noteId = freezed,
    Object? tagId = freezed,
    Object? tag = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      noteId: noteId == freezed
          ? _value.noteId
          : noteId // ignore: cast_nullable_to_non_nullable
              as int,
      tagId: tagId == freezed
          ? _value.tagId
          : tagId // ignore: cast_nullable_to_non_nullable
              as int,
      tag: tag == freezed
          ? _value.tag
          : tag // ignore: cast_nullable_to_non_nullable
              as Tag,
    ));
  }

  @override
  $TagCopyWith<$Res> get tag {
    return $TagCopyWith<$Res>(_value.tag, (value) {
      return _then(_value.copyWith(tag: value));
    });
  }
}

/// @nodoc
abstract class _$$_Note2TagCopyWith<$Res> implements $Note2TagCopyWith<$Res> {
  factory _$$_Note2TagCopyWith(
          _$_Note2Tag value, $Res Function(_$_Note2Tag) then) =
      __$$_Note2TagCopyWithImpl<$Res>;
  @override
  $Res call({int id, int noteId, int tagId, Tag tag});

  @override
  $TagCopyWith<$Res> get tag;
}

/// @nodoc
class __$$_Note2TagCopyWithImpl<$Res> extends _$Note2TagCopyWithImpl<$Res>
    implements _$$_Note2TagCopyWith<$Res> {
  __$$_Note2TagCopyWithImpl(
      _$_Note2Tag _value, $Res Function(_$_Note2Tag) _then)
      : super(_value, (v) => _then(v as _$_Note2Tag));

  @override
  _$_Note2Tag get _value => super._value as _$_Note2Tag;

  @override
  $Res call({
    Object? id = freezed,
    Object? noteId = freezed,
    Object? tagId = freezed,
    Object? tag = freezed,
  }) {
    return _then(_$_Note2Tag(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      noteId: noteId == freezed
          ? _value.noteId
          : noteId // ignore: cast_nullable_to_non_nullable
              as int,
      tagId: tagId == freezed
          ? _value.tagId
          : tagId // ignore: cast_nullable_to_non_nullable
              as int,
      tag: tag == freezed
          ? _value.tag
          : tag // ignore: cast_nullable_to_non_nullable
              as Tag,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Note2Tag implements _Note2Tag {
  const _$_Note2Tag(
      {required this.id,
      required this.noteId,
      required this.tagId,
      required this.tag});

  factory _$_Note2Tag.fromJson(Map<String, dynamic> json) =>
      _$$_Note2TagFromJson(json);

  @override
  final int id;
  @override
  final int noteId;
  @override
  final int tagId;
  @override
  final Tag tag;

  @override
  String toString() {
    return 'Note2Tag(id: $id, noteId: $noteId, tagId: $tagId, tag: $tag)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Note2Tag &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.noteId, noteId) &&
            const DeepCollectionEquality().equals(other.tagId, tagId) &&
            const DeepCollectionEquality().equals(other.tag, tag));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(noteId),
      const DeepCollectionEquality().hash(tagId),
      const DeepCollectionEquality().hash(tag));

  @JsonKey(ignore: true)
  @override
  _$$_Note2TagCopyWith<_$_Note2Tag> get copyWith =>
      __$$_Note2TagCopyWithImpl<_$_Note2Tag>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_Note2TagToJson(this);
  }
}

abstract class _Note2Tag implements Note2Tag {
  const factory _Note2Tag(
      {required final int id,
      required final int noteId,
      required final int tagId,
      required final Tag tag}) = _$_Note2Tag;

  factory _Note2Tag.fromJson(Map<String, dynamic> json) = _$_Note2Tag.fromJson;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  int get noteId => throw _privateConstructorUsedError;
  @override
  int get tagId => throw _privateConstructorUsedError;
  @override
  Tag get tag => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_Note2TagCopyWith<_$_Note2Tag> get copyWith =>
      throw _privateConstructorUsedError;
}
