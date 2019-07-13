import 'dart:async';

import 'package:flutter/material.dart';

import 'package:dio/dio.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:flutter_im/api/dio_client.dart';
import 'package:flutter_im/api/endpoints.dart';
import 'package:flutter_im/pages/home/home_page.dart';
import 'package:flutter_im/stores/user/user_store.dart';

class LoginPage extends StatefulWidget {
  const LoginPage();

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final UserStore user = UserStore();

  @override
  void initState() {
    super.initState();
    _setAccessToken();
  }

  @override
  void dispose() {
    user.dispose();
    super.dispose();
  }

  Future<void> _setAccessToken() async {
    final prefs = await SharedPreferences.getInstance();

    await prefs.setString('accessToken', user.accessToken);
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Observer(
              builder: (_) => TextField(
                    onChanged: (v) => user.name = v,
                    decoration: InputDecoration(
                      labelText: 'Username',
                    ),
                  ),
            ),
            Observer(
              builder: (_) => TextField(
                    onChanged: (v) => user.password = v,
                    decoration: InputDecoration(
                      labelText: 'Password',
                    ),
                  ),
            ),
            RaisedButton(
                child: Text('Login'),
                onPressed: () async {
                  if (user.canLogin) {
                    Response response;

                    user.login();

                    response = await dio.post(
                      Endpoints.postLogin,
                      data: {
                        "type": "m.login.password",
                        "identifier": {
                          "type": "m.id.user",
                          "user": "${user.name}"
                        },
                        "password": "${user.password}",
                        "initial_device_display_name": "Jungle Phone"
                      },
                    );

                    if (response.statusCode == 200) {
                      user.accessToken = response.data["access_token"];
                      print(user.accessToken);

                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return HomePage();
                          },
                        ),
                      );
                    }
                  } else {
                    showErrorMessage(context, 'Please fill in all fields');
                    print("${user.canLogin}");
                  }
                })
          ],
        ),
      ),
    );
  }

  showErrorMessage(BuildContext context, String message) {
    if (message != null) {
      AlertDialog(
        actions: <Widget>[
          Text(message),
        ],
      );
    }

    return Container();
  }
}
