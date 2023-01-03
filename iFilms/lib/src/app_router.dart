import 'package:auto_route/auto_route.dart';
import 'base/presentation/dummies/base_screen.dart';
import 'base/presentation/dummies/splash_screen.dart';
import 'base/presentation/smarties/base_smart_view.dart';
import 'base/routes/base_routes.dart';
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
      page: BaseSmartView,
      children: [
        AutoRoute(
          path: BaseRoutes.splash,
          page: SplashScreen,
        ),
        AutoRoute(
          path: BaseRoutes.home,
          page: BaseScreen,
        ),
      ],
    ),
  ],
)
class $AppRouter {}
