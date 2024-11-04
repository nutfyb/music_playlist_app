import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    colorScheme: const ColorScheme.light(
      primary: Color.fromARGB(255, 255, 193, 7),
      secondary: Color.fromARGB(255, 0, 0, 0),
      tertiary: Color.fromARGB(255, 33, 72, 99),
      surface: Color.fromARGB(255, 212, 212, 214),
      background: Color.fromARGB(255, 255, 255, 255),
    ),
    scaffoldBackgroundColor: const Color.fromARGB(255, 255, 255, 255),
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.white,
      elevation: 0,
    ),
    cardTheme: CardTheme(
      color: Colors.grey[100],
      elevation: 2,
    ),
    textTheme: const TextTheme(
      headlineLarge: TextStyle(
        fontSize: 32,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
      headlineMedium: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.w600,
        color: Colors.black,
      ),
      headlineSmall: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w600,
        color: Colors.black,
      ),
      bodyLarge: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.normal,
        color: Colors.black,
      ),
      bodyMedium: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.normal,
        color: Colors.black,
      ),
      bodySmall: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.normal,
        color: Colors.black,
      ),
    ),
    iconTheme: const IconThemeData(
      color: Color.fromARGB(255, 130, 131, 162),
    ),
    primaryIconTheme: const IconThemeData(
      color: Color.fromARGB(255, 255, 193, 7),
    ),
    primaryColor: const Color.fromARGB(255, 255, 193, 7),
  );

  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    colorScheme: const ColorScheme.dark(
      primary: Color.fromARGB(255, 255, 193, 7),
      secondary: Color.fromARGB(255, 255, 255, 255),
      tertiary: Color.fromARGB(255, 33, 72, 99),
      surface: Color.fromARGB(255, 48, 48, 48),
      background: Color.fromARGB(255, 18, 18, 18),
    ),
    scaffoldBackgroundColor: const Color.fromARGB(255, 18, 18, 18),
    appBarTheme: const AppBarTheme(
      backgroundColor: Color.fromARGB(255, 18, 18, 18),
      elevation: 0,
    ),
    cardTheme: CardTheme(
      color: Colors.grey[900],
      elevation: 2,
    ),
    textTheme: const TextTheme(
      headlineLarge: TextStyle(
        fontSize: 32,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
      headlineMedium: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.w600,
        color: Colors.white,
      ),
      headlineSmall: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w600,
        color: Colors.white,
      ),
      bodyLarge: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.normal,
        color: Colors.white,
      ),
      bodyMedium: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.normal,
        color: Colors.white,
      ),
      bodySmall: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.normal,
        color: const Color.fromARGB(255, 133, 157, 171),
      ),
    ),
    iconTheme: const IconThemeData(
      color: Colors.white,
    ),
  );
}
