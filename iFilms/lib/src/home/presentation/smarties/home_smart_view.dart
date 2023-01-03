import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../app_router.gr.dart';
import '../../domain/usecases/home_usecase.dart';
import '../../home_providers.dart';

class HomeSmartView extends ConsumerStatefulWidget {
  const HomeSmartView({Key? key}) : super(key: key);

  @override
  HomeSmartViewState createState() => HomeSmartViewState();
}

class HomeSmartViewState extends ConsumerState<HomeSmartView> {
  @override
  void initState() {
    ref.read(HomeProviders.homeUsecaseProvider.notifier).started();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    HomeState state = ref.watch(HomeProviders.homeUsecaseProvider);

    return AutoRouter.declarative(
      routes: (PendingRoutesHandler handler) => _routes(handler, state),
    );
  }

  _routes(PendingRoutesHandler handler, HomeState state) {
    return state.flow.when(
      splash: () => const [SplashScreenRoute()],
      home: () => const [HomeScreenRoute()],
    );
  }
}
