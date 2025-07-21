import 'package:flutter/material.dart';

import 'package:nebula/core/theme/theme.dart';

class AppTheme {
  static final ThemeData light = ThemeData(
    useMaterial3: true,
    colorScheme: lightColorScheme,
    scaffoldBackgroundColor: lightColorScheme.surface,
    inputDecorationTheme: inputTheme(),
    filledButtonTheme: filledButtonTheme(),
    textSelectionTheme: textSelectionTheme(),
  );
}