import 'package:cookie_jar/cookie_jar.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import 'api/dio_client.dart';
import 'pages/app.dart';

void main() {
  dio.interceptors
    ..add(
      CookieManager(CookieJar()),
    )
    ..add(LogInterceptor());
  runApp(App());
}
