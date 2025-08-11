import 'package:flutter/material.dart';

import 'package:nebula/shared/shared.dart';

class ContentPanel extends StatelessWidget {
  final Widget child;
  const ContentPanel({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    //TODO: anñadir demas opciones de personalización y responsive design para tableta
    //TODO: cambiar radius de los bordes
    return Center(
      child: Container(
        margin: const EdgeInsets.all(36),
        padding: const EdgeInsets.all(36),
        constraints: const BoxConstraints(
          maxWidth: 800,
          maxHeight: 384,
          minHeight: 384,
          minWidth: 400,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(28),
          color: Colors.white,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            NebulaLogo(size: 40),
            const SizedBox(height: 24),
            Expanded(child: child),
          ],
        ),
      ),
    );
  }
}
