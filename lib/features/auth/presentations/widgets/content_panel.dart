import 'package:flutter/material.dart';
import 'package:nebula/shared/shared.dart';

class ContentPanel extends StatelessWidget {
  final Widget child;
  const ContentPanel({super.key, required this.child});

  //TODO: Cambiar el radius de los bordes
  @override
  Widget build(BuildContext context) {
    const double margin = 36;
    const double padding = 36;
    const double minHeight = 384;
    const double maxHeight = 528;

    return LayoutBuilder(
      builder: (context, constraints) {
        final double availableHeight = constraints.maxHeight;
        final double requiredHeight = minHeight + (margin * 2);

        // Si aún así no cabe (contenido muy grande), scroll como red de seguridad
        return SingleChildScrollView(
          physics: availableHeight < requiredHeight
              ? const AlwaysScrollableScrollPhysics()
              : const NeverScrollableScrollPhysics(),
          child: ConstrainedBox(
            constraints: BoxConstraints(minHeight: availableHeight),
            child: Center(
              child: Container(
                margin: const EdgeInsets.all(margin),
                padding: const EdgeInsets.all(padding),
                constraints: BoxConstraints(
                  maxWidth: 800,
                  minWidth: 400,
                  maxHeight: maxHeight,
                  // Si no cabe el mínimo, dejamos que se ajuste al contenido
                  minHeight: availableHeight < requiredHeight ? 0 : minHeight,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Colors.white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    NebulaLogo(size: 40),
                    const SizedBox(height: 24),
                    child,
                    //TODO: Añadir cambio de idioma
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
