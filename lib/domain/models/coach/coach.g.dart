// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coach.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CoachImpl _$$CoachImplFromJson(Map<String, dynamic> json) => _$CoachImpl(
      nickname: json['nickname'] as String,
      profilePictureUrl: json['profilePictureUrl'] as String,
      twitchUrl: json['twitchUrl'] as String,
      courses: (json['courses'] as List<dynamic>)
          .map((e) => Course.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$CoachImplToJson(_$CoachImpl instance) =>
    <String, dynamic>{
      'nickname': instance.nickname,
      'profilePictureUrl': instance.profilePictureUrl,
      'twitchUrl': instance.twitchUrl,
      'courses': instance.courses,
    };
