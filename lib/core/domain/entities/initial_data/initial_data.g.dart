// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'initial_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_InitialData _$$_InitialDataFromJson(Map<String, dynamic> json) =>
    _$_InitialData(
      tokenAccess: json['tokenAccess'] as String,
      tokenRefresh: json['tokenRefresh'] as String,
      user: User.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_InitialDataToJson(_$_InitialData instance) =>
    <String, dynamic>{
      'tokenAccess': instance.tokenAccess,
      'tokenRefresh': instance.tokenRefresh,
      'user': instance.user,
    };
