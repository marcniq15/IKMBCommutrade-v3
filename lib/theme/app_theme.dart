import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  // --- 1. Color Palette ---
  // These are the official colors for your app.
  static const Color primaryColor = Color(0xFF2C3E50);       // Deep Blue-Grey for primary elements
  static const Color secondaryColor = Color(0xFF3498DB);    // Bright Blue for accents
  static const Color accentColor = Color(0xFFFD7A2E);         // Orange from your logo for special highlights
  static const Color lightBackgroundColor = Color(0xFFF4F6F8); // A very light grey for screen backgrounds
  static const Color surfaceColor = Colors.white;             // For cards, sheets, and dialogs

  // --- 2. Typography using Google Fonts ---
  // This defines the style for all text in your app.
  static final TextTheme _textTheme = TextTheme(
    displayLarge: GoogleFonts.poppins(fontSize: 28, fontWeight: FontWeight.bold, color: primaryColor),
    headlineMedium: GoogleFonts.poppins(fontSize: 22, fontWeight: FontWeight.bold, color: primaryColor),
    titleLarge: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.bold),
    bodyLarge: GoogleFonts.poppins(fontSize: 16),
    bodyMedium: GoogleFonts.poppins(fontSize: 14, color: Colors.black54),
    labelLarge: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.bold),
  );

  // --- 3. Default Widget Styles ---
  // This ensures widgets like AppBars and Buttons look the same everywhere.
  static final AppBarTheme _appBarTheme = AppBarTheme(
    backgroundColor: primaryColor,
    elevation: 0,
    iconTheme: const IconThemeData(color: Colors.white),
    titleTextStyle: GoogleFonts.poppins(
      color: Colors.white,
      fontSize: 20.0,
      fontWeight: FontWeight.bold,
    ),
  );

  static final ElevatedButtonThemeData _elevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: primaryColor,
      foregroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
      textStyle: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.bold),
    ),
  );

  static final InputDecorationTheme _inputDecorationTheme = InputDecorationTheme(
    filled: true,
    fillColor: Colors.white,
    contentPadding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12.0),
      borderSide: BorderSide.none,
    ),
    labelStyle: GoogleFonts.poppins(color: Colors.grey.shade600),
    hintStyle: GoogleFonts.poppins(color: Colors.grey.shade400),
  );

  // --- 4. The Light Theme Definition ---
  // This combines all the above styles into one ThemeData object.
  static ThemeData get lightTheme {
    return ThemeData(
      brightness: Brightness.light,
      primaryColor: primaryColor,
      scaffoldBackgroundColor: lightBackgroundColor,
      colorScheme: const ColorScheme.light(
        primary: primaryColor,
        secondary: secondaryColor,
        surface: surfaceColor,
        background: lightBackgroundColor,
      ),
      textTheme: _textTheme,
      appBarTheme: _appBarTheme,
      elevatedButtonTheme: _elevatedButtonTheme,
      inputDecorationTheme: _inputDecorationTheme,
    );
  }
}