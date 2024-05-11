import 'package:flutter/material.dart';

class ThemeDataStyle {
  static ThemeData light = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
   colorScheme: ColorScheme.light(
      primary: Colors.green,
    ),
  );

  static ThemeData dark = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    colorScheme : ColorScheme.dark(
      background: Colors.grey.shade900,
      primary: Colors.deepPurple.shade500,
      secondary: Colors.deepPurple.shade700,
    ),
  );
}
