import 'package:dio/dio.dart';
import 'package:ifilms/core/api_.dart';
import 'package:ifilms/models/list/list_detail_model.dart';

class InTheaterRepository {
  final Dio _dio = Dio(kDioOptionsTMDB);

  Future<ListDetailModel> fetchMoviesInTheaters() async {
    try {
      final response =
          await _dio.get('/movie/now_playing?&language=pt-BR&page=1&region=BR');

      final model = ListDetailModel.fromMap(response.data);
      return model;
    } catch (e) {
      print(e);
      return Future.error('Error');
    }
  }

  Future<ListDetailModel> fetchUpComingModel() async {
    try {
      final response =
          await _dio.get('/movie/upcoming?&language=pt-BR&page=1&region=BR');
      final model = ListDetailModel.fromMap(response.data);
      return model;
    } catch (e) {
      return Future.error('Error');
    }
  }
}
