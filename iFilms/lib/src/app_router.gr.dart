// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:flutter/material.dart' as _i5;

import 'base/presentation/dummies/base_screen.dart' as _i3;
import 'base/presentation/dummies/splash_screen.dart' as _i2;
import 'base/presentation/smarties/base_smart_view.dart' as _i1;

class AppRouter extends _i4.RootStackRouter {
  AppRouter([_i5.GlobalKey<_i5.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    BaseSmartViewRoute.name: (routeData) {
      return _i4.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i1.BaseSmartView(),
        transitionsBuilder: _i4.TransitionsBuilders.slideLeft,
        durationInMilliseconds: 200,
        opaque: true,
        barrierDismissible: false,
      );
    },
    SplashScreenRoute.name: (routeData) {
      return _i4.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i2.SplashScreen(),
        transitionsBuilder: _i4.TransitionsBuilders.slideLeft,
        durationInMilliseconds: 200,
        opaque: true,
        barrierDismissible: false,
      );
    },
    BaseScreenRoute.name: (routeData) {
      return _i4.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i3.BaseScreen(),
        transitionsBuilder: _i4.TransitionsBuilders.slideLeft,
        durationInMilliseconds: 200,
        opaque: true,
        barrierDismissible: false,
      );
    },
  };

  @override
  List<_i4.RouteConfig> get routes => [
        _i4.RouteConfig(
          BaseSmartViewRoute.name,
          path: '/',
          children: [
            _i4.RouteConfig(
              SplashScreenRoute.name,
              path: 'splash',
              parent: BaseSmartViewRoute.name,
            ),
            _i4.RouteConfig(
              BaseScreenRoute.name,
              path: 'home',
              parent: BaseSmartViewRoute.name,
            ),
          ],
        )
      ];
}

/// generated route for
/// [_i1.BaseSmartView]
class BaseSmartViewRoute extends _i4.PageRouteInfo<void> {
  const BaseSmartViewRoute({List<_i4.PageRouteInfo>? children})
      : super(
          BaseSmartViewRoute.name,
          path: '/',
          initialChildren: children,
        );

  static const String name = 'BaseSmartViewRoute';
}

/// generated route for
/// [_i2.SplashScreen]
class SplashScreenRoute extends _i4.PageRouteInfo<void> {
  const SplashScreenRoute()
      : super(
          SplashScreenRoute.name,
          path: 'splash',
        );

  static const String name = 'SplashScreenRoute';
}

/// generated route for
/// [_i3.BaseScreen]
class BaseScreenRoute extends _i4.PageRouteInfo<void> {
  const BaseScreenRoute()
      : super(
          BaseScreenRoute.name,
          path: 'home',
        );

  static const String name = 'BaseScreenRoute';
}
