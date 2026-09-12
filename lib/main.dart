import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:nebula/core/theme/theme.dart';
import 'package:nebula/features/auth/presentations/pages/sign_in/sign_in_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // TODO: hacer esperas iniciales: splash delays, init services, etc.

  runApp(const ProviderScope(child: NebulaApp()));
}

class NebulaApp extends ConsumerWidget {
  const NebulaApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    return MaterialApp(
      title: 'Nebula',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light,
      // darkTheme: AppTheme.dark,
      themeMode: ref.watch(themeProvider),

      home: SignInPage(),


      //TODO: configurar navegación
      // routerConfig: appRouter,

      //TODO: crear internacionalización 
      // locale: const Locale('en'), // cambiar dinámicamente más adelante
      // supportedLocales: const [
      //   Locale('en'),
      //   Locale('es'),
      // ],
      // localizationsDelegates: const [
      //   AppLocalizations.delegate, // archivo futuro personalizado
      //   GlobalMaterialLocalizations.delegate,
      //   GlobalWidgetsLocalizations.delegate,
      //   GlobalCupertinoLocalizations.delegate,
      // ],
    );
  }
}
