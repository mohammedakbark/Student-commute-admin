import 'package:flutter/material.dart';
import 'package:student_commute_admin/const.dart';
import 'package:student_commute_admin/view/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'STUDENT COMMUTE ADMIN',
      theme: ThemeData(
        scaffoldBackgroundColor: DEFAULT_BLUE_DARK,
        colorScheme: ColorScheme.fromSeed(seedColor: DEFAULT_BLUE_DARK),
        useMaterial3: true,
      ),
      home: const LoginScreen(),
    );
  }
}
