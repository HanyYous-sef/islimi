import 'package:flutter/material.dart';

class AppProvider extends ChangeNotifier {
  String AppLangauge = 'ar';
  ThemeMode themeMode = ThemeMode.light;

  void ChangeAppLangauge(String AppLangaugeCode) {
    AppLangauge = AppLangaugeCode;
    notifyListeners(); //update state in all screen
  }

  void ChangeAppTheme(ThemeMode theme) {
    themeMode = theme;
    notifyListeners(); //update state in all screen
  }

  String ChangeBackGround() {
    return themeMode == ThemeMode.light
        ? 'asstes/images/main_background.png'
        : 'asstes/images/bg_dark.png';
  }
}
