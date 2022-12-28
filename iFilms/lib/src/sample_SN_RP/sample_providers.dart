import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../shared/shared_providers.dart';
import 'domain/usecases/sample_usecase/sample_usecase.dart';

class SampleProviders {
  static AutoDisposeStateNotifierProvider<SampleUsecase, SampleState>
      sampleUsecaseProvider = AutoDisposeStateNotifierProvider(
    (ref) => SampleUsecase(
      apiRepository: ref.read(SharedProviders.apiRepositoryProvider.notifier),
    ),
  );
}
