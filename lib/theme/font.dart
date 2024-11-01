import 'package:flutter/material.dart';

extension FigmaDimention on double {
  double toFigmaHeight(double fontSize) {
    return this / fontSize;
  }
}

class AppTextsTheme extends ThemeExtension<AppTextsTheme> {
  static const _baseFamily = "FCIconic";

  final TextStyle display;
  final TextStyle h1;
  final TextStyle h2;
  final TextStyle h3;
  final TextStyle h4;
  final TextStyle h5;
  final TextStyle subtitle;
  final TextStyle body;
  final TextStyle bodySm;

  const AppTextsTheme._internal({
    required this.display,
    required this.h1,
    required this.h2,
    required this.h3,
    required this.h4,
    required this.h5,
    required this.subtitle,
    required this.body,
    required this.bodySm,
  });

  factory AppTextsTheme.mobile() => AppTextsTheme._internal(
        display: TextStyle(
          fontFamily: _baseFamily,
          fontWeight: FontWeight.bold,
          fontSize: 54,
          height: 70.0.toFigmaHeight(54),
        ),
        h1: TextStyle(
          fontFamily: _baseFamily,
          fontWeight: FontWeight.bold,
          fontSize: 42,
          height: 55.0.toFigmaHeight(42),
        ),
        h2: TextStyle(
          fontFamily: _baseFamily,
          fontWeight: FontWeight.bold,
          fontSize: 36,
          height: 45.0.toFigmaHeight(36),
        ),
        h3: TextStyle(
          fontFamily: _baseFamily,
          fontWeight: FontWeight.bold,
          fontSize: 28,
          height: 36.0.toFigmaHeight(28),
        ),
        h4: TextStyle(
          fontFamily: _baseFamily,
          fontWeight: FontWeight.bold,
          fontSize: 22,
          height: 28.0.toFigmaHeight(22),
        ),
        h5: TextStyle(
          fontFamily: _baseFamily,
          fontWeight: FontWeight.bold,
          fontSize: 20,
          height: 26.0.toFigmaHeight(20),
        ),
        subtitle: TextStyle(
          fontFamily: _baseFamily,
          fontWeight: FontWeight.bold,
          fontSize: 18,
          height: 23.0.toFigmaHeight(18),
        ),
        body: TextStyle(
          fontFamily: _baseFamily,
          fontWeight: FontWeight.normal,
          fontSize: 16,
          height: 20.0.toFigmaHeight(16),
        ),
        bodySm: TextStyle(
          fontFamily: _baseFamily,
          fontWeight: FontWeight.normal,
          fontSize: 14,
          height: 24.0.toFigmaHeight(14),
        ),
      );

  factory AppTextsTheme.tablet() => AppTextsTheme._internal(
        display: TextStyle(
          fontFamily: _baseFamily,
          fontWeight: FontWeight.bold,
          fontSize: 65,
          height: 85.0.toFigmaHeight(65),
        ),
        h1: TextStyle(
          fontFamily: _baseFamily,
          fontWeight: FontWeight.bold,
          fontSize: 48,
          height: 62.0.toFigmaHeight(48),
        ),
        h2: TextStyle(
          fontFamily: _baseFamily,
          fontWeight: FontWeight.bold,
          fontSize: 40,
          height: 52.0.toFigmaHeight(40),
        ),
        h3: TextStyle(
          fontFamily: _baseFamily,
          fontWeight: FontWeight.bold,
          fontSize: 32,
          height: 42.0.toFigmaHeight(32),
        ),
        h4: TextStyle(
          fontFamily: _baseFamily,
          fontWeight: FontWeight.bold,
          fontSize: 24,
          height: 31.0.toFigmaHeight(24),
        ),
        h5: TextStyle(
          fontFamily: _baseFamily,
          fontWeight: FontWeight.bold,
          fontSize: 22,
          height: 26.0.toFigmaHeight(22),
        ),
        subtitle: TextStyle(
          fontFamily: _baseFamily,
          fontWeight: FontWeight.bold,
          fontSize: 20,
          height: 23.0.toFigmaHeight(20),
        ),
        body: TextStyle(
          fontFamily: _baseFamily,
          fontWeight: FontWeight.normal,
          fontSize: 20,
          height: 20.0.toFigmaHeight(20),
        ),
        bodySm: TextStyle(
          fontFamily: _baseFamily,
          fontWeight: FontWeight.normal,
          fontSize: 18,
          height: 24.0.toFigmaHeight(18),
        ),
      );

  @override
  ThemeExtension<AppTextsTheme> copyWith() {
    return AppTextsTheme._internal(
      display: display,
      h1: h1,
      h2: h2,
      h3: h3,
      h4: h4,
      h5: h5,
      subtitle: subtitle,
      body: body,
      bodySm: bodySm,
    );
  }

  @override
  ThemeExtension<AppTextsTheme> lerp(
          covariant ThemeExtension<AppTextsTheme>? other, double t) =>
      this;
}
