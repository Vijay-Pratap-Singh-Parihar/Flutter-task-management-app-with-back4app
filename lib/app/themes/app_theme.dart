import 'package:flutter/material.dart';

import '../exports.dart';

final asLightTheme = lightTheme();
final asDarkTheme = darkTheme();

ThemeData lightTheme() {
  const Color primaryColor = AppColors.primaryColor;
  const Color secondaryColor = AppColors.secondaryColor;
  final ColorScheme colorScheme = const ColorScheme.light().copyWith(
    primary: primaryColor,
    secondary: secondaryColor,
    error: AppColors.errorColor,
  );
  final ThemeData base = ThemeData(
    brightness: Brightness.light,
    colorScheme: colorScheme,
    primaryColor: primaryColor,
    indicatorColor: Colors.white,
    splashColor: AppColors.splashColor,
    splashFactory: InkRipple.splashFactory,
    canvasColor: Colors.white,
    scaffoldBackgroundColor: Colors.white,
    buttonTheme: ButtonThemeData(
      colorScheme: colorScheme,
      textTheme: ButtonTextTheme.primary,
    ),
  );
  return base.copyWith(
    textTheme: base.textTheme,
    primaryTextTheme: base.primaryTextTheme,
  );
}

ThemeData darkTheme() {
  const Color primaryColor = Colors.grey;
  const Color secondaryColor = Colors.black;
  final ColorScheme colorScheme = const ColorScheme.dark().copyWith(
    primary: primaryColor,
    secondary: secondaryColor,
    error: AppColors.errorColor,
  );
  final ThemeData base = ThemeData(
    brightness: Brightness.dark,
    colorScheme: colorScheme,
    indicatorColor: Colors.white,
    canvasColor: AppColors.themeColor,
    scaffoldBackgroundColor: AppColors.themeColor,
    buttonTheme: ButtonThemeData(
      colorScheme: colorScheme,
      textTheme: ButtonTextTheme.primary,
    ),
  );
  return base.copyWith(
    textTheme: base.textTheme,
    primaryTextTheme: base.primaryTextTheme,
  );
}