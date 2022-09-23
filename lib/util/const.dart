import 'package:flutter/material.dart';

class Constants {
  static String appName = "Clone Codepen UI";

  //Colors for theme
  static Color darkPrimary = Color.fromARGB(255, 15, 16, 19);
  static Color darkAccent = Colors.white;
  static Color darkBG = Color.fromARGB(255, 15, 16, 19);

  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    backgroundColor: darkBG,
    primaryColor: darkPrimary,
    accentColor: darkAccent,
    scaffoldBackgroundColor: darkBG,
    cursorColor: darkAccent,
    appBarTheme: AppBarTheme(
      elevation: 0,
      textTheme: TextTheme(
        headline6: TextStyle(
          color: Color.fromARGB(255, 56, 57, 66),
          fontSize: 18.0,
          fontWeight: FontWeight.w800,
        ),
      ),
    ),
  );
}
