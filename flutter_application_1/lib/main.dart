import 'package:flutter/material.dart';
import 'package:flutter_application_1/WelcomePage.dart';
import 'package:flutter_application_1/SecondScreen.dart';
import 'package:flutter_application_1/CallCenter.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     
initialRoute: '/',

  routes: {

    '/': (context) => const FirstScreen(),

    '/second': (context) => const SecondScreen(),

    '/third': (context) => const ThirdScreen(),    

  }

    );
  }
}