import 'package:docdoc_app/core/theme/app_fonts.dart';
import 'package:flutter/material.dart';
import 'package:docdoc_app/core/theme/app_colors.dart';

abstract class AppTheme {
  static ThemeData get lightTheme {
    final colorScheme = ColorScheme.fromSeed(
      seedColor: AppColors.primary100,
      brightness: Brightness.light,
      primary: AppColors.primary100,
      onPrimary: AppColors.white,
      secondary: AppColors.fillGreen,
      onSecondary: AppColors.white,
      error: AppColors.fillRed,
      onError: AppColors.white,
      surface: AppColors.white,
      onSurface: AppColors.black,
    );

    return ThemeData(
      useMaterial3: true,
      colorScheme: colorScheme,
      scaffoldBackgroundColor: AppColors.white,
      fontFamily: AppFonts.inter,
      appBarTheme: const AppBarTheme(
        backgroundColor: AppColors.white,
        foregroundColor: AppColors.black,
        elevation: 0,
        centerTitle: true,
      ),
      textTheme: const TextTheme(
        displayLarge: TextStyle(color: AppColors.black),
        displayMedium: TextStyle(color: AppColors.black),
        displaySmall: TextStyle(color: AppColors.black),
        headlineLarge: TextStyle(color: AppColors.black),
        headlineMedium: TextStyle(color: AppColors.black),
        headlineSmall: TextStyle(color: AppColors.black),
        titleLarge: TextStyle(color: AppColors.black),
        titleMedium: TextStyle(color: AppColors.black),
        titleSmall: TextStyle(color: AppColors.black),
        bodyLarge: TextStyle(color: AppColors.black),
        bodyMedium: TextStyle(color: AppColors.body),
        bodySmall: TextStyle(color: AppColors.body),
        labelLarge: TextStyle(color: AppColors.black),
        labelMedium: TextStyle(color: AppColors.body),
        labelSmall: TextStyle(color: AppColors.body),
      ),
      dividerColor: AppColors.grey30,
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: AppColors.surfaceTextField,
        hintStyle: const TextStyle(color: AppColors.grey60),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide.none,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: AppColors.primary100),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: AppColors.fillRed),
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primary100,
          foregroundColor: AppColors.white,
          disabledBackgroundColor: AppColors.primary40,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          padding: const EdgeInsets.symmetric(vertical: 16),
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(foregroundColor: AppColors.primary100),
      ),
      snackBarTheme: const SnackBarThemeData(
        backgroundColor: AppColors.black,
        contentTextStyle: TextStyle(color: AppColors.white),
      ),
    );
  }
}
