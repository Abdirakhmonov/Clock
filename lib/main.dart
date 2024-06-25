import 'package:flutter/material.dart';
import 'package:lesson_63/views/screens/home_screen.dart';
import 'package:lesson_63/views/screens/homework.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homepage(),
    );
  }
}
