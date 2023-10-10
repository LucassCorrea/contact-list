import 'package:contact_list/core/theme/theme.dart';
import 'package:contact_list/core/routes/routes.dart';
import 'package:contact_list/ui/pages/login_page.dart';
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
      theme: AppTheme.themeLight,
      debugShowCheckedModeBanner: false,
      routes: {
        Routes.homepage: (context) => const LoginPage(),
      },
    );
  }
}
