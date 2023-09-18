// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'Core/AppTextStyles.dart';

class AppThemes{
  static final lightTheme = ThemeData (
    backgroundColor: Colors.white60,
    cardColor: Colors.white,
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: AppStyles.azulAcizentado
    ),
    inputDecorationTheme: const InputDecorationTheme(
      labelStyle: TextStyle(color: Colors.black)
    ),
    textTheme: const TextTheme(headline1: TextStyle(color: Colors.black) ),
    primaryTextTheme: const TextTheme(
      headline1: TextStyle( color: Colors.black ),
      subtitle1: TextStyle( color: Colors.black ),
      subtitle2: TextStyle( color: Color(0xff191919) )
    ),
    appBarTheme: AppBarTheme(backgroundColor: AppStyles.azulAcizentado),
    bottomAppBarColor: Colors.white,
    iconTheme: const IconThemeData(color: Colors.black87),
    brightness: Brightness.light,
  );
}