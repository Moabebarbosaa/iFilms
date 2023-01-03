import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'base_state.dart';
part 'base_usecase.freezed.dart';

class BaseUsecase extends StateNotifier<BaseState> {
  BaseUsecase() : super(BaseState.initial());

  void started() async {
    state = state.copyWith(
      flow: const Splash(),
    );

    await Future.delayed(
      const Duration(milliseconds: 2500),
    );

    state = state.copyWith(flow: const Base());
  }
}
