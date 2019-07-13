import 'package:dio/dio.dart';
import 'package:flutter_im/stores/user/user_store.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'endpoints.dart';

var dio = Dio()
  ..options.baseUrl = Endpoints.baseUrl
  ..options.connectTimeout = Endpoints.connectionTimeout
  ..options.receiveTimeout = Endpoints.receiveTimeout
  ..options.headers = {
    'Content-Type': 'application/json; charset=utf-8',
  }
  ..interceptors.add(LogInterceptor(responseBody: true))
  ..interceptors.add(
    InterceptorsWrapper(
      onRequest: (Options options) async {
        // getting shared pref instance
        UserStore user = UserStore();

        // getting token
        var token = user.accessToken;

        if (token != null) {
          options.headers.putIfAbsent('Authorization', () => token);
        } else {
          print('Auth token is null');
        }
      },
    ),
  );
