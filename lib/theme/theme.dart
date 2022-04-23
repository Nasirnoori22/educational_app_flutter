import 'package:educational_app_flutter/constants/ColorConstants.dart';
import 'package:flutter/material.dart';

class Themes {
  static ThemeData lightTheme = ThemeData(
    primarySwatch: Colors.blue,
    brightness: Brightness.light,
    appBarTheme: AppBarTheme(backgroundColor: Color(0xffffffff), elevation: 0),
    inputDecorationTheme: InputDecorationTheme(
      border: OutlineInputBorder(
          borderSide: BorderSide.none, borderRadius: BorderRadius.circular(10)),
      hintStyle: TextStyle(
        fontSize: 14,
      ),
    ),
    textTheme: TextTheme(
      headline1: TextStyle(
          letterSpacing: -1.5,
          fontSize: 35,
          color: Colors.black,
          fontWeight: FontWeight.bold),
      headline2: TextStyle(
          letterSpacing: -1.0,
          fontSize: 30,
          color: Colors.black,
          fontWeight: FontWeight.bold),
      headline3: TextStyle(
          letterSpacing: -1.0,
          fontSize: 28,
          color: Colors.black,
          fontWeight: FontWeight.bold),
      headline4: TextStyle(
          letterSpacing: -1.0,
          color: Colors.black,
          fontSize: 26,
          fontWeight: FontWeight.w600),
      headline5: TextStyle(
          letterSpacing: -1.0,
          color: Colors.black,
          fontSize: 24,
          fontWeight: FontWeight.w500),
      headline6: TextStyle(
          color: Colors.black, fontSize: 18, fontWeight: FontWeight.w500),
      subtitle1: TextStyle(
          color: Colors.black, fontSize: 16, fontWeight: FontWeight.w500),
      subtitle2: TextStyle(
          color: Colors.black, fontSize: 14, fontWeight: FontWeight.w500),
      bodyText1: TextStyle(
          color: Colors.grey.shade700,
          fontSize: 16,
          fontWeight: FontWeight.w400),
      bodyText2: TextStyle(
          color: Colors.grey.shade600,
          fontSize: 14,
          fontWeight: FontWeight.w400),
      button: TextStyle(
          color: Colors.white, fontSize: 14, fontWeight: FontWeight.w600),
      caption: TextStyle(
          color: Colors.grey.shade800,
          fontSize: 12,
          fontWeight: FontWeight.w400),
      overline: TextStyle(
          color: Colors.grey.shade700,
          fontSize: 10,
          fontWeight: FontWeight.w400,
          letterSpacing: -0.5),
    ),
    buttonTheme: ButtonThemeData(
      buttonColor: Color(0xffb28d9b),
      textTheme: ButtonTextTheme.primary,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
    ),
    bottomAppBarTheme: BottomAppBarTheme(
      color: Color(0xfff1e5de),
      elevation: 0,
    ),
    cardTheme: CardTheme(
      elevation: 0,
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
    ),
  );
}
