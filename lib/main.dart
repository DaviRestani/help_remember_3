import 'package:flutter/material.dart';
import 'package:help_remember_3/pages/elements_pages/family_screen.dart';
import 'package:help_remember_3/pages/main_pages/forgot_password_page.dart';
import 'package:help_remember_3/pages/main_pages/home_page.dart';
import 'package:help_remember_3/pages/main_pages/login_page.dart';
import 'package:help_remember_3/pages/main_pages/register_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Help Remember',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        '/': (context) => const LoginPage(),
        '/register': (context) => const RegisterPage(),
        '/forgot_password': (context) => const ForgotPasswordPage(),
        '/home_page': (context) => const HomePage(),
        '/family_screen': (context) => const FamilyScreen()
      },
    );
  }
}
