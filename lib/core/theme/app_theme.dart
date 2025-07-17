import 'package:flutter/material.dart';
import 'color_schemes.dart';

class AppTheme {
  // Light Theme
  static final ThemeData light = ThemeData(
    useMaterial3: true,
    colorScheme: lightColorScheme,
    scaffoldBackgroundColor: lightColorScheme.surface,
    //TODO: Corregir
    // cardColor: lightColorScheme.surfaceVariant,
    appBarTheme: AppBarTheme(
      backgroundColor: lightColorScheme.surface,
      foregroundColor: lightColorScheme.onSurface,
      elevation: 0,
      centerTitle: true,
      //TODO: Corregir
      // titleTextStyle: AppTextStyles.appBarTitle.copyWith(
      //   color: lightColorScheme.onSurface,
      // ),
    ),
    //TODO: Corregir
    // textTheme: AppTextStyles.textTheme,
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: lightColorScheme.primary,
      foregroundColor: lightColorScheme.onPrimary,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: lightColorScheme.primary,
        foregroundColor: lightColorScheme.onPrimary,
        textStyle: const TextStyle(fontWeight: FontWeight.w600),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      //TODO: Corregir
      // fillColor: lightColorScheme.surfaceVariant,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(color: lightColorScheme.primary),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        //TODO: Corregir
        // borderSide: BorderSide(color: lightColorScheme.primary.withOpacity(0.5)),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(color: lightColorScheme.primary, width: 2),
      ),
      labelStyle: TextStyle(color: lightColorScheme.onSurface),
    ),
  );

  // Dark Theme
  static final ThemeData dark = ThemeData(
    useMaterial3: true,
    colorScheme: darkColorScheme,
    scaffoldBackgroundColor: darkColorScheme.surface,
    // cardColor: darkColorScheme.surfaceVariant,
    appBarTheme: AppBarTheme(
      backgroundColor: darkColorScheme.surface,
      foregroundColor: darkColorScheme.onSurface,
      elevation: 0,
      centerTitle: true,
      //TODO: Corregir
      // titleTextStyle: AppTextStyles.appBarTitle.copyWith(
      //   color: darkColorScheme.onSurface,
      // ),
    ),
    //TODO: Corregir
    // textTheme: AppTextStyles.textTheme.apply(
    //   bodyColor: darkColorScheme.onSurface,
    //   displayColor: darkColorScheme.onSurface,
    // ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: darkColorScheme.primary,
      foregroundColor: darkColorScheme.onPrimary,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: darkColorScheme.primary,
        foregroundColor: darkColorScheme.onPrimary,
        textStyle: const TextStyle(fontWeight: FontWeight.w600),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      //TODO: Corregir
      // fillColor: darkColorScheme.surfaceVariant,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(color: darkColorScheme.primary),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        //TODO: Corregir
        // borderSide: BorderSide(color: darkColorScheme.primary.withOpacity(0.5)),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(color: darkColorScheme.primary, width: 2),
      ),
      labelStyle: TextStyle(color: darkColorScheme.onSurface),
    ),
  );
}
