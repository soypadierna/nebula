import 'package:flutter/material.dart';
import 'breakpoints.dart';

extension ResponsiveExtension on BuildContext {

  double get _width => MediaQuery.of(this).size.width;

  bool get isMobile => _width <= Breakpoints.maxMobile;
  bool get isTablet => _width <= Breakpoints.maxTablet && _width > Breakpoints.maxMobile;
  bool get isDesktop => _width > Breakpoints.maxTablet;
}