import 'package:dio/dio.dart';
import 'package:game_mentor/util/http.dart';

class CoachService {
  static Future<Response<List<dynamic>>> getCoaches() async {
    return await dio.get('/coaches');
  }
}
