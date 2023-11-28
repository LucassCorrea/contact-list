import 'package:contact_list/core/data/model/user_model.dart';

abstract class UserService {
  Future<void> signIn(UserModel user);

  Future<UserModel> login(String username, String password);

  Future<void> verificationEmail(String email);

  Future<void> passwordReset(String email);
}
