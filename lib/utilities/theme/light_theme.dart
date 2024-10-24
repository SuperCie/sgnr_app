import 'package:flutter/material.dart';

ThemeData lightMode = ThemeData(
  brightness: Brightness.light,
  colorScheme: ColorScheme.light(
      surface: const Color(0xFFECEFF1),
      primary: const Color(0xFFCFD8DC),
      secondary: Colors.white,
      inversePrimary: Colors.grey.shade700),
);
