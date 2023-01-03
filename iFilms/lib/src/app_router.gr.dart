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

import 'home/presentation/dummies/home/home_screen.dart' as _i3;
import 'home/presentation/dummies/onboarding/splash_screen.dart' as _i2;
import 'home/presentation/smarties/home_smart_view.dart' as _i1;

class AppRouter extends _i4.RootStackRouter {
  AppRouter([_i5.GlobalKey<_i5.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    HomeSmartViewRoute.name: (routeData) {
      return _i4.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i1.HomeSmartView(),
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
    HomeScreenRoute.name: (routeData) {
      return _i4.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i3.HomeScreen(),
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
          HomeSmartViewRoute.name,
          path: '/',
          children: [
            _i4.RouteConfig(
              SplashScreenRoute.name,
              path: 'splash',
              parent: HomeSmartViewRoute.name,
            ),
            _i4.RouteConfig(
              HomeScreenRoute.name,
              path: 'home',
              parent: HomeSmartViewRoute.name,
            ),
          ],
        )
      ];
}

/// generated route for
/// [_i1.HomeSmartView]
class HomeSmartViewRoute extends _i4.PageRouteInfo<void> {
  const HomeSmartViewRoute({List<_i4.PageRouteInfo>? children})
      : super(
          HomeSmartViewRoute.name,
          path: '/',
          initialChildren: children,
        );

  static const String name = 'HomeSmartViewRoute';
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
/// [_i3.HomeScreen]
class HomeScreenRoute extends _i4.PageRouteInfo<void> {
  const HomeScreenRoute()
      : super(
          HomeScreenRoute.name,
          path: 'home',
        );

  static const String name = 'HomeScreenRoute';
}
