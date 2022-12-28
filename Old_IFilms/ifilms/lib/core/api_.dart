import 'package:dio/dio.dart';

const kBaseUrlTMDB = 'https://api.themoviedb.org/3';
const kApiKeyTMDB =
    'eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiIxMGRlZWY2MzViMWU5OWI2YWRmZmYyMzBhZTk3OWQwYiIsInN1YiI6IjYwN2ExZDM1NDNkOWIxMDA2ZWE5MGQ2MCIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.jc27n-ogXf9bZfELeR3uMMUB_RWBrL45Qs9ifxxIPpw';

const kServerError = 'Failed to connect to the server. Try again later.';
final kDioOptionsTMDB = BaseOptions(
  baseUrl: kBaseUrlTMDB,
  connectTimeout: 5000,
  receiveTimeout: 3000,
  contentType: 'application/json;charset=utf-8',
  headers: {'Authorization': 'Bearer $kApiKeyTMDB'},
);
