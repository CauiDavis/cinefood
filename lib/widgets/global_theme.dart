import 'package:flutter/material.dart';

class GlobalTheme {
  static final ThemeData themeData = ThemeData(
    scaffoldBackgroundColor: const Color(0x50170D0D),
    primarySwatch: Colors.blue,
    iconTheme: const IconThemeData(color: Color(0xFFE1E0D7)),
    bottomAppBarTheme: const BottomAppBarTheme(color: Color(0xFF432727)),
    appBarTheme: const AppBarTheme(
      backgroundColor: Color(0xFF432727),
    ),
    elevatedButtonTheme: const ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: MaterialStatePropertyAll<Color>(Color(0xFF432727)),
        shape: MaterialStatePropertyAll<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
        ),
      ),
    ),
  );
}
