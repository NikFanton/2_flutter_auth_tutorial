import 'package:flutter/material.dart';
import 'package:flutter_auth_tutorial/auth/login_page.dart';
import 'package:flutter_auth_tutorial/theme/app_theme.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, theme: AppTheme.light, home: const LoginPage());
  }
}
