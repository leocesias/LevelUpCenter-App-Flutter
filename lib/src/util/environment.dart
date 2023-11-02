import 'package:flutter_dotenv/flutter_dotenv.dart';

class Environment {
  String get apiUrl =>
      dotenv.env['API_V1_URL'] ?? 'http://localhost:8000/api/v1/';
}

final env = Environment();
