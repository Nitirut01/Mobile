import 'package:flutter/material.dart';
import 'package:route/screen/LoginPage.dart';
import 'package:route/screen/FirstPage.dart';
import 'package:route/screen/Register.dart';
import 'package:route/screen/ApiPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/Homepage',
      routes: {
        '/Homepage': (context) => const FirstPage(),
        '/Login': (context) => const LoginPage(),
        '/Register': (context) => const RegisterPage(),
        '/api': (context) => FallPage(),
      },
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const FirstPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
