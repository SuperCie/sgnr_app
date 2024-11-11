import 'package:flutter/material.dart';

ThemeData darkMode = ThemeData(
  brightness: Brightness.dark,
  colorScheme: ColorScheme.dark(
      surface: Colors.grey.shade900,
      primary: const Color(0xFFCFD8DC),
      secondary: Colors.white,
      inversePrimary: Colors.grey.shade700),
);
