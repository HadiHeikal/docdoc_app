import 'package:flutter/material.dart';

/// Color tokens from the DocDoc Figma design system (Color Palette frame).
abstract class AppColors {
  // Private constructor to prevent instantiation
  AppColors._();
  // Background
  static const Color white = Color(0xFFFFFFFF);
  static const Color body = Color(0xFF7A7A7A);
  static const Color black = Color(0xFF161616);

  // Grey
  static const Color grey100 = Color(0xFF242424);
  static const Color grey90 = Color(0xFF404040);
  static const Color grey80 = Color(0xFF616161);
  static const Color grey70 = Color(0xFF757575);
  static const Color grey60 = Color(0xFF9E9E9E);
  static const Color grey50 = Color(0xFFC2C2C2);
  static const Color grey40 = Color(0xFFE0E0E0);
  static const Color grey30 = Color(0xFFEDEDED);
  static const Color grey20 = Color(0xFFF5F5F5);

  // Primary
  static const Color primary100 = Color(0xFF247CFF);
  static const Color primary80 = Color(0xFF5096FF);
  static const Color primary60 = Color(0xFF7CB0FF);
  static const Color primary40 = Color(0xFFD3E5FF);
  static const Color primary20 = Color(0xFFEAF2FF);
  static const Color primarySurface = Color(0xFFA7CBFF);

  // Secondary
  static const Color surfaceBlue = Color(0xFFEAF2FF);
  static const Color surfaceGreen = Color(0xFFE9FAEF);
  static const Color surfaceRed = Color(0xFFFFEDEF);
  static const Color fillBlue = Color(0xFF247CFF);
  static const Color fillGreen = Color(0xFF22C55E);
  static const Color fillRed = Color(0xFFFF4C5E);
  static const Color surfaceTextField = Color(0xFFFAFAFB);
  static const Color form = Color(0xFFFDFDFF);
  static const Color chat = Color(0xFFF8F9FD);

  // Warning
  static const Color warning100 = Color(0xFFC4BA09);
  static const Color warning80 = Color(0xFFE5DA0D);
  static const Color warning60 = Color(0xFFEFE746);
  static const Color warning40 = Color(0xFFF7F16B);
  static const Color warning20 = Color(0xFFFCF99D);
  static const Color warningSurface = Color(0xFFFDFCCD);
}
