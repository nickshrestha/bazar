// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:bazar/Splash.dart';
import 'package:bazar/login.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Login UI',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        //theme primary color
        primaryColor: Colors.black,
      ),
      home: SplashScreen(
        duration: 2,
        goToPage: LoginWidget(),
      ),
    );
  }
}
