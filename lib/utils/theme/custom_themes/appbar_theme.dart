import 'package:flutter/material.dart';

class AppAppBarTheme {
  AppAppBarTheme._();

  static AppBarTheme lightAppBarTheme = const AppBarTheme(
      elevation: 0,
      color: Colors.transparent,
      iconTheme: IconThemeData(
        color: Colors.black,
        size: 24.0,
      ),
      scrolledUnderElevation: 0,
      centerTitle: false,
      // backgroundColor: Colors.transparent,
      surfaceTintColor: Colors.transparent,
      titleTextStyle: TextStyle(
          fontSize: 18, fontWeight: FontWeight.w600, color: Colors.black),
      actionsIconTheme: IconThemeData(
        color: Colors.black,
        size: 24.0,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(16.0),
        ),
      ));

  static AppBarTheme darkAppBarTheme = const AppBarTheme(
    elevation: 0,
    color: Colors.green,
    iconTheme: IconThemeData(
      color: Colors.black,
      size: 24.0,
    ),
    scrolledUnderElevation: 0,
    centerTitle: false,
    // backgroundColor: Colors.transparent,
    surfaceTintColor: Colors.transparent,
    titleTextStyle: TextStyle(
        fontSize: 18, fontWeight: FontWeight.w600, color: Colors.black),
    actionsIconTheme: IconThemeData(
      color: Colors.black,
      size: 24.0,
    ),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(
        bottom: Radius.circular(16.0),
      ),
    ),
  );
}
