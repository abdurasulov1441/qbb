import 'package:flutter/material.dart';
import 'package:flutter_application_1/FirstScreen.dart';
import 'package:flutter_application_1/SecodScreen.dart';
import 'package:flutter_application_1/ThirdScreen.dart';

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