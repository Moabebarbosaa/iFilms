part of 'home_usecase.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    required HomeFlow flow,
  }) = _HomeState;

  factory HomeState.initial() => const HomeState(
        flow: Splash(),
      );
}

@freezed
class HomeFlow with _$HomeFlow {
  const factory HomeFlow.splash() = Splash;
  const factory HomeFlow.home() = Home;
}
