import 'package:flutter/material.dart';

class ScrollableScaffold extends StatelessWidget {
  final Widget body;
  final Color? backgroundColor;
  final EdgeInsetsGeometry padding;

  const ScrollableScaffold({
    super.key,
    required this.body,
    this.backgroundColor,
    this.padding = EdgeInsets.zero,
  });

  @override
  Widget build(BuildContext context) {
        debugPrint('Padding ANTES de SafeArea: ${MediaQuery.of(context).padding}');
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            debugPrint('Padding DESPUÉS de SafeArea: ${MediaQuery.of(context).padding}');
            return ScrollConfiguration(
              behavior: ScrollConfiguration.of(context).copyWith(
                scrollbars: false,
              ),
              child: SingleChildScrollView(
                padding: padding,
                child: ConstrainedBox(
                  constraints: BoxConstraints(
                    minHeight: constraints.maxHeight - padding.vertical,
                  ),
                  child: body,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
