import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_state.dart';
part 'home_usecase.freezed.dart';

class HomeUsecase extends StateNotifier<HomeState> {
  HomeUsecase() : super(HomeState.initial());

  void started() async {
    state = state.copyWith(
      flow: const Splash(),
    );

    await Future.delayed(
      const Duration(milliseconds: 2500),
    );

    state = state.copyWith(flow: const Home());
  }
}
