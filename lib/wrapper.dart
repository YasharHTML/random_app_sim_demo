// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:weird_app/screen/home_screen.dart';
import 'package:weird_app/screen/login_screen.dart';
import 'package:weird_app/screen/signup_screen.dart';
import 'package:weird_app/screen/test_screen.dart';
import 'package:weird_app/screen/view_product.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/home': (context) => HomeScreen(),
        '/test': (context) => TestScreen(),
        '/login': (context) => LoginScreen(),
        '/signup': (context) => SignupScreen(),
      },
      onGenerateRoute: <Void>(settings) {
        if (settings.name == '/products') {
          final value = settings.arguments as int; // Retrieve the value.
          return MaterialPageRoute(
            builder: (_) => ViewProduct(
              index: value,
            ),
          );
        }
      },
      home: true ? LoginScreen() : HomeScreen(),
    );
  }
}
