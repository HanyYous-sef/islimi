import 'package:flutter/material.dart';

class MyThemesData {
  static Color standerdColor = const Color(0xffB7935F);
  static Color BlackColor = const Color(0xff242424);
  static Color YellowColor = const Color(0xffA98d2E);

  static Color standerdColorDark = const Color(0xff141B30);

  //-----------------------------------------------------
  static final ThemeData lightTheme = ThemeData(
      primaryColor: standerdColor,
      canvasColor: standerdColor,
      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Color(0xff242424)),
      ),
      textTheme: TextTheme(
          headline1: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: BlackColor,
          ),
          headline2: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w400,
            color: BlackColor,
          )
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        selectedItemColor: BlackColor,
        unselectedItemColor: Colors.white,
  )
      );
  //-----------------------------------------------------

  static final ThemeData darkTheme = ThemeData(
      primaryColor: standerdColorDark,
      canvasColor: standerdColorDark,
      appBarTheme: AppBarTheme(
        iconTheme: IconThemeData(color: BlackColor),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      textTheme: TextTheme(
          headline1: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: YellowColor,
          ),
          headline2: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w400,
            color: YellowColor,
          ),
          headline3: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w400,
            color: Colors.white,
          )),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        selectedItemColor: YellowColor,
        unselectedItemColor: Colors.white,
      ));
}