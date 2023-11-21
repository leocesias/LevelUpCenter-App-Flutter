import 'package:game_mentor/util/http.dart';

class AuthService {
  static Future<dynamic> login(String username, String password) async =>
      await dio.post('/users/sign-in', data: {
        'username': username,
        'password': password,
      });
}
