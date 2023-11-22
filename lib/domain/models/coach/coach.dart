import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:game_mentor/domain/models/course/course.dart';

part 'coach.freezed.dart';
part 'coach.g.dart';

@freezed
class Coach with _$Coach {
  const factory Coach({
    required String nickname,
    required String profilePictureUrl,
    required String twitchUrl,
    required List<Course> courses,
  }) = _Coach;

  factory Coach.fromJson(Map<String, dynamic> json) => _$CoachFromJson(json);
}
