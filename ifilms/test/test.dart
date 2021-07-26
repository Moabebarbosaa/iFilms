import 'package:dio/dio.dart';
import 'package:ifilms/core/api_.dart';

void main() async {
  final Dio _dio = Dio(kDioOptionsTMDB);
  final response = await _dio.get('/trending/movie/day?&language=pt-BR');
  print(response);
}

// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.
