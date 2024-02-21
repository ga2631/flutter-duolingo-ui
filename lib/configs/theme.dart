import 'package:flutter/material.dart';
import './_colors.dart';

ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  fontFamily: 'Nunito',
  colorScheme: const ColorScheme(
    brightness: Brightness.dark,
    primary: colorFeatherGreen,
    onPrimary: colorText,
    secondary: colorMacawUpper,
    onSecondary: colorText,
    background: colorBackground,
    error: colorText,
    onError: colorText,
    onBackground: colorText,
    surface: colorBackground,
    onSurface: colorText,
  ),
);
