import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'domain/usecases/base_usecase.dart';

class BaseProviders {
  static AutoDisposeStateNotifierProvider<BaseUsecase, BaseState>
      baseUsecaseProvider = AutoDisposeStateNotifierProvider(
    (ref) => BaseUsecase(
        // apiRepository: ref.read(SharedProviders.apiRepositoryProvider.notifier),
        ),
  );
}
