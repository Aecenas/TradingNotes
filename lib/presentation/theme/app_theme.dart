import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  const AppTheme._();

  static const Color brandPrimary = Color(0xFF0A7FA6);
  static const Color brandSecondary = Color(0xFF21BFD8);
  static const Color brandAccent = Color(0xFF0A8A6A);

  static const Color bgCanvas = Color(0xFFF1F7FA);
  static const Color bgMuted = Color(0xFFE6EFF5);
  static const Color inkStrong = Color(0xFF102436);
  static const Color inkMuted = Color(0xFF5B6C7B);

  static ThemeData light() {
    final scheme = ColorScheme.fromSeed(
      seedColor: brandPrimary,
      brightness: Brightness.light,
      primary: brandPrimary,
      secondary: brandSecondary,
      tertiary: brandAccent,
      surface: Colors.white,
    );

    final base = ThemeData(
      useMaterial3: true,
      colorScheme: scheme,
      scaffoldBackgroundColor: bgCanvas,
    );

    final bodyTextTheme = GoogleFonts.ralewayTextTheme(base.textTheme);
    final textTheme = bodyTextTheme.copyWith(
      displaySmall: GoogleFonts.lora(
        fontSize: 34,
        fontWeight: FontWeight.w600,
        letterSpacing: -0.8,
        color: inkStrong,
      ),
      headlineMedium: GoogleFonts.lora(
        fontSize: 26,
        fontWeight: FontWeight.w600,
        letterSpacing: -0.4,
        color: inkStrong,
      ),
      titleLarge: GoogleFonts.lora(
        fontSize: 21,
        fontWeight: FontWeight.w600,
        color: inkStrong,
      ),
      titleMedium: GoogleFonts.raleway(
        fontSize: 16,
        fontWeight: FontWeight.w700,
        color: inkStrong,
      ),
      bodyLarge: GoogleFonts.raleway(
        fontSize: 15,
        fontWeight: FontWeight.w500,
        color: inkStrong,
      ),
      bodyMedium: GoogleFonts.raleway(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        color: inkStrong,
      ),
      bodySmall: GoogleFonts.raleway(
        fontSize: 12,
        fontWeight: FontWeight.w600,
        letterSpacing: 0.2,
        color: inkMuted,
      ),
    );

    final outlinedInputBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(14),
      borderSide: const BorderSide(color: Color(0xFFBCC9D4)),
    );

    return base.copyWith(
      textTheme: textTheme,
      appBarTheme: AppBarTheme(
        centerTitle: false,
        elevation: 0,
        scrolledUnderElevation: 0,
        backgroundColor: bgCanvas,
        foregroundColor: inkStrong,
        titleTextStyle: textTheme.titleLarge?.copyWith(fontSize: 22),
      ),
      cardTheme: CardThemeData(
        elevation: 0,
        margin: EdgeInsets.zero,
        color: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        clipBehavior: Clip.antiAlias,
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: const Color(0xFFF8FCFF),
        isDense: true,
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 14,
          vertical: 14,
        ),
        border: outlinedInputBorder,
        enabledBorder: outlinedInputBorder,
        focusedBorder: outlinedInputBorder.copyWith(
          borderSide: const BorderSide(color: brandPrimary, width: 1.6),
        ),
        errorBorder: outlinedInputBorder.copyWith(
          borderSide: const BorderSide(color: Color(0xFFB42318)),
        ),
        focusedErrorBorder: outlinedInputBorder.copyWith(
          borderSide: const BorderSide(color: Color(0xFFB42318), width: 1.6),
        ),
        labelStyle: textTheme.bodyMedium?.copyWith(color: inkMuted),
        hintStyle: textTheme.bodyMedium?.copyWith(
          color: const Color(0xFF7E8D9A),
        ),
      ),
      chipTheme: base.chipTheme.copyWith(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(999)),
        side: const BorderSide(color: Color(0xFFCCD7E0)),
        labelStyle: textTheme.bodySmall?.copyWith(color: inkStrong),
      ),
      dividerTheme: const DividerThemeData(
        color: Color(0xFFDBE5EC),
        thickness: 1,
      ),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: brandAccent,
        foregroundColor: Colors.white,
      ),
      filledButtonTheme: FilledButtonThemeData(
        style: FilledButton.styleFrom(
          minimumSize: const Size.fromHeight(48),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(14),
          ),
          textStyle: textTheme.titleMedium,
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          minimumSize: const Size(0, 44),
          side: const BorderSide(color: Color(0xFFC2D0DB)),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(14),
          ),
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),
      snackBarTheme: SnackBarThemeData(
        behavior: SnackBarBehavior.floating,
        backgroundColor: inkStrong,
        contentTextStyle: textTheme.bodyMedium?.copyWith(color: Colors.white),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
      listTileTheme: const ListTileThemeData(
        dense: false,
        contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 2),
      ),
    );
  }
}
