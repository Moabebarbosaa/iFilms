import 'package:flutter/material.dart';
import 'package:ifilms/src/shared/data/miscelaneous/env.dart';
import 'package:ifilms/src/shared/design_system/flutter_base_theme.dart';

import 'app_router.gr.dart';

class FlutterBase extends StatefulWidget {
  const FlutterBase({Key? key}) : super(key: key);

  @override
  State<FlutterBase> createState() => _FlutterBaseState();
}

class _FlutterBaseState extends State<FlutterBase> {
  final AppRouter _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'FlutterBase',
      theme: FlutterBaseTheme.data(context),
      routerDelegate: _appRouter.delegate(),
      routeInformationParser: _appRouter.defaultRouteParser(),
      builder: (context, child) => Env.name == Envs.PRODUCTION
          ? child!
          : Env.name.isNotEmpty
              ? Banner(
                  message: Env.name.toString(),
                  textDirection: TextDirection.ltr,
                  location: BannerLocation.topStart,
                  child: child,
                )
              : Banner(
                  message: "ENVLESS",
                  textDirection: TextDirection.ltr,
                  location: BannerLocation.topStart,
                  child: child,
                ),
    );
  }
}
