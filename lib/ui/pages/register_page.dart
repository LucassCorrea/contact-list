import 'package:contact_list/ui/widgets/custom_column_widget.dart';
import 'package:contact_list/ui/widgets/text_form_widget.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _formKey = GlobalKey<FormState>();
  var username = TextEditingController();
  var email = TextEditingController();
  var password = TextEditingController();
  var passwordConfirm = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    username.dispose();
    email.dispose();
    password.dispose();
    passwordConfirm.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Form(
          key: _formKey,
          child: CustomColumn(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Text(
                "Cadastro",
                style: TextStyle(fontSize: 24),
              ),
              Flexible(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextFormWidget(
                      title: "Nome de Usuário",
                      controller: username,
                    ),
                    const SizedBox(height: 15),
                    TextFormWidget(
                      title: "E-mail",
                      controller: email,
                    ),
                    const SizedBox(height: 15),
                    TextFormWidget(
                      title: "Senha de acesso",
                      controller: password,
                      visibility: true,
                    ),
                    const SizedBox(height: 15),
                    TextFormWidget(
                      title: "Confirmar senha",
                      controller: passwordConfirm,
                      visibility: true,
                    ),
                  ],
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text("Cadastrar"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
