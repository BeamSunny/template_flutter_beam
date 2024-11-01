import 'package:flutter/material.dart';

class AppColorsTheme extends ThemeExtension<AppColorsTheme> {
  // actual colors used throughout the app:
  final Color primaryMain;
  final Color primarySecond;
  final Color primaryBorder;
  final Color primaryHover;
  final Color primaryPressed;
  final Color secondaryMain;
  final Color secondarySecond;
  final Color secondaryBorder;
  final Color stateInfo;
  final Color stateInfoSecond;
  final Color stateSuccess;
  final Color stateSuccessSecond;
  final Color stateWarning;
  final Color stateWarningSecond;
  final Color stateError;
  final Color stateErrorSecond;
  final Color black;
  final Color black1;
  final Color black2;
  final Color black3;
  final Color black4;
  final Color text;
  final Color background;
  final Color gray1;
  final Color gray2;
  final Color gray3;
  final Color gray4;
  final Color gray5;
  final Color gray6;
  final Color white;

  // private constructor (use factories below instead):
  const AppColorsTheme._internal({
    required this.primaryMain,
    required this.primarySecond,
    required this.primaryBorder,
    required this.primaryHover,
    required this.primaryPressed,
    required this.secondaryMain,
    required this.secondarySecond,
    required this.secondaryBorder,
    required this.stateInfo,
    required this.stateInfoSecond,
    required this.stateSuccess,
    required this.stateSuccessSecond,
    required this.stateWarning,
    required this.stateWarningSecond,
    required this.stateError,
    required this.stateErrorSecond,
    required this.black,
    required this.black1,
    required this.black2,
    required this.black3,
    required this.black4,
    required this.text,
    required this.background,
    required this.gray1,
    required this.gray2,
    required this.gray3,
    required this.gray4,
    required this.gray5,
    required this.gray6,
    required this.white,
  });

  // factory for light mode:
  factory AppColorsTheme.light() {
    return const AppColorsTheme._internal(
      primaryMain: Color(0xFF03287E),
      primarySecond: Color(0xFFE6EAF3),
      primaryBorder: Color(0xFF425E9E),
      primaryHover: Color(0xFF1142B6),
      primaryPressed: Color(0xFFCBDBFC),
      secondaryMain: Color(0xFF3685E4),
      secondarySecond: Color(0xFF667085),
      secondaryBorder: Color(0xFFFFA5EB),
      stateInfo: Color(0xFF2F80ED),
      stateInfoSecond: Color(0xFFE7F0FD),
      stateSuccess: Color(0xFF27AE60),
      stateSuccessSecond: Color(0xFFE7FDE7),
      stateWarning: Color(0xFFF2C507),
      stateWarningSecond: Color(0xFFFFF9E5),
      stateError: Color(0xFFE4260F),
      stateErrorSecond: Color(0xFFFEE9E6),
      black: Color(0xFF000000),
      black1: Color(0xFF101010),
      black2: Color(0xFF282828),
      black3: Color(0xFF3C3C3C),
      black4: Color(0xFF505050),
      text: Color(0xFF000000),
      background: Color(0xFFFFFFFF),
      gray1: Color(0xFFC3C3C3),
      gray2: Color(0xFFD7D7D7),
      gray3: Color(0xFFEBEBEB),
      gray4: Color(0xFFF5F5F5),
      gray5: Color(0xFFC5C5C5),
      gray6: Color(0xFFB1B1B1),
      white: Color(0xFFFFFFFF),
    );
  }

  // factory for dark mode:
  factory AppColorsTheme.dark() {
    return const AppColorsTheme._internal(
      primaryMain: Color.fromARGB(255, 162, 255, 0),
      primarySecond: Color(0xFFE6EAF3),
      primaryBorder: Color(0xFF425E9E),
      primaryHover: Color(0xFF1142B6),
      primaryPressed: Color(0xFFCBDBFC),
      secondaryMain: Color(0xFF3685E4),
      secondarySecond: Color(0xFF667085),
      secondaryBorder: Color(0xFFFFA5EB),
      stateInfo: Color(0xFF2F80ED),
      stateInfoSecond: Color(0xFFE7F0FD),
      stateSuccess: Color(0xFF27AE60),
      stateSuccessSecond: Color(0xFFE7FDE7),
      stateWarning: Color(0xFFF2C507),
      stateWarningSecond: Color(0xFFFFF9E5),
      stateError: Color(0xFFE4260F),
      stateErrorSecond: Color(0xFFFEE9E6),
      black: Color(0xFF000000),
      black1: Color(0xFF101010),
      black2: Color(0xFF282828),
      black3: Color(0xFF3C3C3C),
      black4: Color(0xFF505050),
      text: Color(0xFF000000),
      background: Color(0xFFFFFFFF),
      gray1: Color(0xFFC3C3C3),
      gray2: Color(0xFFD7D7D7),
      gray3: Color(0xFFEBEBEB),
      gray4: Color(0xFFF5F5F5),
      gray5: Color(0xFFC5C5C5),
      gray6: Color(0xFFB1B1B1),
      white: Color(0xFFFFFFFF),
    );
  }

  @override
  ThemeExtension<AppColorsTheme> copyWith({bool? lightMode}) {
    if (lightMode == null || lightMode == true) {
      return AppColorsTheme.light();
    }
    return AppColorsTheme.dark();
  }

  @override
  ThemeExtension<AppColorsTheme> lerp(
          covariant ThemeExtension<AppColorsTheme>? other, double t) =>
      this;
}
