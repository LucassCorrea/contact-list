import 'package:dio/dio.dart';

class ApiConfig {
  static Dio apiContact = Dio(
    BaseOptions(
      baseUrl: "https://parseapi.back4app.com/classes/Contact",
      contentType: "application/json",
      headers: {
        "X-Parse-Application-Id": "R1inqzkmiVLyiwrP6gnAV71W9QaC7ohuTmuy57JU",
        "X-Parse-REST-API-Key": "ugE8yq9KveQLZK2z1VHsLfAL8QWFXfAFCgtkijzU",
      },
    ),
  );

  static Dio apiUser = Dio(
    BaseOptions(
      contentType: "application/json",
      headers: {
        "X-Parse-Application-Id": "R1inqzkmiVLyiwrP6gnAV71W9QaC7ohuTmuy57JU",
        "X-Parse-REST-API-Key": "ugE8yq9KveQLZK2z1VHsLfAL8QWFXfAFCgtkijzU",
        "X-Parse-Revocable-Session": 1,
      },
    ),
  );
}
