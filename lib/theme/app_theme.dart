import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  // Declaraciones de color
  static const mainColor = Color.fromARGB(255, 4, 4, 61);
  static const accentColor = Color.fromARGB(255, 33, 41, 112);
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
        decorationStyle: TextDecorationStyle.double,
        decorationThickness: 1.5,
        fontStyle: FontStyle.italic,
      ),
      //Textos muy pequeños
      bodySmall: GoogleFonts.montserrat(
        color: accentColor,
        fontSize: 18.5,
        fontWeight: FontWeight.w500,
        fontStyle: FontStyle.italic,
      ),
    ),
  );
}
