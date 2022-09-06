import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();

  static final Color _lightPrimaryColor = Colors.blueGrey.shade50;
  static final Color _lightPrimaryVariantColor = Colors.blueGrey.shade800;
  static final Color _lightOnPrimaryColor = Colors.blueGrey.shade200;
  static const Color _lightTextColorPrimary = Colors.black;
  static final Color _appbarColorLight = Colors.blue;

  static final Color _darkPrimaryColor = Colors.blueGrey.shade900;
  static const Color _darkPrimaryVariantColor = Colors.black;
  static final Color _darkOnPrimaryColor = Colors.blueGrey.shade300;
  static const Color _darkTextColorPrimary = Colors.white;
  static final Color _appbarColorDark = Colors.blueGrey.shade800;

  static const Color _iconColor = Colors.white;

  static const Color _accentColorDark = Color.fromRGBO(74, 217, 217, 1);
  static Color gradientColorA = Color(0xFFFFFFFF);
  static Color gradientColorB = Color(0xFF000000);

  ThemeData getTheme(String themeName) {
    if (themeName == 'darkTheme') {
      gradientColorA = Color(0xFFFFFFFF);
      gradientColorB = Color(0xFF000000);
      return darkTheme;
    } else if (themeName == 'lightTheme') {
      gradientColorA = Color(0xFF000000);
      gradientColorB = Color(0xFFFFFFFF);
      return lightTheme;
    } else {
      return lightTheme;
    }
  }

  static const TextStyle _lightHeadingText = TextStyle(
    color: _lightTextColorPrimary,
    fontFamily: "Roboto",
    fontSize: 20,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle _lightBodyText = TextStyle(
      color: _lightTextColorPrimary,
      fontFamily: "Roboto",
      fontWeight: FontWeight.bold,
      fontSize: 16);

  static final TextTheme _lightTextTheme = TextTheme(
      headline1: _lightHeadingText.copyWith(fontSize: 36),
      headline2: _lightHeadingText.copyWith(fontSize: 24),
      headline3: _lightHeadingText.copyWith(fontSize: 22),
      headline4: _lightHeadingText.copyWith(fontSize: 20),
      headline5: _lightHeadingText.copyWith(fontSize: 18),
      headline6: _lightHeadingText.copyWith(fontSize: 16),
      bodyText1: _lightBodyText,
      bodyText2: _lightBodyText);

  static final TextStyle _darkThemeHeadingTextStyle =
      _lightHeadingText.copyWith(color: _darkTextColorPrimary);

  static final TextStyle _darkThemeBodyeTextStyle =
      _lightBodyText.copyWith(color: _darkTextColorPrimary);

  static final TextTheme _darkTextTheme = TextTheme(
    headline1: _darkThemeHeadingTextStyle.copyWith(fontSize: 36),
    headline2: _darkThemeHeadingTextStyle.copyWith(fontSize: 24),
    headline3: _darkThemeHeadingTextStyle.copyWith(fontSize: 22),
    headline4: _darkThemeHeadingTextStyle.copyWith(fontSize: 20),
    headline5: _darkThemeHeadingTextStyle.copyWith(fontSize: 18),
    headline6: _darkThemeHeadingTextStyle.copyWith(fontSize: 16),
    bodyText1: _darkThemeBodyeTextStyle,
  );

  static final InputDecorationTheme _inputDecorationTheme =
      InputDecorationTheme(
          floatingLabelStyle: TextStyle(color: _lightPrimaryVariantColor),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(color: _lightPrimaryVariantColor)),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)));

  static final InputDecorationTheme _darkinputDecorationTheme =
      InputDecorationTheme(
          floatingLabelStyle: const TextStyle(color: Colors.white),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(color: Colors.white)),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)));

  static final ThemeData lightTheme = ThemeData(
      inputDecorationTheme: _inputDecorationTheme,
      scaffoldBackgroundColor: _lightPrimaryColor,
      appBarTheme: AppBarTheme(
          color: _appbarColorLight,
          iconTheme: const IconThemeData(color: _iconColor)),
      bottomAppBarColor: _appbarColorLight,
      colorScheme: ColorScheme.light(
          primary: _lightPrimaryColor,
          onPrimary: _lightOnPrimaryColor,
          secondary: _accentColorDark,
          primaryContainer: _lightPrimaryVariantColor),
      textTheme: _lightTextTheme);

  static final ThemeData darkTheme = ThemeData(
      inputDecorationTheme: _darkinputDecorationTheme,
      scaffoldBackgroundColor: _darkPrimaryColor,
      appBarTheme: AppBarTheme(
          color: _appbarColorDark,
          iconTheme: const IconThemeData(color: _iconColor)),
      bottomAppBarColor: _appbarColorDark,
      colorScheme: ColorScheme.dark(
        primary: _darkPrimaryColor,
        secondary: _accentColorDark,
        onPrimary: _darkOnPrimaryColor,
        primaryContainer: _darkPrimaryVariantColor,
      ),
      textTheme: _darkTextTheme);
}
