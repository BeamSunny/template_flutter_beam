import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:template_flutter_beam/pages/demo.dart';
import 'package:template_flutter_beam/pages/launchpad.dart';
import 'package:template_flutter_beam/state/index.dart';
import 'package:template_flutter_beam/theme/breakpoint.dart';
import 'package:template_flutter_beam/theme/colors.dart';
import 'package:template_flutter_beam/theme/font.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final FlutterView flutterView =
        WidgetsBinding.instance.platformDispatcher.views.first;
    return ChangeNotifierProvider(
      create: (context) => GlobalState(),
      builder: (context, child) {
        return FutureBuilder(
            future: context.read<GlobalState>().initialSet(),
            builder: (context, snapshot) {
              final theme = context.watch<GlobalState>().theme;

              return MaterialApp.router(
                title: 'Namer App',
                debugShowCheckedModeBanner: false,
                theme: Theme.of(context).copyWith(
                  extensions: [
                    theme == 'LIGHT'
                        ? AppColorsTheme.light()
                        : AppColorsTheme.dark(),
                    flutterView.isRegularSmartphoneOrLess
                        ? AppTextsTheme.mobile()
                        : AppTextsTheme.tablet(),
                  ],
                ),
                routerConfig: _router,
              );
            });
      },
    );
  }
}

extension ThemeDataExtended on ThemeData {
  AppColorsTheme get appColors => extension<AppColorsTheme>()!;
  AppTextsTheme get appTexts => extension<AppTextsTheme>()!;
}

//Router to Page
final _router = GoRouter(initialLocation: '/', routes: [
  GoRoute(name: 'demo', path: '/', builder: (context, state) => const Demo()),
  GoRoute(
      name: 'launchpad',
      path: '/launchpad',
      builder: (context, state) => const Launchpad())
]);
