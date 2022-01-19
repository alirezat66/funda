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
      primary: const Color(0xff5292C5),
      onSurface: const Color(0xff949494),
      textStyle: const TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w400,
      ),
    ),
  ),
  iconTheme: const IconThemeData(color: Colors.black87),
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
        fontSize: 24, fontWeight: FontWeight.w600, color: Color(0xff444444)),
    headline3: TextStyle(
        fontSize: 26, fontWeight: FontWeight.w600, color: Color(0xff444444)),
    headline4: TextStyle(
        fontSize: 19, fontWeight: FontWeight.w500, color: Color(0xff666666)),
    headline5: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w600,
      color: Color(0xff666666),
    ),
    headline6: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w600,
      color: Color(0xff888888),
    ),
    bodyText1: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        color: Color(0xff888888),
        height: 1.6),
    bodyText2: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: Color(0xff666666),
    ),
    caption: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w400,
      color: Colors.white,
    ),
    button: TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w400,
      color: Color(0xff5292C5),
    ),
  ),
  fontFamily: 'roboto',
);
final darkThemeData = ThemeData(
  colorScheme: const ColorScheme(
    primary: Color(0xffF7A102),
    background: Color(0xff0F0F0F),
    brightness: Brightness.dark,
    error: Color(0xffFF266F),
    onBackground: Color(0xff0F0F0F),
    onError: Color(0xff0F0F0F),
    onPrimary: Color(0xff0F0F0F),
    onSecondary: Color(0xff0F0F0F),
    onSurface: Color(0xff0F0F0F),
    primaryVariant: Color(0xff0F0F0F),
    secondary: Color(0xff5BA4DE),
    secondaryVariant: Color(0xff246DA8),
    surface: Color(0xffF7A102),
  ),
  iconTheme: const IconThemeData(color: Colors.white),
  scaffoldBackgroundColor: const Color(0xff0F0F0F),
  textButtonTheme: TextButtonThemeData(
    style: TextButton.styleFrom(
      primary: const Color(0xFF5BA4DE),
      onSurface: const Color(0xff949494),
      textStyle: const TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w400,
      ),
    ),
  ),
  dividerTheme: DividerThemeData(
      color: const Color(0xff5BA4DE).withOpacity(0.5), thickness: 0.5),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 2,
      onSurface: const Color(0xffF7A102),
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
        fontSize: 24, fontWeight: FontWeight.w600, color: Colors.white,),
    headline3: TextStyle(
        fontSize: 26, fontWeight: FontWeight.w600, color: Colors.white),
    headline4: TextStyle(
        fontSize: 19, fontWeight: FontWeight.w500, color: Color(0xffC9C9C9)),
    headline5: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w600,
      color: Color(0xffAdAdAd),
    ),
    headline6: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w600,
      color: Colors.white,
    ),
    bodyText1: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        color: Colors.white,
        height: 1.6),
    bodyText2: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: Color(0xffC9C9C9),
    ),
    caption: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w400,
      color: Colors.white,
    ),
    button: TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w400,
      color: Color(0xff5BA4DE),
    ),
  ),
  fontFamily: 'roboto',
);
