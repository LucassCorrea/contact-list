import 'package:contact_list/core/routes/routes.dart';
import 'package:contact_list/ui/widgets/custom_column_widget.dart';
import 'package:flutter/material.dart';

import '../widgets/text_form_widget.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final GlobalKey _formKey = GlobalKey<FormState>();

  var username = TextEditingController();
  var password = TextEditingController();

  @override
  void dispose() {
    username.dispose();
    password.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Form(
          key: _formKey,
          child: LayoutBuilder(
            builder: (context, constraints) {
              return CustomColumn(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const Text(
                    "Olá,",
                    style: TextStyle(fontSize: 26),
                  ),
                  const Text(
                    "Bem-vindo",
                    style: TextStyle(fontSize: 26),
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        TextFormWidget(
                          title: "Nome de Usuário",
                          controller: username,
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 25, 0, 10),
                          child: TextFormWidget(
                            title: "Senha",
                            controller: password,
                            visibility: true,
                          ),
                        ),
                        Container(
                          alignment: Alignment.centerRight,
                          child: TextButton(
                            onPressed: () {},
                            child: const Text(
                              "Esqueceu a senha?",
                              style: TextStyle(
                                color: Colors.black54,
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                              ),
                              textAlign: TextAlign.end,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text("Login"),
                  ),
                  const SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, Routes.register);
                    },
                    style: ElevatedButton.styleFrom(
                      shadowColor: Colors.transparent,
                      backgroundColor: Colors.transparent,
                      foregroundColor: Colors.black54,
                    ),
                    child: const Text("Criar Conta"),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
