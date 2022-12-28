import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'data/repositories/api_repository.dart';
import 'domain/models/api_state_model.dart';

class SharedProviders {
  static final Provider<Dio> httpClientProvider = Provider(
    (ref) => Dio(),
  );

  static final StateNotifierProvider<ApiRepository, ApiState>
      apiRepositoryProvider = StateNotifierProvider(
    (ref) => ApiRepository(
      httpClient: ref.watch(SharedProviders.httpClientProvider),
    ),
  );
}
