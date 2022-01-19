import 'package:flutter/material.dart';

final lightThemData = ThemeData(
  colorScheme: const ColorScheme(
    primary: Color(0xffF7A102),
    background: Colors.white,
    brightness: Brightness.light,
    error: Color(0xffFF266F),
    onBackground: Colors.white,
    onError: Colors.white,
    onPrimary: Colors.white,
    onSecondary: Colors.white,
    onSurface: Colors.white,
    primaryVariant: Colors.white,
    secondary: Color(0xff5292C5),
    secondaryVariant: Color(0xff0271B3),
    surface: Colors.white,
  ),
  scaffoldBackgroundColor: Colors.white,
  textButtonTheme: TextButtonThemeData(
    style: TextButton.styleFrom(
      primary: const Color(0xFF0271B3),
      onSurface: const Color(0xff949494),
      textStyle: const TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w400,
      ),
    ),
  ),
  dividerTheme: DividerThemeData(
      color: const Color(0xff5292C5).withOpacity(0.5), thickness: 0.5),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 2,
      onSurface: Colors.orange,
      padding: const EdgeInsets.symmetric(
        horizontal: 25,
        vertical: 14,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          2,
        ),
      ),
      textStyle: const TextStyle(
        fontWeight: FontWeight.w600,
        fontSize: 16,
        color: Colors.white,
      ),
    ),
  ),
  textTheme: const TextTheme(
    headline2: TextStyle(
        fontSize: 24, fontWeight: FontWeight.w600, color: Colors.black),
    headline3: TextStyle(
        fontSize: 26, fontWeight: FontWeight.w600, color: Colors.black),
    headline4: TextStyle(
        fontSize: 19, fontWeight: FontWeight.w500, color: Colors.black38),
    headline5: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w600,
      color: Color(0xff585858),
    ),
    headline6: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w600,
      color: Colors.black87,
    ),
    bodyText1: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        color: Colors.black87,
        height: 1.6),
    bodyText2: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: Colors.black54,
    ),
    caption: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w400,
      color: Colors.white,
    ),
    button: TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w400,
      color: Color(0xff0271B3),
    ),
  ),
  fontFamily: 'roboto',
);
final darkThemeData = ThemeData(
  colorScheme: const ColorScheme(
    primary: Color(0xffF7A102),
    background: Colors.white,
    brightness: Brightness.dark,
    error: Color(0xffFF266F),
    onBackground: Colors.white,
    onError: Colors.white,
    onPrimary: Colors.white,
    onSecondary: Colors.white,
    onSurface: Colors.white,
    primaryVariant: Colors.white,
    secondary: Color(0xff2671B2),
    secondaryVariant: Color(0xff246DA8),
    surface: Colors.white,
  ),
  scaffoldBackgroundColor: const Color(0xff0F0F0F),
  textButtonTheme: TextButtonThemeData(
    style: TextButton.styleFrom(
      primary: const Color(0xFF246DA8),
      onSurface: const Color(0xff949494),
      textStyle: const TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w400,
      ),
    ),
  ),
  dividerTheme: DividerThemeData(
      color: const Color(0xff246DA8).withOpacity(0.5), thickness: 0.5),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 2,
      onSurface: Colors.orange,
      padding: const EdgeInsets.symmetric(
        horizontal: 25,
        vertical: 14,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          2,
        ),
      ),
      textStyle: const TextStyle(
        fontWeight: FontWeight.w600,
        fontSize: 16,
        color: Colors.white,
      ),
    ),
  ),
  textTheme: const TextTheme(
    headline2: TextStyle(
        fontSize: 24, fontWeight: FontWeight.w600, color: Color(0xffB7B7B7)),
    headline3: TextStyle(
        fontSize: 26, fontWeight: FontWeight.w600, color: Color(0xff36B785)),
    headline4: TextStyle(
        fontSize: 19, fontWeight: FontWeight.w500, color: Colors.white70),
    headline5: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w600,
      color: Color(0xff36B785),
    ),
    headline6: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w600,
      color: Colors.white70,
    ),
    bodyText1: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        color: Color(0xffB7B7B7),
        height: 1.6),
    bodyText2: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: Color(0xffB7B7B7),
    ),
    caption: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w400,
      color: Colors.black,
    ),
    button: TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w400,
      color: Color(0xff0271B3),
    ),
  ),
  fontFamily: 'roboto',
);
