import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:dio/io.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final dioProvider = Provider((ref) {
  Dio dio = Dio();
  dio.options.baseUrl = 'https://exopek.de/'; //AppConfig.apiBaseUrl;
  /* (dio.httpClientAdapter as IOHttpClientAdapter).createHttpClient = () =>
      HttpClient()
        ..badCertificateCallback =
            (X509Certificate cert, String host, int port) => true; */
  // Set default configs
  dio.interceptors.add(InterceptorsWrapper(
    onRequest:
        (RequestOptions requestOptions, RequestInterceptorHandler handler) {
      String username = 'ck_668de4ac40f92830436c02adfc4fd738c5d99cd2';
      String password = 'cs_1dcf4c8933331bdbca42244f2475471006bf40b5';

      String basicAuth =
          'Basic ' + base64Encode(utf8.encode('$username:$password'));

      requestOptions.headers.putIfAbsent('Authorization', () => basicAuth);
      handler.next(requestOptions);
    },
  ));
  return dio;
});
