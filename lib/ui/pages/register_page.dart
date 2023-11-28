import 'package:contact_list/core/data/model/user_model.dart';
import 'package:contact_list/core/data/repository/user_repository.dart';
import 'package:contact_list/core/utils/validators/validators.dart';
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
  var userRepository = UserRepository();

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
                      validator: (value) => Validators.usernName(value),
                    ),
                    const SizedBox(height: 15),
                    TextFormWidget(
                      title: "E-mail",
                      controller: email,
                      validator: (value) => Validators.email(value),
                    ),
                    const SizedBox(height: 15),
                    TextFormWidget(
                      title: "Senha de acesso",
                      controller: password,
                      validator: (value) => Validators.password(value),
                      visibility: true,
                    ),
                    const SizedBox(height: 15),
                    TextFormWidget(
                      title: "Confirmar senha",
                      controller: passwordConfirm,
                      validator: (value) =>
                          Validators.confirmPassword(value, password.text),
                      visibility: true,
                    ),
                  ],
                ),
              ),
              ElevatedButton(
                onPressed: () async {
                  if (_formKey.currentState!.validate()) {
                    await userRepository.signIn(
                      UserModel(
                        email: email.text,
                        password: password.text,
                        username: username.text,
                      ),
                    );
                  }
                },
                child: const Text("Cadastrar"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
