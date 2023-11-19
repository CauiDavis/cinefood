import 'package:flutter/material.dart';

import 'custom_colors.dart';

class GlobalTheme {
  static final ThemeData themeData = ThemeData(
    fontFamily: 'Roboto',
    scaffoldBackgroundColor: CustomColors.primaryColor,
    primarySwatch: Colors.blue,
    iconTheme: const IconThemeData(color: CustomColors.secondaryColor),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: CustomColors.tertiaryColor,
        selectedItemColor: CustomColors.quaternaryColor,
        unselectedItemColor: CustomColors.secondaryColor,
        type: BottomNavigationBarType.fixed,
        selectedLabelStyle: TextStyle(
          fontSize: 12,
        ),
        unselectedLabelStyle: TextStyle(
          fontSize: 12,
        )),
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
