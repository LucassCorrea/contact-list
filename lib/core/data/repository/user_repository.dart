import 'dart:convert';

import 'package:contact_list/core/data/api/api_config.dart';
import 'package:contact_list/core/data/model/user_model.dart';
import 'package:contact_list/core/data/service/user_service.dart';

class UserRepository implements UserService {
  @override
  Future<UserModel> login(String username, String password) async {
    // var dio = ApiConfig.apiUser;

    // try {
    //   var response = await dio.get(
    //     "/login",
    //   );

    //   if (response.statusCode == 200 || response.statusCode == 201) {
    //     return UserModel.fromJson(response.data);
    //   }
    //   return User

    //   print(response.statusCode);
    // } catch (e) {
    //   rethrow;
    // }
    throw UnimplementedError();
  }

  @override
  Future<void> passwordReset(String email) async {
    var dio = ApiConfig.apiUser;

    try {
      var response = await dio.post(
        "/requestPasswordReset",
        data: UserModel(email: email).toJson(),
      );
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<void> signIn(UserModel user) async {
    var dio = ApiConfig.apiUser;

    try {
      var response = await dio.post(
        "/users",
        data: user.toJson(),
      );
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<void> verificationEmail(String email) {
    throw UnimplementedError();
  }
}
