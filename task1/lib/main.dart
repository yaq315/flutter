import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFFFFE4E1), 
        body: Center(
          child: Image(
            image: AssetImage('assets/images/birthdayCard.png'),
          ),
        ),
      ),
    );
  }}



  
