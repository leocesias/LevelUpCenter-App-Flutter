import 'package:dio/dio.dart';

final dio = Dio(
  BaseOptions(
    baseUrl: "http://localhost:8080/api/v1",
    headers: {
      "Accept": "application/json",
      "Content-Type": "application/json",
    },
    connectTimeout: const Duration(seconds: 3),
  ),
);
