import 'package:contact_list/core/theme/theme.dart';
import 'package:contact_list/core/routes/routes.dart';
import 'package:contact_list/ui/pages/forgot_page.dart';
import 'package:contact_list/ui/pages/login_page.dart';
import 'package:contact_list/ui/pages/register_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

void main() async {
  await dotenv.load(fileName: ".env");

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: const Locale("pt", "BR"),
      theme: AppTheme.themeLight,
      debugShowCheckedModeBanner: false,
      routes: {
        Routes.login: (context) => const LoginPage(),
        Routes.register: (context) => const RegisterPage(),
        Routes.forgot: (context) => const ForgotPage(),
      },
    );
  }
}
