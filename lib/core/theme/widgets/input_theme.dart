import 'package:flutter/material.dart';
import 'package:nebula/core/theme/theme.dart';

InputDecorationTheme inputTheme() {
  return InputDecorationTheme(
    filled: true,
    fillColor: AppColors.gray100,
    floatingLabelBehavior: FloatingLabelBehavior.never,
    isDense: true,
    alignLabelWithHint: true,
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(color: AppColors.gray100)
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(color: AppColors.gray500)
    ),
    hintStyle: TextStyle(fontSize: 14, color: AppColors.gray500),
    labelStyle: TextStyle(fontSize: 14, color: AppColors.gray500),
    prefixIconColor: AppColors.gray700,
    suffixIconColor: AppColors.gray700,
  );
}
