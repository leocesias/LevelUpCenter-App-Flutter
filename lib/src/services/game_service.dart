import 'package:GameMentor/src/domain/models/game/game.dart';
import 'package:GameMentor/src/util/http.dart';
import 'package:dio/dio.dart';

class GameService {
  static getMany() async => await dio.get('/games');

  static getOne(int id) async => await dio.get('/games/$id');

  //! Admin only
  static saveOne(Game game) async => await dio.post('/games',
      data: game.toJson(),
      options: Options(headers: {'Authorization': 'Bearer #TODO'}));
}
