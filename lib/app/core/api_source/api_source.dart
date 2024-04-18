import 'package:dio/dio.dart';
import 'package:jumbo_foods_app/app/core/api_source/api_endpoints.dart';

class ApiSource {
  // Dio Instance with Options
  static final dio = Dio(
    BaseOptions(
      baseUrl: ApiEndpoints.baseUrl,
      connectTimeout: ApiEndpoints.connectionTimeout,
      receiveTimeout: ApiEndpoints.receiveTimeout,
      headers: {
        'Content-Type': 'application/json; charset=UTF-8',
      },
      responseType: ResponseType.json,
    ),
  );
}
