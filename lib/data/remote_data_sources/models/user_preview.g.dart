// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_preview.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserPreviewImpl _$$UserPreviewImplFromJson(Map<String, dynamic> json) =>
    _$UserPreviewImpl(
      id: json['id'] as String? ?? '',
      title: json['title'] as String? ?? '',
      firstName: json['firstName'] as String? ?? '',
      lastName: json['lastName'] as String? ?? '',
      picture: json['picture'] as String? ?? '',
    );

Map<String, dynamic> _$$UserPreviewImplToJson(_$UserPreviewImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'picture': instance.picture,
    };
