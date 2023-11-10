import 'package:dio/dio.dart';
import 'package:game_mentor/domain/models/game/game.dart';
import 'package:game_mentor/util/http.dart';

class GameService {
  static getMany() async => await dio.get('/games');

  static getOne(int id) async => await dio.get('/games/$id');

  //! Admin only
  static saveOne(Game game) async => await dio.post('/games',
      data: game.toJson(),
      options: Options(headers: {'Authorization': 'Bearer #TODO'}));
}
