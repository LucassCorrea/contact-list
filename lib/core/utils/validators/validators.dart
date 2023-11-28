class Validators {
  static String? usernName(String? value) {
    var text = value?.trim() ?? "";

    if (text.isEmpty) {
      return "Este campo é obrigatório";
    }

    return null;
  }

  static String? email(String? value) {
    var text = value?.trim() ?? "";

    if (text.isEmpty) {
      return "Este campo é obrigatório";
    }

    if (!text.contains('@')) {
      return "E-mail inválido";
    }

    return null;
  }

  static String? password(String? value) {
    var text = value?.trim() ?? "";

    if (text.isEmpty) {
      return "Este campo é obrigatório";
    }

    if (text.length < 8) {
      return "A senha deve ter no mínimo 8 caracteres";
    }

    return null;
  }

  static String? confirmPassword(String? value, String? pwd) {
    var text = value?.trim() ?? "";

    if (pwd != text) {
      return "As senhas não conferem";
    }

    return null;
  }
}
