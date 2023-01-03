import 'package:auto_route/auto_route.dart';
import 'package:ifilms/src/home/presentation/dummies/home/home_screen.dart';
import 'package:ifilms/src/home/presentation/dummies/onboarding/splash_screen.dart';
import 'package:ifilms/src/home/presentation/smarties/home_smart_view.dart';

import 'home/routes/home_routes.dart';
import 'app_routes.dart';

const String empty = '';
const Map<String, dynamic> routeHideBottomNavMetadata = {
  'hideBottomNav': true,
};

@CustomAutoRouter(
  transitionsBuilder: TransitionsBuilders.slideLeft,
  durationInMilliseconds: 200,
  replaceInRouteName: 'Page,Route,Screen',
  routes: <AutoRoute>[
    AutoRoute(
      path: AppRoutes.init,
      page: HomeSmartView,
      children: [
        AutoRoute(
          path: HomeRoutes.splash,
          page: SplashScreen,
        ),
        AutoRoute(
          path: HomeRoutes.home,
          page: HomeScreen,
        ),
      ],
    ),
  ],
)
class $AppRouter {}
