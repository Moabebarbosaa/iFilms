part of 'base_usecase.dart';

@freezed
class BaseState with _$BaseState {
  const factory BaseState({
    required BaseFlow flow,
  }) = _BaseState;

  factory BaseState.initial() => const BaseState(
        flow: Splash(),
      );
}

@freezed
class BaseFlow with _$BaseFlow {
  const factory BaseFlow.splash() = Splash;
  const factory BaseFlow.base() = Base;
}
