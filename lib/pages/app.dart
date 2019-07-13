import 'package:flutter/material.dart';

import 'home/home_page.dart';
import 'login/login_page.dart';

class App extends StatelessWidget {
  bool isAuthenticated = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: isAuthenticated ? '/' : '/login',
      routes: {
        '/': (context) => HomePage(),
        '/login': (context) => LoginPage(),
      },
    );
  }
}
