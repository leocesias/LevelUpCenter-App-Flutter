import 'package:dio/dio.dart';
import 'package:game_mentor/util/http.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthService {
  static Future<dynamic> login(String username, String password) async =>
      await dio.post('/users/sign-in', data: {
        'username': username,
        'password': password,
      });

  static Future<dynamic> register(
    String username,
    String password,
    String firstName,
    String lastName,
  ) async {
    return await dio.post('/register', data: {
      'username': username,
      'password': password,
      'firstName': firstName,
      'lastName': lastName,
    });
  }

  static Future<dynamic> getProfile() async {
    final prefs = await SharedPreferences.getInstance();
    return await dio.get('/users/profile',
        options: Options(
            headers: {'Authorization': 'Bearer ${prefs.getString('token')}'}));
  }
}
