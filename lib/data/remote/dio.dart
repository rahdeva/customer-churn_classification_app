// ignore_for_file: no_leading_underscores_for_local_identifiers, prefer_collection_literals

import 'package:dio/dio.dart';
import 'log_interceptor.dart';

class AppDio {
  Future<Dio> getDIO({
    Map<String, dynamic> headers = const {},
    int connectTimeout = 30000,
    int receiveTimeout = 30000,
  }) async {
    final _headers = Map<String, dynamic>.from(headers);
    var dio = Dio(
      BaseOptions(
        connectTimeout: connectTimeout,
        receiveTimeout: receiveTimeout,
        contentType: "application/json"
      )
    );

    final defaultHeaders = Map<String, dynamic>();

    // override headers if needed
    defaultHeaders.addAll(headers);

    // apply new headers
    dio.options.headers.addAll(_headers);

    //dio.interceptors.add(LogInterceptor(responseBody: true));
    dio.interceptors.add(APILogInterceptor());
    
    return dio;
  }
}