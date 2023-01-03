import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'domain/usecases/home_usecase.dart';

class HomeProviders {
  static AutoDisposeStateNotifierProvider<HomeUsecase, HomeState>
      homeUsecaseProvider = AutoDisposeStateNotifierProvider(
    (ref) => HomeUsecase(
        // apiRepository: ref.read(SharedProviders.apiRepositoryProvider.notifier),
        ),
  );
}
