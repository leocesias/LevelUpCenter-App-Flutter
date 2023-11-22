import 'package:freezed_annotation/freezed_annotation.dart';

part 'game.freezed.dart';
part 'game.g.dart';

@freezed
class Game with _$Game {
  const factory Game({
    int? id,
    required String name,
    required String description,
    required String iconUrl,
    required String splashUrl,
    required String bannerUrl,
    required int releaseYear,
    required double rating,
  }) = _Game;

  factory Game.fromJson(Map<String, dynamic> json) => _$GameFromJson(json);
}
