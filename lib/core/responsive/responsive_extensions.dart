import 'package:flutter/material.dart';
import 'breakpoints.dart';

extension ResponsiveExtension on BuildContext {
  bool get isMobile => MediaQuery.of(this).size.width < Breakpoints.tablet;
  bool get isTablet => MediaQuery.of(this).size.width >= Breakpoints.tablet && MediaQuery.of(this).size.width < Breakpoints.desktop;
  bool get isDesktop => MediaQuery.of(this).size.width >= Breakpoints.desktop;
}