import 'package:flutter/material.dart';

final flutterIssueTrackerTheme = ThemeData(
  colorScheme: colorScheme,
  primaryColor: colorScheme.primary,
  accentColor: Color(0xFF3573C5),
  backgroundColor: colorScheme.background,
  scaffoldBackgroundColor: colorScheme.background,
);

final ColorScheme colorScheme = ColorScheme.light(
    primary: Color(0xFF478DEB),
    primaryVariant: Color(0xFF3573C5),
    secondary: Color(0xFFea9f42),
    secondaryVariant: Color(0xFFCA8838),
    surface: Color(0xFFFFFFFF),
    background: Color(0xFFECF3F9),
    error: Color(0xFF000000),
    onPrimary: Color(0xFFFFFFFF),
    onSecondary: Color(0xFF000000),
    onSurface: Color(0xFF000000),
    onBackground: Color(0xFF000000),
    onError: Color(0xFFF72866),
    brightness: Brightness.light);
