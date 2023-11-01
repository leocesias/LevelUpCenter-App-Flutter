import 'package:GameMentor/src/util/environment.dart';
import 'package:dio/dio.dart';

final dio = Dio(
  BaseOptions(
    baseUrl: Environment().apiUrl(),
    headers: {
      "Accept": "application/json",
      "Content-Type": "application/json",
    },
    connectTimeout: const Duration(seconds: 3),
  ),
);
