// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GameImpl _$$GameImplFromJson(Map<String, dynamic> json) => _$GameImpl(
      id: json['id'] as int?,
      name: json['name'] as String,
      description: json['description'] as String,
      iconUrl: json['iconUrl'] as String,
      splashUrl: json['splashUrl'] as String,
      bannerUrl: json['bannerUrl'] as String,
      releaseYear: json['releaseYear'] as int,
      rating: (json['rating'] as num).toDouble(),
    );

Map<String, dynamic> _$$GameImplToJson(_$GameImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'iconUrl': instance.iconUrl,
      'splashUrl': instance.splashUrl,
      'bannerUrl': instance.bannerUrl,
      'releaseYear': instance.releaseYear,
      'rating': instance.rating,
    };
