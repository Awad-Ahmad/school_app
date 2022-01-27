import 'package:flutter/material.dart';
import 'package:school_app/modules/announcment/anouncment_screen.dart';
import 'package:school_app/modules/attendance/attendance_screen.dart';
import 'package:school_app/modules/fees/fees_screen.dart';
import 'package:school_app/modules/grades/grades_screen.dart';
import 'package:school_app/modules/more/more_screen.dart';
import 'package:school_app/modules/table/tables_screen.dart';

var bgColor = const Color(0xffF7F0F0);
var mainColor = const Color(0xff0D3082);
List<String> widgetName = [
  "الدرجات",
  "الغيابات ",
  "تعاميم و اعلانات ",
  "جدول الحصص",
  "الرسوم المالية",
  "المزيد",
];
List<String> imagePath = [
  "assets/images/Grade.png",
  "assets/images/attendance.png",
  "assets/images/ann.png",
  "assets/images/Table.png",
  "assets/images/Fees.png",
  "assets/images/more.png",
];
List<String> courses = [
  "رياضيات",
  "علوم",
  "انجليزي",
  "فرنسي",
  "عربي",
  "ديانه",
  "اجتماعية",
];
List<Widget> itemScreens = [
  GradeScreen(),
  AttendanceScreen(),
  AnnouncmentScreen(),
  TableScreen(),
  FeesScreen(),
  MoreScreen(),
];
