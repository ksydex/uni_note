// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'note.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Note _$$_NoteFromJson(Map<String, dynamic> json) => _$_Note(
      id: json['id'] as int,
      name: json['name'] as String,
      body: json['body'] as String,
      groupId: json['groupId'] as int,
      isFavorite: json['isFavorite'] as bool,
      tags: (json['tags'] as List<dynamic>?)
          ?.map((e) => Tag.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_NoteToJson(_$_Note instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'body': instance.body,
      'groupId': instance.groupId,
      'isFavorite': instance.isFavorite,
      'tags': instance.tags,
    };
