// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'note2tag.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Note2Tag _$$_Note2TagFromJson(Map<String, dynamic> json) => _$_Note2Tag(
      id: json['id'] as int,
      noteId: json['noteId'] as int,
      tagId: json['tagId'] as int,
      tag: Tag.fromJson(json['tag'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_Note2TagToJson(_$_Note2Tag instance) =>
    <String, dynamic>{
      'id': instance.id,
      'noteId': instance.noteId,
      'tagId': instance.tagId,
      'tag': instance.tag,
    };
