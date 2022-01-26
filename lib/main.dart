import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:school_app/modules/login/login_screen.dart';
import 'package:school_app/shared/components/constants.dart';
import 'package:school_app/shared/cubit/AppCubit/AppCubit.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AppCubit(),
      child: MaterialApp(
        title: 'School App',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          appBarTheme: AppBarTheme(
            color: Colors.white,
            elevation: 5,
            titleTextStyle: TextStyle(
              color: mainColor,
              fontSize: 24,
            ),
            iconTheme: IconThemeData(
              color: mainColor,
            ),
          ),
          bottomNavigationBarTheme: BottomNavigationBarThemeData(
            elevation: 10,
            selectedLabelStyle: TextStyle(
              color: mainColor,
            ),
            selectedIconTheme: IconThemeData(
              color: mainColor,
            ),
            type: BottomNavigationBarType.fixed,
            showUnselectedLabels: false,
          ),
          primaryColor: mainColor,
        ),
        home: LoginScreen(),
      ),
    );
  }
}
