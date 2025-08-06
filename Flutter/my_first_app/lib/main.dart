import 'package:flutter/material.dart';
import 'package:my_first_app/first_screen.dart';

void main() {
  runApp(MyApp());
}

// custom Widget
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: FirstScreen());
  }
}
