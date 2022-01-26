import 'package:flutter/material.dart';
import 'package:school_app/modules/login/login_screen.dart';
import 'package:school_app/testing_compenent.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'School App',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          color: Colors.white,
          elevation: 14,
        ),
      ),
      home: LoginScreen(),
    );
  }
}

