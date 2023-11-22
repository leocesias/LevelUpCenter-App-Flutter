// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'course.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CourseImpl _$$CourseImplFromJson(Map<String, dynamic> json) => _$CourseImpl(
      id: json['id'] as int,
      title: json['title'] as String,
      description: json['description'] as String,
      published: json['published'] as bool,
      price: (json['price'] as num).toDouble(),
      gameId: json['gameId'] as int,
      gameName: json['gameName'] as String,
    );

Map<String, dynamic> _$$CourseImplToJson(_$CourseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'published': instance.published,
      'price': instance.price,
      'gameId': instance.gameId,
      'gameName': instance.gameName,
    };
