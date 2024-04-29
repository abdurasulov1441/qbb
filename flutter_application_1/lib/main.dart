import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            
            child: Column(
              children: [
            
            
            
            
              ],
            ),
          ),
        ),
      ),
    );
  }
}



class WelcomeText extends StatelessWidget {
  const WelcomeText({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(child: Row(
      children: [
        Text('Hush kelibsiz!',style: TextStyle(fontFamily: 'Poppins',fontSize: 20),)
      ],
    ),);
  }
}