import 'package:contact_list/ui/widgets/page_widget.dart';
import 'package:flutter/material.dart';

import '../../../core/routes/routes.dart';

class ForgotAnswers {
  static Widget sucess(BuildContext context) {
    return PageWidget(
      isSucess: true,
      title: "Recuperação de senha enviado!",
      description:
          "Por favor, verifique seu e-mail e siga as instruções para poder recuperar seu acesso.",
      label: "Voltar ao início",
      onPressed: () {
        Navigator.pushNamedAndRemoveUntil(
          context,
          Routes.login,
          (route) => false,
        );
      },
    );
  }

  static Widget error(BuildContext context) {
    return PageWidget(
      isSucess: false,
      title: "Erro ao enviar dados",
      description:
          "Ocorreu um erro inesperado durante a recuperação de senha. Por favor, tente novamente.",
      label: "Voltar ao início",
      onPressed: () {
        Navigator.pushNamedAndRemoveUntil(
          context,
          Routes.login,
          (route) => false,
        );
      },
    );
  }
}
