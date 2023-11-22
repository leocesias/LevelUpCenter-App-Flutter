import 'package:dio/dio.dart';
import 'package:game_mentor/util/http.dart';
import 'package:shared_preferences/shared_preferences.dart';

//! Admin only
class UserService {
  static getOne(int id) async {
    final prefs = await SharedPreferences.getInstance();
    return await dio.get('/users/$id',
        options: Options(
            headers: {'Authorization': 'Bearer ${prefs.getString('token')}'}));
  }

  static getAll() async {
    final prefs = await SharedPreferences.getInstance();
    return await dio.get('/users',
        options: Options(
            headers: {'Authorization': 'Bearer ${prefs.getString('token')}'}));
  }

  static deleteOne(int id) async {
    final prefs = await SharedPreferences.getInstance();
    return await dio.delete('/users/$id',
        options: Options(
            headers: {'Authorization': 'Bearer ${prefs.getString('token')}'}));
  }
}
