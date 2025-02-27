import 'package:flutter/material.dart';

class AppTheme {
  static const Color white = Color(0xffffffff);
  static const Color black = Color(0xff111111);
  static const Color yellow = Color(0xffFEBC11);
  static const Color green = Color(0xff60CB1E);
  static const Color grey = Color(0xff6B6B6B);
  static const Color backGround = Color(0xff959595);
  static ThemeData darkTheme = ThemeData(
    textTheme: const TextTheme(
        titleLarge: TextStyle(
      color: white,
      fontWeight: FontWeight.bold,
      fontSize: 24,
    ),
        titleSmall: TextStyle(
      color: white,
      fontWeight: FontWeight.w400,
      fontSize: 14,
    ),
        titleMedium: TextStyle(
      color: black,
      fontWeight: FontWeight.bold,
      fontSize: 18,
    ),
        labelSmall: TextStyle(
      color: grey,
      fontWeight: FontWeight.bold,
      fontSize: 16,
    ),

    ),

  );
}
