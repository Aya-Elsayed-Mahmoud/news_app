import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Color(0xFF39A552);
  static const Color white = Color(0xFFFFFFFF);
  static const Color black = Color(0xFF303030);
  static const Color gray = Color(0xFF79828B);
  static const Color navy = Color(0xFF4F5A69);
  static ThemeData lightTheme = ThemeData(
    primaryColor: primary,
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: AppBarTheme(
        backgroundColor: primary,
        centerTitle: true,
        foregroundColor: white,
        titleTextStyle: TextStyle(
          color: white,
          fontWeight: FontWeight.w400,
          fontSize: 22,
        ),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.horizontal(
                right: Radius.circular(20), left: Radius.circular(20)))),
    textTheme: TextTheme(
        titleLarge:
            TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: white),
        titleSmall:
            TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: black)),
  );
}
