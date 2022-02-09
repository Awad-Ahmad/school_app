import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:school_app/modules/home/home_screen.dart';
import 'package:school_app/modules/messages/messages_screen.dart';
import 'package:school_app/modules/personal/personalInfo_screen.dart';
import 'package:school_app/shared/cubit/AppCubit/AppStates.dart';
import 'package:school_app/shared/models/User.dart';

class AppCubit extends Cubit<AppState> {
  AppCubit() : super(AppInitialState());

  static AppCubit get(context) => BlocProvider.of(context);

  int currentIndex = 0;

  void changeIndex(index) {
    currentIndex = index;
    emit(NavBarIndexChanged());
  }

  String? password;
  String? email;
  String? type;

  String? currType;
  MyUsers? currUser;

  void function(String? v, String? a) {
    email = v;
    password = a;
    emit(NavBarIndexChanged());
  }

  int index = 0;
  List<Widget> screensName = [
    HomeScreen(),
    MessagesScreen(),
    PersonalInfo(),
  ];
}
