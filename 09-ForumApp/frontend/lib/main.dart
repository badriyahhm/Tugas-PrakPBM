import 'package:flutter/material.dart';
import 'package:tugas8/Views/login_page.dart';
import 'package:tugas8/Views/register_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Forum Application',
      home: const LoginPage(),
    );
  }
}
