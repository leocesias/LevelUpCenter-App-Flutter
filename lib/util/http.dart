import 'package:dio/dio.dart';
import 'package:game_mentor/util/environment.dart';

final dio = Dio(
  BaseOptions(
    baseUrl: env.apiUrl,
    headers: {
      "Accept": "application/json",
      "Content-Type": "application/json",
    },
    connectTimeout: const Duration(seconds: 3),
  ),
);
