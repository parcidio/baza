import 'package:flutter/material.dart';

class AppTextButtonTheme {
  AppTextButtonTheme._();

  static TextButtonThemeData lightTextTheme = TextButtonThemeData(
      style: TextButton.styleFrom(
          textStyle: const TextStyle(
    color: Colors.green,
  )));

  static TextButtonThemeData darkTextTheme = TextButtonThemeData(
      style: TextButton.styleFrom(
          textStyle: const TextStyle(
    color: Colors.green,
  )));
}
