import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData lightTheme=ThemeData(
    brightness: Brightness.light,
    scaffoldBackgroundColor: Colors.white,
    colorScheme: ColorScheme.light(
      primary:Color(0xFF1A1A1A) ,
      surface: Colors.white
    ),
    fontFamily: 'GeneralSans',
  );
}