import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class GlobalState extends ChangeNotifier {
  String theme = 'LIGHT';

  Future<void> initialSet() async {
    String? themeMode = await SharedPreferencesHelper.getThemeMode();
    theme = themeMode ?? "LIGHT";
    await SharedPreferencesHelper.setThemeMode(themeMode ?? "LIGHT");
  }

  void changeTheme() async {
    if (theme == 'LIGHT') {
      theme = "DARK";
      await SharedPreferencesHelper.setThemeMode('DARK');
    } else {
      theme = 'LIGHT';
      await SharedPreferencesHelper.setThemeMode('LIGHT');
    }
    notifyListeners();
  }
}

class SharedPreferencesHelper {
  // Theme
  static Future<String?> getThemeMode() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString('THEME');
  }

  static Future<bool> setThemeMode(String value) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setString("THEME", value);
  }
}
