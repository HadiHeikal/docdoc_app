import 'package:flutter/material.dart';
import 'package:docdoc_app/core/theme/app_colors.dart';
import 'package:docdoc_app/core/theme/app_fonts.dart';
import 'package:docdoc_app/core/theme/app_text_style.dart';

abstract class AppTheme {
  static TextTheme _textTheme({
    required Color primaryText,
    required Color secondaryText,
  }) {
    return TextTheme(
      displayLarge: AppTextStyle.font48Bold.copyWith(color: primaryText),
      displayMedium: AppTextStyle.font40Bold.copyWith(color: primaryText),
      displaySmall: AppTextStyle.font32Bold.copyWith(color: primaryText),
      headlineLarge: AppTextStyle.font28SemiBold.copyWith(color: primaryText),
      headlineMedium: AppTextStyle.font24SemiBold.copyWith(
        color: primaryText,
      ),
      headlineSmall: AppTextStyle.font20SemiBold.copyWith(color: primaryText),
      titleLarge: AppTextStyle.font18SemiBold.copyWith(color: primaryText),
      titleMedium: AppTextStyle.font16SemiBold.copyWith(color: primaryText),
      titleSmall: AppTextStyle.font14SemiBold.copyWith(color: primaryText),
      bodyLarge: AppTextStyle.font16Regular.copyWith(color: primaryText),
      bodyMedium: AppTextStyle.font14Regular.copyWith(color: secondaryText),
      bodySmall: AppTextStyle.font12Regular.copyWith(color: secondaryText),
      labelLarge: AppTextStyle.font14Medium.copyWith(color: primaryText),
      labelMedium: AppTextStyle.font12Medium.copyWith(color: secondaryText),
      labelSmall: AppTextStyle.font11Medium.copyWith(color: secondaryText),
    );
  }

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
      textTheme: _textTheme(
        primaryText: AppColors.black,
        secondaryText: AppColors.body,
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

  static ThemeData get darkTheme {
    final colorScheme = ColorScheme.fromSeed(
      seedColor: AppColors.primary100,
      brightness: Brightness.dark,
      primary: AppColors.primary100,
      onPrimary: AppColors.white,
      secondary: AppColors.fillGreen,
      onSecondary: AppColors.white,
      error: AppColors.fillRed,
      onError: AppColors.white,
      surface: AppColors.grey100,
      onSurface: AppColors.white,
    );

    return ThemeData(
      useMaterial3: true,
      colorScheme: colorScheme,
      scaffoldBackgroundColor: AppColors.black,
      fontFamily: AppFonts.inter,
      appBarTheme: const AppBarTheme(
        backgroundColor: AppColors.black,
        foregroundColor: AppColors.white,
        elevation: 0,
        centerTitle: true,
      ),
      textTheme: _textTheme(
        primaryText: AppColors.white,
        secondaryText: AppColors.grey60,
      ),
      dividerColor: AppColors.grey90,
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: AppColors.grey90,
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
          disabledBackgroundColor: AppColors.grey80,
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
        backgroundColor: AppColors.grey20,
        contentTextStyle: TextStyle(color: AppColors.black),
      ),
    );
  }
}
