import 'package:flutter/material.dart';

import 'package:nebula/core/responsive/responsive.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobile;
  final Widget tablet;
  final Widget desktop;

  const ResponsiveLayout({
    super.key,
    required this.mobile,
    Widget? tablet,
    Widget? desktop,
  })  : tablet = tablet ?? mobile,
        desktop = desktop ?? tablet ?? mobile;

  @override
  Widget build(BuildContext context) {

    if (context.isDesktop) {
      return desktop;
    } else if (context.isTablet) {
      return tablet;
    } else {
      return mobile;
    }
  }
}
