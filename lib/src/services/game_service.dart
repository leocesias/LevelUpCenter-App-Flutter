import 'shared/http.dart';

class GameService {
  static getMany() async => await dio.get('/games');

  static getOne(int id) async => await dio.get('/games/$id');
}
