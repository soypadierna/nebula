import 'package:flutter/material.dart';

import 'package:nebula/core/theme/theme.dart';

FilledButtonThemeData filledButtonTheme() {
  return FilledButtonThemeData(
    style: ButtonStyle(
      minimumSize: WidgetStatePropertyAll(Size(double.maxFinite, 44)),
      shape: WidgetStatePropertyAll(
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
      backgroundColor: WidgetStateProperty.resolveWith((states) {
        //!TODO: Definir color de desabilitado
        if (states.contains(WidgetState.disabled)) AppColors.gray500;
        return AppColors.primary;
      }),
      foregroundColor: WidgetStateProperty.resolveWith((states) {
        //!TODO: Definir color de desabilitado
        // if (states.contains(WidgetState.disabled)) AppColors.gray500;
        return AppColors.onPrimary;
      }),
    ),
  );
}
