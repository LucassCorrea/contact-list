import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class ApiConfig {
  static Dio apiContact = Dio(
    BaseOptions(
      baseUrl: dotenv.env['BASE_URL_1']!,
      contentType: "application/json",
      validateStatus: (status) {
        if (status == 200 || status == 201) {
          return true;
        }
        return false;
      },
      headers: {
        "X-Parse-Application-Id": dotenv.env['APP_ID']!,
        "X-Parse-REST-API-Key": dotenv.env['REST_KEY'],
      },
    ),
  );

  static Dio apiUser = Dio(
    BaseOptions(
      baseUrl: dotenv.env['BASE_URL_2']!,
      contentType: "application/json",
      validateStatus: (status) {
        if (status == 200 || status == 201) {
          return true;
        }
        return false;
      },
      headers: {
        "X-Parse-Application-Id": dotenv.env['APP_ID']!,
        "X-Parse-REST-API-Key": dotenv.env['REST_KEY'],
        "X-Parse-Revocable-Session": 1,
      },
    ),
  );
}
