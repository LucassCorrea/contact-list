abstract class UserException {
  final String message;

  UserException(this.message);

  @override
  String toString() => message;
}

class UserRegisted extends UserException {
  UserRegisted() : super("Usuário já cadastrado");
}

class UserNotFound extends UserException {
  UserNotFound() : super("Usuário não encontrado");
}
