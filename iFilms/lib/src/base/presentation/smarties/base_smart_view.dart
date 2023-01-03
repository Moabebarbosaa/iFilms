import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../app_router.gr.dart';
import '../../domain/usecases/base_usecase.dart';
import '../../base_providers.dart';

class BaseSmartView extends ConsumerStatefulWidget {
  const BaseSmartView({Key? key}) : super(key: key);

  @override
  BaseSmartViewState createState() => BaseSmartViewState();
}

class BaseSmartViewState extends ConsumerState<BaseSmartView> {
  @override
  void initState() {
    ref.read(BaseProviders.baseUsecaseProvider.notifier).started();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    BaseState state = ref.watch(BaseProviders.baseUsecaseProvider);

    return AutoRouter.declarative(
      routes: (PendingRoutesHandler handler) => _routes(handler, state),
    );
  }

  _routes(PendingRoutesHandler handler, BaseState state) {
    return state.flow.when(
      splash: () => const [SplashScreenRoute()],
      base: () => const [BaseScreenRoute()],
    );
  }
}
