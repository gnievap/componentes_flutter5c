import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  // Declaraciones de color
  static const mainColor = Color.fromARGB(255, 4, 4, 61);
  static const backColor = Color.fromARGB(255, 222, 231, 244);

  // Declaraciones del tema claro
  static final ThemeData lightTheme = ThemeData.light().copyWith(
    scaffoldBackgroundColor: backColor,
    appBarTheme: const AppBarTheme(color: mainColor),
    textTheme: TextTheme(
      headlineLarge: GoogleFonts.acme(
        color: mainColor,
        fontSize: 25.0,
        fontWeight: FontWeight.w500,
        decoration: TextDecoration.underline,
        decorationColor: mainColor,
        decorationStyle: TextDecorationStyle.wavy,
        decorationThickness: 3.0,
        fontStyle: FontStyle.italic,
      ),
      //bodySmall:
    ),
  );
}
