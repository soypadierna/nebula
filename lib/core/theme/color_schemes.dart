import 'package:flutter/material.dart';

const Color kPrimary = Color(0xFF8A73FE);     // Violeta principal
const Color kSecondary = Color(0xFFBCD801);   // Verde lima
const Color kBackground = Color(0xFF100A28);  // Fondo oscuro
const Color kSurface = Color(0xFF190F59);     // Paneles, tarjetas
const Color kOnPrimary = Colors.white;        // Texto sobre primary
const Color kOnBackground = Colors.white70;   // Texto sobre fondo
const Color kError = Color(0xFFEF4444);
const Color kSuccess = Color(0xFF22C55E);
const Color kWarning = Color(0xFFF59E0B);

// Neutrales
const Color kGray100 = Color(0xFFF5F5F5);
const Color kGray300 = Color(0xFFD4D4D4);
const Color kGray500 = Color(0xFF9E9E9E);
const Color kGray700 = Color(0xFF616161);
const Color kGray900 = Color(0xFF212121);

const lightColorScheme = ColorScheme(
  brightness: Brightness.light,
  primary: kPrimary,
  onPrimary: kOnPrimary,
  secondary: kSecondary,
  onSecondary: Colors.black,
  surface: kGray100,
  onSurface: kGray900,
  error: kError,
  onError: Colors.white,
);

const darkColorScheme = ColorScheme(
  brightness: Brightness.dark,
  primary: kPrimary,
  onPrimary: kOnPrimary,
  secondary: kSecondary,
  onSecondary: Colors.black,
  surface: kSurface,
  onSurface: Colors.white,
  error: kError,
  onError: Colors.black,
);
