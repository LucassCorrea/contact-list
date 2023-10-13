import 'package:contact_list/ui/widgets/custom_column_widget.dart';
import 'package:contact_list/ui/widgets/text_form_widget.dart';
import 'package:flutter/material.dart';

class ForgotPage extends StatefulWidget {
  const ForgotPage({super.key});

  @override
  State<ForgotPage> createState() => _ForgotPageState();
}

class _ForgotPageState extends State<ForgotPage> {
  final _formKey = GlobalKey<FormState>();
  final email = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Form(
          key: _formKey,
          child: CustomColumn(
            padding: const EdgeInsets.fromLTRB(20, 10, 20, 15),
            children: [
              const Text(
                "Recuperar senha",
                style: TextStyle(fontSize: 22),
              ),
              Flexible(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Para recuperar sua senha, por favor informe seu email cadastrado.",
                      maxLines: 10,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    const SizedBox(height: 20),
                    TextFormWidget(
                      title: "E-mail",
                      controller: email,
                      autofocus: true,
                    ),
                  ],
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text("Confirmar"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
